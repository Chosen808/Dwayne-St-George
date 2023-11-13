/**
 * Thank You Lord Jesus for the course You allowed me to be apart of to build this software
 * 
 * 
 * This will built as part of the udemy course C Programming for Beginners
 * 
*/

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

// This is where data will be stored to index the grid numbers and X and O symbols to the gird
struct myData
{
    int i;  // i will index the number that is entered
    char ch;    // This will assign characters to their chosen boxes
} inputValue_t ();


// Function prototypes
void run ();

int check (char sym[9], char ch, int count);

struct  myData inputValue_t (char sym[9], int count);

void display (char sym[9]);



main ()
{
    char restart;   // this will store to option to restart the game

    again:
    run();

    printf ("\nIf you want to play again then press 1: \n");
    scanf ("%s", &restart);

    // This statement is executed if 1 is entered to restart the game
    if (restart == '1')
    {
        system ("clear");

        goto again;
    }

    // If 1 is not entered any other key will exit the game
    else 
    {
        exit (0);
    }

    return 0;
}

// This function will execute the game
void run ()
{
    int count = 0;  // This will store index for turn is available, X or O
    struct myData info; // This data type will access the data stored in myData struct
    char symbol[9] = {'1', '2', '3', '4', '5', '6', '7', '8', '9'}; // This will store the numbers for the grid

    display (symbol);   // This will display the grid

    again:
    info = inputValue_t (symbol, count);    // This will take input for which number has been entered for the grid

    symbol[info.i] = info.ch;   // This will sawp the number with the corresponding character X or O that is selected

    system ("clear");   // Each turn will be cleared from the screen here

    display (symbol);   // This will display the grid and updated grid spaces

    // This will check to see if there is a winner between X or O
    if (check (symbol, info.ch, count) == 1)
    {

    }

    /* If no winner if found count will increment to the the next option X or O and 
    the game will keep playing*/
    else 
    {
        count++; 

        goto again;
    }
}

/* This functions for a winner between X and O. Each statement is checking the 
grid to determine if their is a line of X's or O's*/
int check  (char sym[9], char ch, int count)
{
    for (int i = 0; i < 6; i+=3)    // for rows
    {
        if (sym[i] == ch && sym[i + 1] == ch && sym[i + 2] == ch)
        {
            printf ("The Winner is: %c \n", ch);

            return 1;
        }
    }

    for (int i = 0; i < 3; i++) // for columns
    {
        if (sym[i] == ch && sym[i + 3] == ch && sym[i + 6] == ch)
        {
            printf ("The Winner is: %c \n", ch);

            return 1;
        }

        if (sym[0] == ch && sym[4] == ch && sym[8] == ch)
        {
            printf ("The Winner is: %c \n", ch);

            return 1;
        }

        else if (sym[2] == ch && sym[4] == ch && sym[6] == ch)
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

/* This function takes input and passes it to the symbol[] array to select X or O 
to the selected grid spot */
struct myData inputValue_t (char sym[9], int count)
{
    char value; // this variable will hold the entered number
    struct myData info_t;   // this will pass info to the struct myData

    // Checking is done here to see whether X or O turn is next
    inputAgain:
    if (count % 2 == 0)
    {
        printf ("\nEnter Your Choice: X ");
    }

    else 
    {
        printf ("\nEnter Your Choice: O ");
    }

    scanf ("%s", &value);

    /* The value enter will be compared to the count to dtermine whether X or O is 
    playing. It will then pass that letter to myData struct to the variable char ch*/
    for (int i = 0; i < 9; i++)
    {
        // If value is equal to any of the symbols in symbol[] this statement will execute
        if (value == sym[i])
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
        
        // If no matching values are found in symbol[] this statement will execute
        else 
        {
            info_t.i = -1;  // i will deincrement to keep the current turn X or O
            info_t.ch = ' '; // no charcter will be passed to char ch
        }
    }

    /* If a number wich has been previously selected is entered or another character 
    that is not an option is entered this statement will execute*/
    if (info_t.i == -1)
    {
        printf ("\nInput is not valid \n");

        goto inputAgain;
    }

    return info_t;
}

// This displays the tik tak toe grid
void display (char sym[9])
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