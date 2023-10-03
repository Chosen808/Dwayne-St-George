#include <stdio.h>
#include <stdlib.h>

/*
A structure of linked list node
*/
struct node 
{
    int data;

    struct node *next;
} *head;

void initialize ()
{
    head = NULL;
}

/*
Given a Inserts a node in front of a singly linked list
*/
void insert (int num)
{
    // Create a new linked list node
    struct node *newNode = (struct node*) malloc (sizeof (struct node));
    
    newNode->data = num;

    // Next pointer of new node will point to head node of linked list
    newNode->next = head;

    // make new node as new head of linked list
    head = newNode;

    printf ("Inserted Element: %d \n", num);
}

void findloop (struct node *head)
{
    struct node *slow, *fast;
    slow = fast = head;

    while (slow && fast && fast->next)
    {
        /*
        Slow pointer will move one node per iteration whereas fast node will move
        two per iteration
        */
       slow = slow->next;
       fast = fast->next->next;

        if (slow == fast)
        {
            printf ("Linked list contains a loop \n");

            return;
        }
    }

    printf ("No loop in linked list \n");
}

/*
Prints a linked list from head node till tail node
*/
void printLinkedlist (struct node *nodePtr)
{
    while (nodePtr != NULL)
    {
        printf ("%d", nodePtr->data);

        if (nodePtr != NULL)
        {
            printf ("-->");
        }
    }
}

main ()
{
    initialize ();

    // Creating a linked list
    insert (54);
    insert (1);
    insert (10);
    insert (123);
    insert (54);

    /*
    Create loop in linked list. Set next pointer of last node to second node from head
    */
    head->next->next->next->next->next = head;
    
    printf ("head->data = %d \n", head->data);
    printf ("head->next->data = %d \n", head->next->data);
    printf ("head->next->next->data = %d \n", head->next->next->data);
    printf ("head->next->next->next->data = %d \n", head->next->next->next->data);
    printf ("head->next->next->next->next->data = %d \n", head->next->next->next->next->data);
    printf ("head->next->next->next->next->next->data = %d \n", head->next->next->next->next->next->data);
    printf ("head->next->next->next->next->next->next->data = %d \n", head->next->next->next->next->next->next->data);

    findloop (head);

    printf ("head->NEXT = %p \n", head->next);

    findloop (head);

    printf ("Head->next->next = head->next %p %p \n", head->next->next = head->next, __builtin_frame_address(0));
    printf ("head->next->next->next = %p %p \n", head->next->next->next, __builtin_frame_address(0));

    findloop (head);

    //printLinkedlist (head->next);

     return 0;
}