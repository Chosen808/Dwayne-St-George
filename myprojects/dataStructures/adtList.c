/*
Thank you Lord Jesus for building this program. Thank YOU!

Linked List

Option 2 (Natural or Social Science Focus)
Develop a struct that can store an atomic element, such as Hydrogen -H -at.wt 1.008.

Now create from input at the terminal the first ten elements in the periodic table as a 
linked list with this struct as data. Then print out this information to the screen in a 
nicely readable form. The struct should have three members—one stores the name of the 
element, a second stores it atomic symbol, and a third stores its weight.

v3.0
*/

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

/*
Structure that contains strings, a double and pointer to the next node
*/
struct NODE
{
    char elementName[100];
    char elementSymbol[10];
    double elementWeight;

    struct NODE *next;
};

/*
This function will allocate memory for a new node using malloc. It will then move the data
from char *newName to char elementName through newNode and then move it to 
struct NODE **headRef which is a pointer, which points to the head of the linked list.
*/
void insertName (struct NODE **headRef, char *newName)
{
    struct NODE *newNode = (struct NODE*) malloc (sizeof (struct NODE));

    strcpy (newNode->elementName, newName);

    newNode->next = (*headRef);
    (*headRef) = newNode;
}

/*
This function will allocate memory for a new node using malloc. It will then move the data
from char *newSymbol to char elementSymbol through newNode and then move it to 
struct NODE **headRef which is a pointer, which points to the head of the linked list.
*/
void insertSymbol (struct NODE **headRef, char *newSymbol)
{
    struct NODE *newNode = (struct NODE*) malloc (sizeof (struct NODE));

    strcpy (newNode->elementSymbol, newSymbol);

    newNode->next = (*headRef);
    (*headRef) = newNode;
}

/*
This function will allocate memory for a new node using malloc. It will then move the data
from double newWght to double elementWeight through newNode and then move it to
struct NODE **headRef which is a pointer, which points to the head of the linked list
*/
void insertWeight (struct NODE **headRef, double newWght)
{
    struct NODE *newNode = (struct NODE*) malloc (sizeof (struct NODE));

    newNode->elementWeight = newWght;
    newNode->next = (*headRef);
    (*headRef) = newNode;
}

/*
This function will print the data which has been passed to *head__ from the previous
functions in a formatted table.
*/
void printList (struct NODE *nodeN, struct NODE *nodeS, struct NODE *nodeW)
{
    printf ("%10s%12s%14s \n", "NAME", "SYMBOL", "WEIGHT");

    while (nodeN != NULL && nodeS != NULL && nodeW != NULL)
    {
        printf ("%10s%12s%14f \n", nodeN->elementName, nodeS->elementSymbol, nodeW->elementWeight);

        nodeN = nodeN->next;
        nodeS = nodeS->next;
        nodeW = nodeW->next;
    }
}


main ()
{
    // Pointers to the head of the linked list
    struct NODE *head = NULL;
    struct NODE *head_2 = NULL;
    struct NODE *head_3 = NULL;

    // Arrays to hold Element name, symbol and weight
    char eName[10][10];
    char eSymbol[10][10];
    double eWeight[10];

    // Arrays will be initialized in this for loop
    for (int i = 0, k = 1; i < 10, k < 11; i++, k++)
    {
        printf ("Enter element %d: ", k);
        scanf ("%s", eName[i]);

        printf ("Enter Element Symbol %d: ", k);
        scanf ("%s", eSymbol[i]);

        printf ("Enter Element Weight %d: ", k);
        scanf ("%lf", &eWeight[i]);

        puts ("\n");
    }

    // This for loop will pass data from the arrays to the linked list
    for (int i = 0; i < 10; i++)
    {
        insertName (&head, eName[i]);
        insertSymbol (&head_2, eSymbol[i]);
        insertWeight (&head_3, eWeight[i]);
    }

    printf ("The linked list is: \n\n");

    // The formatted list will be printed here
    printList (head, head_2, head_3);

    return 0;
}