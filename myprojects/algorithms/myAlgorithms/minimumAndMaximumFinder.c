#include <stdio.h>

// This function finds the Maximum number in an array
int findMaximum (int array[], int size)
{
    int max = 0;

    for (int i = 0; i < size; i++)
    {
        if (array[i] > max)
        {
            max = array[i];
        }
    }

    return max;
}

// This function finds the Minimum number in an array
int findMinimum (int array[], int size)
{
    int min = array[0];

    for (int i = 0; i < size; i++)
    {
        if (array[i] < min)
        {
            min = array[i];
        }
    }

    return min;
}


main ()
{
    int array[10] = {34, 5, 13, 556, 54, 2, 63, 232, 764, 33};

    printf ("Maximum = %d | Minimum %d \n", findMaximum (array, 10), findMinimum (array, 10));

    return 0;
}