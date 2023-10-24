/*
Thank you Lord Jesus for this algorithm

In computer science, merge sort (also commonly spelled as mergesort) is an efficient, 
general-purpose, and comparison-based sorting algorithm. Most implementations produce a 
stable sort, which means that the relative order of equal elements is the same in the input 
and output. Merge sort is a divide-and-conquer algorithm that was invented by John von 
Neumann in 1945.[2] A detailed description and analysis of bottom-up merge sort appeared in 
a report by Goldstine and von Neumann as early as 1948
Conceptually, a merge sort works as follows:

* Divide the unsorted list into n sublists, each containing one element (a list of one element 
is considered sorted).
* Repeatedly merge sublists to produce new sorted sublists until there is only one sublist 
remaining. This will be the sorted list.
*/

#include <stdio.h>

#define SIZE 100000

// The mergeSort function sends data to this function to conduct the sorting
void merge (int arr[], int l, int m, int r)
{
    int i, j, k;
    int n1 = m - l + 1;
    int n2 = r - m;

    // create temp arrays
    int L[n1], R[n2];

    // copy data to temp arrays L[] and R[]
    for (i = 0; i < n1; i++)
    {
        L[i] = arr[l + i];
    }

    for (j = 0; j < n2; j++)
    {
        R[j] = arr[m + 1 + j];
    }

    // merge the temp arrays back int arr[l...r]
    i = 0;  // initial index of first subarray
    j = 0;  // initial index of second subarray
    k = l;  // initial index of merged subarray

    while (i < n1 && j < n2)
    {
        if (L[i]<= R[j])
        {
            arr[k] = L[i];

            i++;
        }

        else 
        {
            arr[k] = R[j];

            j++;
        }

        k++;
    }

    // copy the remaining elements of L[], if there are any
    while (i < n1)
    {
        arr[k] = L[i];

        i++;
        k++;
    }

    while (j < n2)
    {
        arr[k] = R[j];

        j++;
        k++;
    }
}

/*
The mergeSort function takes an array int arr[] or size int r as input and sorts it in 
ascending order using the merge sort algorithm. The algorithm works by recursively dividing
the array into two halves until each half contains only the one element. Then it merges the
two halves by comparing each element in turn and copying the smaller element into a temporary
array. Finally, it copies the remaining elements from each half into the temporary array*/
void mergeSort (int arr[], int l, int r)
{
    //r = r - 1;

    if (l < r)
    {
        // find the middle part
        int m = l + (r - l) / 2;

        // sort first and second halves
        mergeSort (arr, l, m);
        mergeSort (arr, m + 1, r);

        // merge the sorted halves
        merge (arr, l, m, r);
    }
}


main ()
{
    int size = 0;
    int arr[SIZE];

    printf ("Please enter how many numbers you want to sort: ");
    scanf ("%d", &size);

    puts ("\n");

    printf ("Please enter your numbers: \n");

    // The array is initialized here
    for (int i = 0; i < size; i++)
    {
        printf ("Please enter number %d: ", i);
        scanf ("%d", &arr[i]);
        
        if (i == size - 1)
        {
            for (int i = 0; i < size; i++)
            {
                printf ("arr[%d] = %d \n", i, arr[i]);
            }
        }
    }

    mergeSort (arr, 0, size - 1);   // Sorting is done here in this function

    puts ("\n\n");

    // The results of the sorted array is printed here
    for (int i = 0; i < size; i++)
    {
        printf ("arr[%d] = %d : SORTED \n", i, arr[i]);
    }

    return 0;
}