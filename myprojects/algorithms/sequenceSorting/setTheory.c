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

int factorOf (int arr1[], int arr2[], int facA[], int facB[], int aCount, int bCount, int *sizeFacA, int *sizeFacB)
{
    int count, j = 0, k = 0;

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

   for (int i = 0; i < count;)
   {
        if (arr1[j] == arr2[i])
        {
            ++i;
            ++j;
        }

        else if (arr1[j] != arr2[i])
        {
            ++i;

            if (i == count && arr1[j] != arr2[i])
            {
                facA[k] = arr1[j];

                ++k;
            }
        }

        if (i == count && j != count)
        {
            i = 0;
            ++j;
        }

        *sizeFacA = k;
    }

    if (count == aCount)
    {
        count = bCount;
    }

    else if (count == bCount)
    {
        count = aCount;
    }

    j = 0;
    k = 0;

    for (int i = 0; i < count;)
    {
        if (arr2[j] == arr1[i])
        {
            ++i;
            ++j;
        }

        else if (arr2[j] != arr1[i])
        {
            ++i;

            if (i == count && arr2[j] != arr1[i])
            {
                facB[k] = arr2[j];

                ++k;
            }
        }

        if (i == count && j != count + 1)
        {
            i = 0;
            ++j;
        }

        *sizeFacB = k;
    }

    
    
}

int printer (int arr1[], int arr2[], int comm[], int facA[], int facB[], int bCount, int sizeA, int sizeB)
{
    int i = 0, j = 0;
    printf ("\n  SET THEORY \n");

    printf ("%10s%d%10s%d%18s%10s%d%10s%d \n", "FACTORS ", sizeA, "FACTORS ", sizeB, "COMMON FACTORS", "FACTORS ", sizeA, "FACTORS ", sizeB);

    for (int i = 0; i < bCount; i++)
    {
            printf ("%12d%12d%18d%10d%10d \n", arr1[i], arr2[i], comm[i], facA[i], facB[i]);

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

    printf ("Please enter two numbers to factor: \n");
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