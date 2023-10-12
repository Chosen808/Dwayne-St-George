#include <stdio.h>
enum 
{
    ab,cd, ef, gh, ij, kl, mn, op, qr, st
};

int array[st+ 1] = {ab, cd, ef, gh, ij, kl};

int arr[ef + 1][ij + 1] = {{ab, cd, ef, gh, ij},
{st, qr, op, mn, kl},
{cd, ef, gh, ij, kl}
};

char fad[2][10] = {{"test"}, {"Help"}};

main ()
{
    for (int i = 0, k = 4; k > -1; k--)
    {
        printf ("arr[%d][%d] = %d \n", i, k, arr[i][k]);

        if (k == 0)
        {
            for (int i = 1, k = 4; k > -1; k--)
            {
                printf ("arr[%d][%d] = %d \n", i, k, arr[i][k]);
            }

            if (k == 0)
            {
                for (int i = 2, k = 4; k > -1; k--)
                {
                    printf ("arr[%d][%d] = %d \n", i, k, arr[i][k]);
                }
            }
        }
    }

    for (int i = 0; i < 2; i++)
    {
        printf ("fad = %s \n", fad[i]);
    }

    printf ("fad[0][3] = %c \n", fad[0][3]);
    printf ("&fad[0][3] = %p \n", &fad[0][3]);

    return 0;
}