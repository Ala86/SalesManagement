using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace NACCUGSoft_Online
{

    public static class Class1
    {
        public static int NthIndexOf(this string str, char value, int n)
        {
            int count = 0;
            for (int i = 0; i < str.Length; i++)
            {
                if (str[i] == value)
                {
                    count++;
                    if (count == n)
                    {
                        return i;
                    }
                }
            }
            return -1;
        }


    }

}