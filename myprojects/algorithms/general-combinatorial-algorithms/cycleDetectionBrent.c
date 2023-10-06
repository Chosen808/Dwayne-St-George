#include <stdio.h>
#include <stdlib.h>

// Linked list node
struct node_t
{
    int data;

    struct node_t *next;
};

/*
This function detects loop in the list. If a loop was there in the list then it returns, the
first node of the loop otherwise it returns NULL
*/
struct node_t *detectCycle (struct node_t *head)
{
    // if head is null then no loop
    if (head == NULL)
    {
        return NULL;
    }

    struct node_t *firstPointer = head;
    struct node_t *secondPointer = head->next;

    int power = 1;
    int length = 1;

    /*
    This loop runs till we find the loop. If there is no loop then the secondPointer ends
    at NULL
    */
   while (secondPointer != NULL && secondPointer != firstPointer)
   {
        /*
        condition after which we will update the power and length as smallest power of two gives
        the start of the cycle
        */
        if (length == power)
        {
            // updating the power
            power *= 2;

            // updating the length
            length = 0;

            firstPointer = secondPointer;
        }

        secondPointer = secondPointer->next;
        ++length;
   }

   // if it is NULL then no loop
   if (secondPointer == NULL)
   {
        return NULL;
   }

   /*
   Otherwise length stores actual length of loop. If needed, we can also print length of the
   loop. printf ("Length of loop is %d \n", length);
   
   Now set firstPointer to the beginning and secondPointer to the beginning and secondPointer
   to beginning plus cycle length which is length
   */
  firstPointer = secondPointer = head;

  while (length > 0)
  {
    secondPointer = secondPointer->next;
    --length;
  }

  
  // Now move both pointers at the same speed so that they meet at the beginning of the loop
  while (secondPointer != firstPointer)
  {
    secondPointer = secondPointer->next;
    firstPointer = firstPointer->next;
  }

  
  // If needed, we can also print length of loop. printf ("Length of loop is %d \n", length);

  return firstPointer;
}

struct node_t *newNode (int key)
{
    struct node_t *temp = (struct node_t*) malloc (sizeof (struct node_t));

    temp->data = key;
    temp->next = NULL;

    return temp;
}


// Driver program to test above functions
main ()
{
    struct node_t *head = newNode (50);
    head->next = newNode (20);
    head->next->next = newNode (15);
    head->next->next->next = newNode (4);
    head->next->next->next->next = newNode (10);

    // Create a loop for testing
    head->next->next->next->next->next = head->next->next;

    struct node_t *res = detectCycle (head);

    if (res == NULL)
    {
        puts ("No loop \n");
    }

    else 
    {
        printf ("Loop is present at %d \n", res->data);
    }

    return 0;
}