/**
 * Thank you Lord Jesus for building this software
 * 
 * Program : Set Data Structure
 * 
 * Description: Example of a set data structure and operations (union, subset, intersection, etc.)
 * implemented in C, See the Wikipedia articles on Sets: https:// en.wikipedia.org/wiki/Set_(mathematic)
 * 
 * Youtude Lesson: https://www.youtube.com/watch?v=RVqdK6WAjUI
 * 
 * Author: Jesus Christ 
 * 
*/

#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>

// Define the Set data structure
typedef struct 
{
    int *members;   // pointer to dynamically allocated array of the set members
    int length;     // the number of members of the set
} Set_t;

/*
Initializes a new set to 0 and allocates 4 bytes to it. Returns a pointer to a new
Set allocated on the heap
*/
Set_t *init ();

// Returns true if the set if empty, and otherwise false
bool isEmpty (Set_t *set);

//Returns true if value is member of set, and false otherwise
bool isMember (Set_t *set, int value);

// Insert the member value into the set (if it is not already in the set)
void insert (Set_t *set, int member);

// Prints out the set
void printSet (Set_t *set);

// Returns a pointer to a new set resulting from the union of setA and setB
Set_t *setUnion (Set_t *setA, Set_t *setB);

// Returns a pointer to the new set created by the intersection of setA and setB
Set_t *setIntersection (Set_t *setA, Set_t *setB);

// Return a pointer to a new set with difference of setA - setB
Set_t *setDifference (Set_t *setA, Set_t *setB);

// Return true if setA is a subset of setB and false otherwise
bool isSubset (Set_t *setA, Set_t *setB);

// Returns true if setA is equal to setB
bool setEquality (Set_t *setA, Set_t *setB);

// This is the bubble sort algorithm which will used to sort sets in Ascending order
void sortSet (Set_t *set);


main ()
{
    // create a set
    Set_t *setA = init ();


    if (isEmpty (setA))
    {
        printf ("The set is empty. \n");
    }

    else if (!isEmpty (setA))
    {
        printf ("The set is not empty. \n");
    }

    // Insert several members into the set, including a repeat/duplicate
    insert (setA, 2);
    insert (setA, 5);
    insert (setA, 7);
    insert (setA, 7);
    insert (setA, 9);
    insert (setA, 8);

    // when setA is printer 7 should only appear once
    puts ("SetA: ");
    printSet (setA);

    // This will sort setA in ascending order
    sortSet (setA);

    printSet (setA);

    // create setB
    Set_t *setB = init ();

    insert (setB, 34);
    insert (setB, 7);
    insert (setB, 9);
    insert (setB, 3);
    insert (setB, 12);
    insert (setB, 1);
    insert (setB, 43);
    insert (setB, 4234);
    insert (setB, 53);

    // print out the setB
    puts ("SetB: ");
    printSet (setB);

    sortSet (setB);
    printSet (setB);

    // find and print the union of setA and setB
    Set_t *setC = setUnion (setA, setB);

    puts ("A union B: ");
    printSet (setC);

    sortSet (setC);

    printSet (setC);

    // find and print the intersection of setA and setB
    Set_t *setD = setIntersection (setA, setB);

    puts ("A intersection B: ");
    printSet (setD);

    // find and print the set difference A- B
    Set_t *setE = setDifference (setA, setB);

    puts ("A - B: ");
    printSet (setE);

    // check if setA is a subset of setB
    if (isSubset (setA, setB))
    {
        printf ("A is a subset of B \n");
    }

    else if (!isSubset (setA, setB))
    {
        printf ("A is not a subset of B \n");
    }

    // check if setD is subset of setB
    if (isSubset (setD, setB))
    {
        printf ("D is a subset of B \n");
    }

    else if (!isSubset (setD, setB))
    {
        printf ("D is not a subset of B");
    }

    // check if setD and setB are equal
    if (setEquality (setD, setB))
    {
        printf ("D is equal to B \n");
    }

    else if (!setEquality (setD, setB))
    {
        printf ("D is not equal to B \n");
    }

    // create setF that is equal to setC
    Set_t *setF = init ();

    insert (setF, 7);
    insert (setF, 9);

    // check if setF and setC are equal
    if (setEquality (setF, setD))
    {
        printf ("F is equal to D \n");
    }

    else if (!setEquality (setF, setD))
    {
        printf ("F is not equal to D \n");
    }

    // check if 9 is a member of setF
    if (isMember (setF, 9))
    {
        printf ("9 is a member of setF \n");
    }

    else if (!isMember (setF, 9))
    {
        printf ("9 is not a member of setF \n");
    }

    // check 34 is a member of setB
    if (isMember (setB, 34))
    {
        printf ("34 is a member of setB \n");
    }

    else if (!isMember (setB, 34))
    {
        printf ("34 is not a member of setB \n");
    }

    // check if 65 is a member of setB
    if (isMember (setB, 65))
    {
        printf ("65 is a member of setB \n");
    }

    else if (!isMember (setB, 65))
    {
        printf ("65 is not a member of setB \n");
    }



    return 0;
}

