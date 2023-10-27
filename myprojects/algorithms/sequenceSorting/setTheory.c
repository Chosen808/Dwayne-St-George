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


main ()
{
    int a = 0;
    int b = 0;
    int arr1[SIZE];
    int arr2[SIZE];
    int comm[SIZE];
    int aCount = 0, bCount = 0;
    int size = 0;

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

    for (int i = 0; i < size; i++)
    {
        printf ("comm[%d] = %d \n", i, comm[i]);
    }



    return 0;
}