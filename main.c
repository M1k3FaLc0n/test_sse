#include <stdio.h>
#include "functions.h"

int main() {
    int vec1[] = {1,2,3,4};
    int vec2[] = {3,5,6,8};
    addition(vec1,vec2);
    for (int i = 0; i < 4; i++)
        printf("%d ",vec1[i]);

    printf("\n");

    substraction(vec1,vec2);
    for (int i = 0; i < 4; i++)
        printf("%d ",vec1[i]);

    printf("\n");

    sse_or(vec1,vec2);
    for (int i = 0; i < 4; i++)
        printf("%d ",vec1[i]);

    printf("\n");

    sse_or(vec1,vec2);
    for (int i = 0; i < 4; i++)
        printf("%d ",vec1[i]);

    printf("\n");

    sse_and(vec1,vec2);
    for (int i = 0; i < 4; i++)
        printf("%d ",vec1[i]);

    printf("\n");

    sse_xor(vec1,vec2);
    for (int i = 0; i < 4; i++)
        printf("%d ",vec1[i]);

    return 0;
}