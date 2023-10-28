#include <stdio.h>

#define SIZE 10000

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

int commonFac (int arr1[], int arr2[], int common[], int aCount, int bCount, int *size)
{
    int count, j = 0, k =0;

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

    for (int i = 0; i < count;)
    {
        if (arr1[j] != arr2[i])
        {
            ++i;
        }

        else if (arr1[j] == arr2[i])
        {
            if (arr1[j] = arr2[i])
            {
                common[k] = arr1[j];

                ++k;
            }

            ++j;
        }

        if (i == count && j != count)
        {
            i = 0;
            ++j;
        }

        *size = k;
    }
}

int factorOf (int arr1[], int arr2[], int facA[], int facB[], int aCount, int bCount, int *size)
{
    int count, j = 0, l = 0;

    if (aCount < bCount)
    {
        count = bCount;
    }

    else if (aCount > bCount)
    {
        count = aCount;
    }

    for (int i = 0; i < count;)
    {
        if (arr1[j] != arr2[i])
        {
            if (arr1[j] != arr2[i])
            {
                facA[l] = arr1[j];
                facB[l] = arr2[i];

                ++l;
            }

            ++i;
        }

        else if (arr1[j] == arr2[i])
        {
            ++j;
        }

        *size = l;
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
    int size = 0;
    int size2 = 0;
    int fac1[SIZE], fac2[SIZE];

    printf ("Please enter two numbers to factor: \n");
    scanf ("%d", &a);
    scanf ("%d", &b);

    int sizeA = a;
    int sizeB = b;

    factor (a, arr1, sizeA, &aCount);
    factor (b, arr2, sizeB, &bCount);

    for (int i = 0; i < aCount; i++)
    {
        printf ("arr1[%d] = %d \n", i, arr1[i]);
    }

    puts ("\n\n");

    for (int i = 0; i < bCount; i++)
    {
        printf ("arr2[%d] = %d \n", i, arr2[i]);
    }

    commonFac (arr1, arr2, comm, aCount, bCount, &size);
    factorOf (arr1, arr2, fac1, fac2, aCount, bCount, &size2);

    for (int i = 0; i < size; i++)
    {
        printf ("comm[%d] = %d \n", i, comm[i]);
    }

    for (int i = 0; i < size2; i++)
    {
        printf ("fac1[%d] = %d \n", i, fac1[i]);
    }



    return 0;
}