Attribute VB_Name = "mod_login"




'Public AuthorisationPass As String
'Public switchtoserverform As Boolean
'Public Index As Integer


'Public Variables
Public Filename As String
Public NewPasswordList As Boolean
Public AuthorisationNeeded As Boolean
Public SwitchToMainForm As Boolean
Public LoggedIn As String
Public HoldRecordCount As Integer
Public ReturnedValue As Integer
Public UserNameBuffer As String
Public PasswordCheckCompleted As Boolean
Public ResetAllUsers As Boolean

Public Const AuthorisationPass = "bob"
Public Const UserDataLength = 40

Public Type UserData
    UserName As String * 10
    Password As String * 10
    OtherInfo As String * 5
    OtherInfo2 As String * 5
    OtherInfo3 As String * 5
    OtherInfo4 As String * 5
    'OtherInfo5... etc...
End Type

'''The constant UserDataLength is the length of the UserData variable above. When adding this login dialog
'''to your own program, in order to save settings from the program, (specific to each user), you place these settings into
'''the OtherInfo strings. If you want to add more OtherInfo strings to the UserData type then simply add them to the
'''UserData declaration above, and change the UserDataLength constant to the New Length.

Public HOLDUSERDATA As UserData
Public HOLDUSERDATA2 As UserData
Public TempHOLDUSERDATA As UserData
Public BlankHOLDUSERDATA As UserData

'Internal Variables
Dim store(20) As String
Dim number(20) As Integer
Dim buffer(20) As String * 1
Dim encrypted(20), decrypted(20) As Integer
Dim encbuffer(20), decbuffer(20) As String * 1


Public Function Encrypt(Data As String)

encryptedvar = ""

For i = 1 To Len(Data)
    store(i) = Left(Data, i)
    buffer(i) = (Right(store(i), 1))
    number(i) = Asc(buffer(i))
    If number(i) = 0 Then
        encrypted(i) = 0
    Else:
        encrypted(i) = ((number(i) * 2) - 45)
    End If
    encbuffer(i) = Chr(encrypted(i))
    encryptedvar = (encryptedvar & encbuffer(i))
Next

Data = encryptedvar

End Function


Public Function Decrypt(Data As String)

decryptedvar = ""

For i = 1 To Len(Data)
    store(i) = Left(Data, i)
    buffer(i) = (Right(store(i), 1))
    number(i) = Asc(buffer(i))
    decrypted(i) = ((number(i) + 45) / 2)
    If number(i) = 0 Then
        decrypted(i) = 0
    End If
    decbuffer(i) = Chr(decrypted(i))
    decryptedvar = (decryptedvar & decbuffer(i))
Next

Data = decryptedvar

End Function

Public Function RecordCount() As Integer
Dim limit As Integer

Open Filename For Random As #1 Len = UserDataLength
a = 1

HOLDUSERDATA2.UserName = "1234567890"
Do Until HOLDUSERDATA2.UserName = BlankHOLDUSERDATA.UserName
    Get #1, a, HOLDUSERDATA2
    limit = a
    a = a + 1
Loop

RecordCount = limit - 1
Close #1

End Function

Public Function MoveRecordsBack(BlankPosition As Integer, NumberofRecords) As Boolean

'''I need to know the number of records and not simply use the recordcount as there
'''is a gap in the data which the recordcount procedure will stop counting at.

Open Filename For Random As #1 Len = UserDataLength

Do Until HOLDUSERDATA.UserName = BlankHOLDUSERDATA.UserName

    'get the data of the user after the blank gap
    Get #1, BlankPosition + 1, HOLDUSERDATA
    
    'if there are NO other users after the Blank then no need to move anything
    If HOLDUSERDATA.UserName = BlankHOLDUSERDATA.UserName Then
        Close #1
        Exit Function
    Else:
        'put the data from the user infront of the gap, into the gap
        Put #1, BlankPosition, HOLDUSERDATA
        
        'move the blank gap up a space
        BlankPosition = BlankPosition + 1
        Put #1, BlankPosition, BlankHOLDUSERDATA
    End If
