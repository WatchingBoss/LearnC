#include <stdio.h>

void sw(int i)
{
    switch(i)
    {
        case 1:
            printf("I am in case 1\n");
            break;
        case 2:
            printf("I am in case 2\n");
            break;
        case 3:
            printf("I am in case 3\n");
            break;
        default:
            printf("I am in default\n");
    }
}

void sc(char ch)
{
  switch(ch)
  {
    case 'A':
    case 'a':
      printf("a as in ashar\n");
      break;
    case 'B':
    case 'b':
      printf("b as in brain\n");
      break;
    case 'C':
    case 'c':
      printf("c as in cookie\n");
      break;
    default:
      printf("wish you knew what are alphabets");
  }
}

int main()
{
    sw(2);
    return 0;
}