/*
Floyd's cycle-finding algorithm is a pointer algorithm that uses only two pointers, 
which move through the sequence at different speeds. It is also called the "tortoise 
and the hare algorithm", alluding to Aesop's fable of The Tortoise and the Hare.

The algorithm is named after Robert W. Floyd, who was credited with its invention by 
Donald Knuth.[3][4] However, the algorithm does not appear in Floyd's published work, 
and this may be a misattribution: Floyd describes algorithms for listing all simple 
cycles in a directed graph in a 1967 paper,[5] but this paper does not describe the 
cycle-finding problem in functional graphs that is the subject of this article. In 
fact, Knuth's statement (in 1969), attributing it to Floyd, without citation, is the 
first known appearance in print, and it thus may be a folk theorem, not attributable 
to a single individual.[6]

The key insight in the algorithm is as follows. If there is a cycle, then, for any 
integers i ≥ μ and k ≥ 0, xi = xi + kλ, where λ is the length of the loop to be found, 
μ is the index of the first element of the cycle, and k is a whole integer representing 
the number of loops. Based on this, it can then be shown that i = kλ ≥ μ for some k if 
and only if xi = x2i (if xi = x2i in the cycle, then there exists some k such that 
2i = i + kλ, which implies that i = kλ; and if there are some i and k such that 
i = kλ, then 2i = i + kλ and x2i = xi + kλ). Thus, the algorithm only needs to check 
for repeated values of this special form, one twice as far from the start of the sequence 
as the other, to find a period ν of a repetition that is a multiple of λ. Once ν is found, 
the algorithm retraces the sequence from its start to find the first repeated value xμ in 
the sequence, using the fact that λ divides ν and therefore that xμ = xμ + v. Finally, once 
the value of μ is known it is trivial to find the length λ of the shortest repeating cycle, 
by searching for the first position μ + λ for which xμ + λ = xμ.

The algorithm thus maintains two pointers into the given sequence, one (the tortoise) at xi, 
and the other (the hare) at x2i. At each step of the algorithm, it increases i by one, 
moving the tortoise one step forward and the hare two steps forward in the sequence, and 
then compares the sequence values at these two pointers. The smallest value of i > 0 for 
which the tortoise and hare point to equal values is the desired value ν.
*/

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
    insert (45);
    insert (1);
    insert (10);
    insert (123);
    insert (54);

    /*
    Create loop in linked list. Set next pointer of last node to second node from head
    */
    head->next->next = head;
    
    printf ("head->data = %d \n", head->data);
    printf ("head->next->data = %d \n", head->next->data);
    //printf ("head->next->next->data = %d \n", head->next->next->data);
    //printf ("head->next->next->next->data = %d \n", head->next->next->next->data);
    //printf ("head->next->next->next->next->data = %d \n", head->next->next->next->next->data);
    //printf ("head->next->next->next->next->next->data = %d \n", head->next->next->next->next->next->data);
    //printf ("head->next->next->next->next->next->next->data = %d \n", head->next->next->next->next->next->next->data);

    findloop (head);

    printf ("head->NEXT = %p \n", head->next);

    findloop (head);

    printf ("Head->next->next = head->next %p %p \n", head->next->next = head->next, __builtin_frame_address(0));
    printf ("head->next->next->next = %p %p \n", &head->next->next->next->data, __builtin_frame_address(0));

    findloop (head);

    //printLinkedlist (head->next);

     return 0;
}