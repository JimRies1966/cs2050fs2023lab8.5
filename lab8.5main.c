#include <stdio.h>
#include "lab8.5.h"

int main(void)
{
    printf("**** Regular Stuff:\n");
    for (int i=-10;i<11;i++)
    {
        printf("2^%3d=%9.3f\n",i,mypow(2,i));
    }

    printf("\n\n");
    printf("**** Bonus Stuff:\n");
    int count;
    PBaseBallPlayer players = GetSamplePlayers(&count);

    PrintBaseBallPlayers(players,count);
    printf("\n");
    SortBaseBallPlayers(players,count);
    PrintBaseBallPlayers(players,count);
}
