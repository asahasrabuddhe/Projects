using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace WordListGen
{
    class WordListGenerator
    {
        private int minWordLength, maxWordLength;
        private char[] characterListArray;
        Stack<String> stack;

        public WordListGenerator(char c, String characterList, int _minWordLength, int _maxWordLength)
        {
            minWordLength = _minWordLength;
            maxWordLength = _maxWordLength;

            characterListArray = characterList.ToCharArray();

            stack = new Stack<String>();
            stack.Push(Convert.ToString(c));
        }

        public void generateWords()
        {
            while (stack.Count != 0)
            {
                String tmp = stack.Pop();
                Program.sw.WriteLine(tmp);
                Program.sw.Flush();
                Program.statusUpdate(Program.progress++);
                createCombinations(tmp);
                tmp = null;
            }
        }

        private void createCombinations(String s)
        {
            if (s.Length == maxWordLength)
            {
                return;
            }
            for (int i = 0; i < characterListArray.Length; i++)
            {
                stack.Push(s + characterListArray[i]);
            }
        }

    }
}
