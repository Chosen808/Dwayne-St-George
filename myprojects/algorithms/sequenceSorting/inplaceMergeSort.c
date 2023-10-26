/*
Thank You Lord Jesus for building this algorithm

*/

#include <stdio.h>
#include <time.h>
#include <string.h>

#define SIZE 1000000

/*
Merge two subarrays of arr[]. First subarray os arr[l..m] and second subarray is 
arr[m + l..r]. Inplace implementation
*/
void merge (long long arr[], long long start, long long mid, long long end)
{
    long long start2 = mid + 1;

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
            long long value = arr[start2];
            long long index = start2;

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
void mergeSort (long long arr[],long long l, long long r, int timer)
{
    clock_t START = clock ();
    clock_t DIFF;

    if (l < r)
    {
        // same as (l + r) / 2, but avoids overflow for large l and r
        long long m = l + (r - l) / 2;

        // sort first and second halves
        mergeSort (arr, l, m, timer);
        mergeSort (arr, m + 1, r, timer);

        merge (arr, l, m, r);
    }

    DIFF = clock () - START;

    int msec = DIFF * 1000 / CLOCKS_PER_SEC;

    printf ("TIMER: %d mins %d sec %d mil \n", (msec / 1000) / 60,(msec / 1000) % 60, msec % 1000);
}

//UTILITY FUNCTIONS - functions to point an array
void printArray (long long A[], long long size)
{
    long long i;

    for (i = 0; i < size; i++)
    {
        printf ("arr[%lld] = %lld : SORTED \n", i, A[i]);
    }

    printf ("\n");
}

void arrayRead (FILE *in, long long arr[], long long *size)
{
    *size = 0;

    while (fscanf (in, "%lld", &arr[*size]) == 1)
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

    long long size = 0;
    long long arr[SIZE];
    char opt[5];
    char select[4][4] = {"yes", "Yes", "y", "Y"};
    int q;
    int timer;

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
                scanf ("%lld", &size);

                for (long long i = 0; i < size; i++)
                {
                    printf ("Enter element %lld \n", i);
                    scanf ("%lld", &arr[i]);

                    if (i == size - 1)
                    {
                        for (long long i = 0; i < size; i++)
                        {
                            printf ("arr[%lld] = %lld \n", i, arr[i]);
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

    mergeSort (arr, 0, size - 1, timer);

    puts ("\n");

    printArray (arr, size);

    printf ("ALGORITHM TIMER: %d mins %d sec %d mil \n", (timer / 1000) / 60, (timer / 1000) % 60, timer % 1000);

    DIFF = clock () - START;

    int msec = DIFF * 1000 / CLOCKS_PER_SEC;

    printf ("ALL TIMER: %d mins %d sec %d mil \n", (msec / 1000) / 60, (msec / 1000) % 60 ,msec % 1000);

    return 0;
}