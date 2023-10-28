/*
Thank You Lord Jesus for this algorithm

v 1.0
*/

#include <stdio.h>

#define SIZE 10000


// This function will generate the factors
int factor (int fac, int arr[], int size, int *count)
{
    int i = 0, j = -1;

    for (i = 1; i < size + 1; i++)
    {
        if (fac % i == 0)
        {
            ++j;
            *count = j;

            arr[j] = i;
        }
    }

    ++*count;
}

//  This function will sort the common factors 
int commonFac (int arr1[], int arr2[], int common[], int aCount, int bCount, int *size)
{
    int count, j = 0, k =0;

    // The longer array will be found here
    if (aCount < bCount)
    {
        count = aCount;
    }

    else if (aCount > bCount)
    {
        count = bCount;
    }

    else if (aCount == bCount)
    {
        count = aCount;
    }
    ///

    // The common factors will be sorted here
    for (int i = 0; i < count;)
    {
        // If no equal numbers are found the second array will be incremented
        if (arr1[j] != arr2[i])
        {
            ++i;
        }

        // If there is an equal number it will be added to the common[] array here
        else if (arr1[j] == arr2[i])
        {
            if (arr1[j] = arr2[i])
            {
                common[k] = arr1[j];

                ++k;    // common[] index will be incremented here
            }

            ++j;    // arr1[] index will be incremented here
        }

        // i will be reset here if when it runs the lenght of arr2[]. j will be incremented here, if it is not = to count
        if (i == count && j != count)
        {
            i = 0;
            ++j;
        }

        *size = k;  // The size of the array common will be passed here
    }
    ///
}

// Factors that are not common will be sorted here
int factorOf (int arr1[], int arr2[], int facA[], int facB[], int aCount, int bCount, int *sizeFacA, int *sizeFacB)
{
    int count, j = 0, k = 0;

    // The longer array will be found here
    if (aCount < bCount)
    {
        count = bCount;
    }

    else if (aCount > bCount)
    {
        count = aCount;
    }

    else if (aCount == bCount)
    {
        count = aCount;
    }
    ///

    // The factor common to arr1[] will be sorted here
   for (int i = 0; i < count;)
   {
        // If arr1[] and arr2[] are equal their indexes are incremented here
        if (arr1[j] == arr2[i])
        {
            ++i;
            ++j;
        }

        /* 
        If arr1[] and arr2[] are not equal i is incremented. If i has run the entire lenght of indexes in arr2[] 
        and no equal numbers are found arr1[] will be added to facA[] at its current index
        */
        else if (arr1[j] != arr2[i])
        {
            ++i;

            if (i == count && arr1[j] != arr2[i])
            {
                facA[k] = arr1[j];  // arr1[] current index is added here to facA[]

                ++k;    // k is incremented here
            }
        }

         // i will be reset here if when it runs the lenght of arr2[]. j will be incremented here, if it is not = to count
        if (i == count && j != count)
        {
            i = 0;
            ++j;
        }

        *sizeFacA = k;  // The size of array facA[] will be added here 
    }

    // The array lenght will be switched here to process the indexes in arr2[]
    if (count == aCount)
    {
        count = bCount;
    }

    else if (count == bCount)
    {
        count = aCount;
    }

    j = 0;  // j is reset here
    k = 0;  // k is reset here

    // The common factors of arr2[] will found here
    for (int i = 0; i < count;)
    {
        // If arr2[] and arr1[] are equal their indexes are incremented here
        if (arr2[j] == arr1[i])
        {
            ++i;
            ++j;
        }

        /* 
        If arr2[] and arr1[] are not equal i is incremented. If i has run the entire lenght of indexes in arr1[] 
        and no equal numbers are found arr1[] will be added to facA[] at its current index
        */
        else if (arr2[j] != arr1[i])
        {
            ++i;

            if (i == count && arr2[j] != arr1[i])
            {
                facB[k] = arr2[j];  // arr2[] current index is added here to facA[]

                ++k;    // k is incremented here
            }
        }

        // i will be reset here if when it runs the lenght of arr1[]. j will be incremented here, if it is not = to count
        if (i == count && j != count + 1)
        {
            i = 0;
            ++j;
        }

        *sizeFacB = k;  // The size of array facA[] will be added here 
    } 
}

// This function will print the results of the factors
int printer (int arr1[], int arr2[], int comm[], int facA[], int facB[], int bCount, int sizeA, int sizeB)
{
    int i = 0, j = 0;
    printf ("\n  SET THEORY \n");

    printf ("%10s%d%10s%d%18s%10s%d%10s%d \n", "FACTORS ", sizeA, "FACTORS ", sizeB, "COMMON FACTORS", "FACTORS ", sizeA, "FACTORS ", sizeB);   // a Table Header is printed here

    for (int i = 0; i < bCount; i++)
    {
            printf ("%12d%12d%18d%12d%12d \n", arr1[i], arr2[i], comm[i], facA[i], facB[i]);    // The arrays will be printed here

    }
}


main ()
{
    int a = 0;
    int b = 0;
    int arr1[SIZE];
    int arr2[SIZE];
    int comm[SIZE];
    int aCount = 0, bCount = 0;
    int sizeComm = 0;
    int sizeFacA = 0;
    int sizeFacB = 0;
    int facA[SIZE];
    int facB[SIZE];

    printf ("Please enter two numbers to factor: \n");  // Values will be requested here
    scanf ("%d", &a);
    scanf ("%d", &b);

    int sizeA = a;
    int sizeB = b;

    factor (a, arr1, sizeA, &aCount);
    factor (b, arr2, sizeB, &bCount);

    commonFac (arr1, arr2, comm, aCount, bCount, &sizeComm);
    factorOf (arr1, arr2, facA, facB, aCount, bCount, &sizeFacA, &sizeFacB);

    puts ("\n");

    printer (arr1, arr2, comm, facA, facB, bCount, sizeA, sizeB);

    return 0;
}