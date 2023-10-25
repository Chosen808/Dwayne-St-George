/*
Thank you Lord Jesus for this algorithm

Insertion sort is a simple sorting algorithm that works similar to the way you sort 
playing cards in your hands. The array is virtually split into a sorted and an unsorted 
part. Values from the unsorted part are picked and placed at the correct position in the 
sorted part.

Insertion sort is a simple sorting algorithm that builds the final sorted array (or list) 
one item at a time by comparisons. It is much less efficient on large lists than more 
advanced algorithms such as quicksort, heapsort, or merge sort. However, insertion sort 
provides several advantages:

* Simple implementation: Jon Bentley shows a three-line C/C++ version that is five lines when 
optimized.[1]
* Efficient for (quite) small data sets, much like other quadratic (i.e., O(n2)) sorting 
algorithms
* More efficient in practice than most other simple quadratic algorithms such as selection 
sort or bubble sort
* Adaptive, i.e., efficient for data sets that are already substantially sorted: the time 
complexity is O(kn) when each element in the input is no more than k places away from its 
sorted position
* Stable; i.e., does not change the relative order of elements with equal keys
* In-place; i.e., only requires a constant amount O(1) of additional memory space
* Online; i.e., can sort a list as it receives it

When people manually sort cards in a bridge hand, most use a method that is similar to 
insertion sort.[2]
*/

#include <stdio.h>
#include <time.h>

#define SIZE 100000

/*
This is the insertion sort function. It takes an array int arr[] and size int size as input
and sorts it in ascending order using ghe insertion sort algorithm. The algorithm works by
iterating over the array and comparing each element to its predecessor. If the current
element is smaller than its predecessor, it is compared to the elements before it until it
finds its correct position. The greater elements are moved one position up to make space
for the swapped element.
*/
void insertionSort (int arr[], int size)
{
    clock_t start = clock ();
    clock_t diff;
    
    int i, key, j;

    for (i = 0; i < size; i++)
    {
        key = arr[i];   // values will be stored in key and compared to the previous value in arr[j]
        j = i -1;   // This will allow j to to be one step before i to allow arr[j] to compare to key

        while (j >= 0 && arr[j] > key)
        {
            arr[j + 1] = arr[j];    // values are swapped here
            j = j - 1;
        }

        arr[j + 1] = key;   // values are swapped here
    }

    diff = clock () - start;

    int msec = diff * 1000 / CLOCKS_PER_SEC;

    printf ("\nTIMER : %d sec %d mil \n", msec / 1000, msec % 1000);
}


main ()
{
    clock_t start = clock ();
    clock_t diff;

    int size = 0;
    int arr[SIZE];

    printf ("Please enter how many numbers: \n");
    scanf ("%d", &size);

    // The array will be initialized here
    for (int i = 0; i < size; i++)
    {
        printf ("Please enter number %d ", i);
        scanf ("%d", &arr[i]);

        // The array will printed here
        if (i == size -1)
        {
            for (int i = 0; i < size; i++)
            {
                printf ("arr[%d] = %d \n", i, arr[i]);
            }
        }
    
    }

    insertionSort (arr, 10); // The values of the array will be sorted here

    puts ("\n\n");

    // The sorted array will be printed here
    for (int i = 0; i < size; i++)
    {
        printf ("arr[%d] = %d: SORTED \n", i, arr[i]);
    }

    diff = clock () - start;

    int msec = diff * 1000 / CLOCKS_PER_SEC;

    printf ("\nTIMER : %d sec %d mil \n", msec / 1000, msec % 1000);

    return 0;
}