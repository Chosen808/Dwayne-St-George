#include <stdio.h>
#include <string.h>

struct myData
{
    int i;
    char ch;
} inputValue_t ();


main ()
{
    char restart[1];

    again:
    run();

    printf ("\nIf you want to play again then press 1: \n");
    scanf ("%s", restart);

    if (restart == '1')
    {
        goto again;
    }

    else 
    {
        exit (0);
    }

    return 0;
}

void run ()
{
    int count = 0;
    struct myData info;
    char symbol[9] = {'1', '2', '3', '4', '5', '6', '7', '8', '9'};

    display (symbol);

    again:
    info = inputValue_t (symbol, count);
    symbol[info.i] = info.ch;

    //system ("cls");

    display (symbol);

    if (check (symbol, info.ch, count) == 1)
    {
        
    }

    else 
    {
        count++; 

        goto again;
    }
}

int check  (char sym[], char ch[], int count)
{
    for (int i = 0; i < 3; i++)
    {
        if (sym[i] == ch && sym[i + 1] == ch && sym[i + 2] == ch)
        {
            printf ("The Winner is: %c \n", ch);

            return 1;
        }
    }

    for (int i = 0; i < 3; i++)
    {
        if (sym[i] == ch && sym[i + 3] == ch && sym[i + 6] == ch)
        {
            printf ("The Winner is: %c \n", ch);

            return 1;
        }

        if (sym[0] == ch && sym[6] == ch && sym[8] == ch)
        {
            printf ("The Winner is: %c \n", ch);

            return 1;
        }

        else if (sym[2] = ch && sym[4] == ch && sym[6] == ch)
        {
            printf ("The Winner is: %c \n", ch);

            return 1;
        }

        else if (count == 8)
        {
            printf ("The Game is Drawn \n");

            return 1;
        }

        else 
        {
            return 0;
        }
    }
}

struct myData inputValue_t (char sym[], int count)
{
    char value[1];
    struct myData info_t;

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
        printf ("i = %d \n", i);
        printf ("sym[%d] = %d \n", i, sym[i]);

        if (*value == sym[i])
        {
            info_t.i = i;

            if (count % 2 == 0)
            {
                info_t.ch = 'X';
            }

            else 
            {
                info_t.ch = 'O';
            }

            break;
        }

        else 
        {
            info_t.i = -1;
            info_t.ch = " ";
        }
    }

    if (info_t.i == -1)
    {
        printf ("\nInput is not valid \n");

        goto inputAgain;
    }

    return info_t;
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