/* 
Initializes a new set to 0 and allocates 4 bytes to it. Returns a pointer to a new 
Set allocated on the heap
*/
Set_t *init ()
{
    // allocate space for the set
    Set_t *newSet = malloc (sizeof (Set_t));

    // Initially the set will be empty with no members, so set length to 0
    newSet->length = 0;

    // Allocate enough space to store 1 member and this will be expanded as needed
    newSet->members = malloc (sizeof (int));

    // Return a pointer to the new set
    return newSet;
}

// Returns true if the Set_t is empty, and false otherwise
bool isEmpty (Set_t *set)
{
    return (set->length == 0);
}

// Returns true if value is member of set, and false otherwise
bool isMember (Set_t *set, int value)
{
    // If we can find the value in the set's members, it is in the set
    for (int i = 0; i < set->length; i++)
    {
        if (set->members[i] == value)
        {
            return true;
        }
    }

    /*
     If after checking all the set's members we can't find the value, it is not a
    member of the set
    */
   return false;
}

// Inserts the member value into the set (if it is not already in the set)
void insert (Set_t *set, int member)
{
    // Check to if the member value is not in the set already
    /*if (!isMember (set, member))
    {
        // allocate space to store the new amount of members in the set
        set->members = realloc (set->members, sizeof (int) * (set->length + 1));

        // put the member into the set at the next available index
        set->member[set->length] = member;

        // Increment the set length to acknowledge the new length of the set
        set->lenght = set->length + 1;
    }*/

    bool inSet = false;

    // This will check if set->member[i] is equal to member.
    for (int i = 0; i < set->length; i++)
    {
        if (set->members[i] == member)
        {
            inSet = true;   // If member is found in set->member[i] inSet will be set to true
        }
    }

    // If member is not in set->member[i] this statement will execute
    if (!inSet)
    {
        // allocate space to store the new amount of members in the set
        set->members = realloc (set->members, sizeof (int) * (set->length + 1));

        // put the member into the set at the next available index
        set->members[set->length] = member;

        // Increment the set length to acknowledge the new length of the set
        set->length = set->length + 1;
    }
}

// Prints out the set
void printSet (Set_t *set)
{
    /* 
    Loop through the array of set values, print each of them out separated by 
    a comma, except the last element - instead output a newline afterwards
    */
   
   for (int i = 0;  i < set->length; i++)
   {
    /*
    if (i == (set->length - 1))
    {
        printf ("%d \n", set->members[i]);
    }

    else 
    {
        printf ("%d, ", set->members[i]);
    }*/

    printf ("%d%s", set->members[i], i == set->length - 1? ".\n" : ",");
   }
}

Set_t *setUnion (Set_t *setA, Set_t *setB)
{
    // Create the new set
    Set_t *new = init ();

    // insert all the values from setA
    for (int i = 0; i < setA->length; i++)
    {
        insert (new, setA->members[i]);
    }

    // insert all the values from setB
    for (int i = 0; i < setB->length; i++)
    {
        insert (new, setB->members[i]);
    }

    // return the pointer to the new set
    return new;
}


