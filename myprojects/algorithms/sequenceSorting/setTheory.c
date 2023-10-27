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

int commonFac (int arr1[], int arr2[], int aCount, int bCount)
{
    int count;

    if (aCount < bCount)
    {
        count = bCount - aCount;
    }

    else if (aCount > bCount)
    {
        count = aCount - bCount;
    }
}


main ()
{
    int a = 0;
    int b = 0;
    int arr1[SIZE];
    int arr2[SIZE];
    int aCount = 0, bCount = 0;

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

    return 0;
}