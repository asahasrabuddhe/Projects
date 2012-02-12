using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading;

namespace WordListGen
{
    class Program
    {
        private static int minLength, maxLength, wordCount, threadCount, threadRemainder;
        public static int progress = 1;
        private static String characterList, fileName;
        private static MyThread[] myThread;
        public static FileStream fs;
        public static StreamWriter sw;

        static void Main(String[] args)
        {
            if (args.Length < 4)
            {
                Console.Write("Enter Character List : ");
                characterList = Console.ReadLine();
                Console.WriteLine();
                while (true)
                {

                    try
                    {
                        Console.Write("Enter Minimum Word Length : ");
                        minLength = Int32.Parse(Console.ReadLine());
                        Console.WriteLine();

                        Console.Write("Enter Maximum Word Length : ");
                        maxLength = Int32.Parse(Console.ReadLine());
                        Console.WriteLine();

                        break;
                    }
                    catch (FormatException)
                    {
                        Console.WriteLine("Please enter valid integer numbers for minimum and maximum lengths.");
                        Console.WriteLine();
                    }
                }

                Console.Write("Enter name of the target file : ");
                fileName = Console.ReadLine();
                Console.WriteLine();
            }
            else
            {
                characterList = args[0];
                fileName = args[3];

                try
                {
                    minLength = Int32.Parse(args[1]);
                    maxLength = Int32.Parse(args[2]);
                }
                catch (FormatException)
                {
                    Console.WriteLine("Please enter valid integer numbers for minimum and maximum lengths.");

                    while (true)
                    {

                        try
                        {
                            Console.Write("Enter Minimum Word Length : ");
                            minLength = Int32.Parse(Console.ReadLine());
                            Console.WriteLine();

                            Console.Write("Enter Maximum Word Length : ");
                            maxLength = Int32.Parse(Console.ReadLine());
                            Console.WriteLine();

                            break;
                        }
                        catch (FormatException)
                        {
                            Console.WriteLine("Please enter valid integer numbers for minimum and maximum lengths.");
                            Console.WriteLine();
                        }
                    }
                }
            }

            Console.WriteLine("Number of Processor Cores available : {0}", Environment.ProcessorCount);
            Console.WriteLine();

            if (characterList.Length <= 4)
            {
                threadCount = characterList.Length;
            }
            else
            {
                threadCount = characterList.Length / 4;
                threadRemainder = characterList.Length % 4;
            }

            char[] tmp = characterList.ToCharArray();
            fs = new FileStream(fileName, FileMode.Create, FileAccess.Write);
            sw = new StreamWriter(fs);

            if (tmp.Length < 4)
            {
                Console.WriteLine("Requesting {0} Threads", characterList.Length);
                myThread = new MyThread[tmp.Length];
                switch (tmp.Length)
                {
                    case 1:
                        myThread[0] = new MyThread(tmp[0], characterList, minLength, maxLength);
                        while (myThread[0].Thrd.IsAlive)
                        {

                        }
                        cleanUp();
                        break;
                    
                    case 2:
                        myThread[0] = new MyThread(tmp[0], characterList, minLength, maxLength);
                        myThread[1] = new MyThread(tmp[1], characterList, minLength, maxLength);
                        while (myThread[0].Thrd.IsAlive || myThread[1].Thrd.IsAlive)
                        {

                        }
                        cleanUp();
                        break;
                    case 3:
                        myThread[0] = new MyThread(tmp[0], characterList, minLength, maxLength);
                        myThread[1] = new MyThread(tmp[1], characterList, minLength, maxLength);
                        myThread[2] = new MyThread(tmp[2], characterList, minLength, maxLength);
                        while (myThread[0].Thrd.IsAlive || myThread[1].Thrd.IsAlive || myThread[2].Thrd.IsAlive)
                        {

                        }
                        cleanUp();
                        break;
                }
            }
            else
            {
                Console.WriteLine("Requesting 4 Threads");
                myThread = new MyThread[4];
                for (int i = 0; i < threadCount; i += 4)
                {
                    myThread[0] = new MyThread(tmp[i], characterList, minLength, maxLength);
                    myThread[1] = new MyThread(tmp[i+1], characterList, minLength, maxLength);
                    myThread[2] = new MyThread(tmp[i+2], characterList, minLength, maxLength);
                    myThread[3] = new MyThread(tmp[i+3], characterList, minLength, maxLength);
                    while (myThread[0].Thrd.IsAlive || myThread[1].Thrd.IsAlive || myThread[2].Thrd.IsAlive || myThread[3].Thrd.IsAlive)
                    {

                    }
                    cleanUp();
                }
                switch (threadRemainder)
                {
                    case 1:
                        myThread[0] = new MyThread(tmp[0], characterList, minLength, maxLength);
                        while (myThread[0].Thrd.IsAlive)
                        {

                        }
                        cleanUp();
                        break;

                    case 2:
                        myThread[0] = new MyThread(tmp[0], characterList, minLength, maxLength);
                        myThread[1] = new MyThread(tmp[1], characterList, minLength, maxLength);
                        while (myThread[0].Thrd.IsAlive || myThread[1].Thrd.IsAlive)
                        {

                        }
                        cleanUp();
                        break;
                    case 3:
                        myThread[0] = new MyThread(tmp[0], characterList, minLength, maxLength);
                        myThread[1] = new MyThread(tmp[1], characterList, minLength, maxLength);
                        myThread[2] = new MyThread(tmp[2], characterList, minLength, maxLength);
                        while (myThread[0].Thrd.IsAlive || myThread[1].Thrd.IsAlive || myThread[2].Thrd.IsAlive)
                        {

                        }
                        cleanUp();
                        break;
                }
            }

           sw.Close();
           fs.Close();

            Console.ReadLine();
        }

        private static void cleanUp()
        {
            for (int j = 0; j < myThread.Length; j++)
            {
                myThread[j] = null;
            }
        }

        public static void statusUpdate(int _progress)
        {
            Console.WriteLine("Done {0}", _progress);
            //Console.Clear();
        }
    }
    
    class MyThread
    {
        public Thread Thrd;
        public WordListGenerator wLG;

        public MyThread(char _c, String _characterList, int _minWordLength, int _maxWordLength)
        {
            wLG = new WordListGenerator(_c, _characterList, _minWordLength, _maxWordLength);

            Thrd = new Thread(this.Run);
            Thrd.Start();
        }

        public void Run()
        {
            wLG.generateWords();
        }

    }
}
