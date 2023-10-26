#include <stdio.h>
#include <time.h>
#include <string.h>

#define SIZE 100000

/*
Merge two subarrays of arr[]. First subarray os arr[l..m] and second subarray is 
arr[m + l..r]. Inplace implementation
*/
void merge (int arr[], int start, int mid, int end)
{
    int start2 = mid + 1;

    // if the direct merge is already sorted
    if (arr[mid] <= arr[start2])
    {
        return;
    }

    //Two pointers to maintain start of both arrays to merge
    while (start <= mid && start2 <= end)
    {
        // if element 1 is in right place
        if (arr[start] <= arr[start2])
        {
            start++;
        }

        else
        {
            int value = arr[start2];
            int index = start2;

            //shift all the element between element 1, element 2, right by 1
            while (index != start)
            {
                arr[index]  = arr[index -1];

                index --;
            }

            arr[start] = value;

            //update all pointers
            start++;
            mid++;
            start2++;
        }
    }
}

//l is for left index and r is right index of the subarray of arr to be sorted
void mergeSort (int arr[],int l, int r)
{
    clock_t START = clock ();
    clock_t DIFF;

    if (l < r)
    {
        // same as (l + r) / 2, but avoids overflow for large l and r
        int m = l + (r - l) / 2;

        // sort first and second halves
        mergeSort (arr, l, m);
        mergeSort (arr, m + 1, r);

        merge (arr, l, m, r);
    }

    DIFF = clock () - START;

    int msec = DIFF * 1000 / CLOCKS_PER_SEC;

    printf ("TIMER: %d sec %d mil \n", msec / 1000, msec % 1000);
}

//UTILITY FUNCTIONS - functions to point an array
void printArray (int A[], int size)
{
    int i;

    for (i = 0; i < size; i++)
    {
        printf ("arr[%d] = %d : SORTED \n", i, A[i]);
    }

    printf ("\n");
}

void arrayRead (FILE *in, int arr[], int *size)
{
    *size = 0;

    while (fscanf (in, "%d", &arr[*size]) == 1)
    {
        (*size)++;
    }

    fclose (in);
}


// Driver program to test above functions
main (int argc, char *argv[])
{
    FILE *in;

    clock_t START = clock ();
    clock_t DIFF;

    int size = 0;
    int arr[SIZE];
    char opt[5];
    char select[4][4] = {"yes", "Yes", "y", "Y"};
    int q;

    if (argc != 2)
    {
        printf ("Need executable input/output file \n");

        printf ("Do you want to proceed without a file? \n");
        scanf ("%s", &opt);

        for (int i = 0; i < 4; i++)
        {
            q = strcmp (opt, select[i]);

            if (q == 0)
            {
                printf ("Please enter the number of elements: ");
                scanf ("%d", &size);

                for (int i = 0; i < size; i++)
                {
                    printf ("Enter element %d \n", i);
                    scanf ("%d", &arr[i]);

                    if (i == size - 1)
                    {
                        for (int i = 0; i < size; i++)
                        {
                            printf ("arr[%d] = %d \n", i, arr[i]);
                        }
                    }
                }
            }

        }
    }

    if (argc == 2)
    {
        in = fopen (argv[1], "r+");

        arrayRead (in, arr, &size);
    }

    puts ("\n");

    mergeSort (arr, 0, size - 1);

    puts ("\n");

    printArray (arr, size);

    DIFF = clock () - START;

    int msec = DIFF * 1000 / CLOCKS_PER_SEC;

    printf ("TIMER: %d sec %d sec \n", msec / 1000, msec % 1000);

    return 0;
}