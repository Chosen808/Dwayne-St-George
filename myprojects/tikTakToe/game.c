#include <stdio.h>

struct myData
{
    int i;
    char ch;
} inputValue_t ();


main ()
{
    run();

    return 0;
}

void run ()
{
    int count;
    struct myData info;
    char symbol[9] = {'1', '2', '3', '4', '5', '6', '7', '8', '9'};

    display (symbol);

    info = inputValue_t (symbol, count);
    symbol[info.i] = info.ch;

    display (symbol);
}

struct myData inputValue_t (char sym[], int count)
{
    char value[1];
    struct myData info;

    inputAgain:
    if (count % 2 == 0)
    {
        printf ("\nEnter Your Choice: X ");
    }

    else 
    {
        printf ("\nEnter Your Choice: O ");
    }

    scanf ("%s", value);

    for (int i = 0; i < 9; i++)
    {
        if (*value == sym[i])
        {
            info.i = i;

            if (count % 2 == 0)
            {
                info.ch = "X";
            }

            else 
            {
                info.ch = "O";
            }

            break;
        }

        else 
        {
            info.i = -1;
            info.ch = "";
        }
    }

    if (info.i == -1)
    {
        printf ("\nInput is not valid \n");

        goto inputAgain;
    }

    return info;
}

void display (char sym[])
{
    printf ("\t\t\t\t    Tic Tac Toe \n\n");
    printf ("Players 1 Symbol: X \n");
    printf ("Players 2 Symbol: O \n");

    printf ("\n\t\t\t           |           |            ");
    printf ("\n\t\t\t     %c     |     %c     |     %c     ", sym[0], sym[1], sym[2]);
    printf ("\n\t\t\t-----------|-----------|----------- ");
    printf ("\n\t\t\t     %c     |     %c     |     %c     ", sym[3], sym[4], sym[5]);
    printf ("\n\t\t\t-----------|-----------|-----------");
    printf ("\n\t\t\t     %c     |     %c     |     %c     ", sym[6], sym[7], sym[8]);
    printf ("\n\t\t\t           |           |            ");

    printf ("\n\n\n");
}