Loop

Close #1

End Function

Public Function AddRecord(RecordInfo As UserData) As Integer
AddRecord = -1

HoldRecordCount = RecordCount

Open Filename For Random As #1 Len = UserDataLength

'check that the username does not already exist
For a = 1 To HoldRecordCount
    Get #1, a, TempHOLDUSERDATA
    Decrypt TempHOLDUSERDATA.UserName
    If TempHOLDUSERDATA.UserName = RecordInfo.UserName Then
        MsgBox "The username already exists, please enter a new username", vbCritical, "Error..."
        AddRecord = 0  '''The username exists returns a "0"
        Close #1
        Exit Function
        Exit For
    End If
Next

Close #1

'Now encrypt data and put it info the File
Encrypt RecordInfo.UserName
Encrypt RecordInfo.Password
Encrypt RecordInfo.OtherInfo
Encrypt RecordInfo.OtherInfo2
Encrypt RecordInfo.OtherInfo3
Encrypt RecordInfo.OtherInfo4

'find next available slot in #1
freespace = RecordCount + 1

'add data to file's next slot
Open Filename For Random As #1 Len = UserDataLength
    Put #1, freespace, RecordInfo
Close #1

AddRecord = 1

End Function

Public Function DeleteRecord(UsernameToDelete As String) As Integer
Dim FoundPosition As Integer

DeleteRecord = -1

'find place of record in file
HoldRecordCount = RecordCount

Open Filename For Random As #1 Len = UserDataLength

FoundPosition = 0
For i = 1 To HoldRecordCount
    Get #1, i, HOLDUSERDATA
    Decrypt HOLDUSERDATA.UserName
    If Trim(LCase(HOLDUSERDATA.UserName)) = LCase(UsernameToDelete) Then
        FoundPosition = i
    End If
Next


If FoundPosition = 0 Then   'User not found (ERROR)
    DeleteRecord = 0
Else:
    DeleteRecord = 1
    Put #1, FoundPosition, BlankHOLDUSERDATA
End If
Close #1

'move the rest of the data in the file to cover the new SPACE
MoveRecordsBack FoundPosition, HoldRecordCount

End Function

Public Function CheckRecord(CheckRecordInfo As UserData) As Integer
Dim UserCorrect As Boolean
Dim PasswordCorrect As Boolean

CheckRecord = -1

HoldRecordCount = RecordCount

Open Filename For Random As #1 Len = UserDataLength

'check username and password against those in the Data file
UserCorrect = False
PasswordCorrect = False

For a = 1 To HoldRecordCount
    Get #1, a, TempHOLDUSERDATA
    Decrypt TempHOLDUSERDATA.UserName
    Decrypt TempHOLDUSERDATA.Password
    
    If TempHOLDUSERDATA.UserName = CheckRecordInfo.UserName Then
        UserCorrect = True
        If TempHOLDUSERDATA.Password = CheckRecordInfo.Password Then
        PasswordCorrect = True
        End If
        Exit For
    End If

Next

Close #1

If UserCorrect = True And PasswordCorrect = True Then
    '''Enter Program
    CheckRecord = 0
ElseIf UserCorrect = True And PasswordCorrect = False Then
    '''Wrong Password
    CheckRecord = 1
ElseIf UserCorrect = False Then
    '''No such username
    CheckRecord = 2
End If

End Function

Public Function ChangeRecord(AlteredRecord As UserData, position As Integer)

Encrypt AlteredRecord.UserName
Encrypt AlteredRecord.Password
Encrypt AlteredRecord.OtherInfo
Encrypt AlteredRecord.OtherInfo2
Encrypt AlteredRecord.OtherInfo3
Encrypt AlteredRecord.OtherInfo4

Open Filename For Random As #1 Len = UserDataLength
Put #1, position, AlteredRecord
Close #1

End Function

Public Function ResetUserList()
Kill Filename
Open Filename For Random As #1 Len = UserDataLength
Close #1
End Function
