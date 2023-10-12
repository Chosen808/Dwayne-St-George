#include <stdio.h>

int verbose = 0;

enum
{
    clown = -1, abe, bob, col, dan, ed, fred, gav, hal, ian, jon, abi, bea, cath, dee, eve, fay, grey, hope, ivy, jan 
};

const char *name[] = {"Abe", "Bob", "Col", "Dan", "Ed", "Fred", "Gav", "Hal", "Ian", "Jon",
"Abi", "Bea", "Cath", "Dee", "Eve", "Fay", "Grey", "Hope", "Ivy", "Jan"};

int pref[jan + 1][jon + 1] = {{abi, eve, cath, ivy, jan, dee, fay, bea, hope, grey},
{cath, hope, abi, dee, eve, fay, bea, jan, ivy, grey}, 
{hope, eve, abi, dee, bea, fay, ivy, grey, cath, jan},
{ivy, fay, dee, grey, hope, eve, jan, bea, cath, abi},
{jan, dee, bea, cath, fay, eve, abi, ivy, hope, grey},
{bea, abi, dee, grey, eve, ivy, cath, jan, hope, fay},
{grey, eve, ivy, bea, cath, abi, dee, hope, jan, fay},
{abi, eve, hope, fay, ivy, cath, jan, bea, grey, dee},
{hope, cath, dee, grey, bea, abi, fay, ivy, jan, eve},
{abi, fay, jan, grey, eve, bea, dee, cath, ivy, hope},
{bob, fred, jon, gav, ian, abe, dan, ed, col, hal},
{bob, abe, col, fred, gav, dan, ian, ed, jon, hal}} // you are at line 21

main ()
{

}