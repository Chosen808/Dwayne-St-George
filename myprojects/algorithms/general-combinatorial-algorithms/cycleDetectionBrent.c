/*
Linked List

Richard P. Brent described an alternative cycle detection algorithm that, like the tortoise 
and hare algorithm, requires only two pointers into the sequence.[8] However, it is based on 
a different principle: searching for the smallest power of two 2i that is larger than both λ 
and μ. For i = 0, 1, 2, ..., the algorithm compares x2i−1 with each subsequent sequence value 
up to the next power of two, stopping when it finds a match. It has two advantages compared 
to the tortoise and hare algorithm: it finds the correct length λ of the cycle directly, 
rather than needing to search for it in a subsequent stage, and its steps involve only one 
evaluation of f rather than three.

Brent’s cycle detection algorithm is similar to floyd’s algorithm as it also uses two pointer 
technique. But there is some difference in their approaches. Here we make one pointer 
stationary till every iteration and teleport it to other pointer at every power of two. The 
start of the cycle is determined by the smallest power of two at which they meet. This 
improves upon the constant factor of Floyd’s algorithm by reducing the number of calls. 
 

Move fast pointer (or second_pointer) in powers of 2 until we find a loop. After every power, 
we reset slow pointer (or first_pointer) to previous value of second pointer. Reset length 
to 0 after every  power.
The condition for loop testing is first_pointer and second_pointer become same. And loop is 
not present if second_pointer becomes NULL.
When we come out of loop, we have length of loop.
We reset first_pointer to head and second_pointer to node at position head + length.
Now we move both pointers one by one to find beginning of loop.
*/

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
    head->next->next->next->next->next = head;

    struct node_t *res = detectCycle (head);

    printf ("head->next->next->data = %d \n", head->next->next = head->next->data);

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