// Returns a pointer to the new set created by the intersection of setA and setB
Set_t *setIntersection (Set_t *setA, Set_t *setB)
{
    // Create the new set
    Set_t *new = init ();

    // Insert each element of setA into the new set if it is also a member of setB
    for (int i = 0; i < setA->length; i++)
    {
        if (isMember (setB, setA->members[i]))
        {
            insert (new, setA->members[i]);
        }
    }

    // Return the pointer to the new set
    return new;
}

Set_t *setDifference (Set_t *setA, Set_t *setB)
{
    // Create the new set
    Set_t *new = init ();

    // Insert the element from setA into the new set ONLY of it is not also a member of set B
    for (int i = 0; i < setA->length; i++)
    {
        if (!isMember (setB, setA->members[i]))
        {
            insert (new, setA->members[i]);
        }
    }

    for (int i = 0; i < setB->length; i++)
    {
        if (!isMember (setA, setB->members[i]))
        {
            insert (new, setB->members[i]);
        }
    }

    // Return the pointer to the new set
    return new;
}

// Return true if setA is a subset of setB and false otherwise
bool isSubset (Set_t *setA, Set_t *setB)
{
    // If element of setA is NOT a member of setB then it is not a subset
    for (int i = 0; i < setA->length; i++)
    {
        if (!isMember (setB, setA->members[i]))
        {
            return false;
        }
    }

    // If ALL the elements of setA ARE members of setB then it IS a subset
    return true;
}

// Returns true if setA is equal to setB
bool setEquality (Set_t *setA, Set_t *setB)
{
    /* 
    If the sets do not have the same length it is not possible for them to be equal 
    and we return false
    */
   if (setA->length != setB->length)
   {
    return false;
   }

   /*
   If the sets are equal length and all the elements of setA are in setB then
   they MUST be equal and so we let it isSubset () determine this
   */
  return isSubset (setA,setB);
}

// This is the bubble sort algorithm which will be used to sort sets in Ascending order
void sortSet (Set_t *set)
{
    int temp;

    for (int i = 0; i < set->length; i++)
    {
        for (int j = i + 1; j < set->length; j++)
        {
            if (set->members[i] > set->members[j])
            {
                temp = set->members[i];
                set->members[i] = set->members[j];
                set->members[j] = temp;
            }
        }
    }
}

// Set Basics
//
// A set is a collection of items.
//
// Example set: {4, 9, 2}
//
//
// We can have an empty set with no elements.
//
// Empty set: {}
//
//
// The order of the elements in the set doesn't matter.
//
// So {4, 9, 2} is equal to {9, 2, 4}.
//
//
// The number of occurrences of an element in the set
// doesn't matter.
//
// So {4, 4, 4, 9, 2} is equal to {4, 9, 2}
//
// So we will only need to store unique elements of a set.
//
//
// We can insert elements into a set:
//
// insert 4 int {2, 9} gives us the set {4, 2, 9}
//
//
// Set Union
//
// {1, 2, 3} union {2, 3, 4} = {1, 2, 3, 4}
//
// the union of sets includes all elements from BOTH sets.
//
//
// Set Intersection
//
// {1, 2, 3} intersection {2, 3, 4} = {2, 3}
//
// the intersection of sets contains all the elements of
// one set that are also in the other set.
//
//
// Set Difference:
//
// {1, 2, 3} - {2, 3, 4} = {1}
//
// the difference of the sets contains all the elements
// of the first set that are not also in the second set.
//
//
// Subset
//
// {1, 2} is a subset of {1, 2, 3}
//
// a set A is a subset of set B if all the elements of A
// are also elements of B.
//
//
// Membership
//
// 2 is a member of the set {1, 2, 3}
//
// 4 is NOT a member of the set {1, 2, 3}
//