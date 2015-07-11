#include <stdio.h>
#include <stdlib.h>

int main () {
    int a[1000];
    int i;
    int f;
    int j;

    a[1] = 4;
    a[2] = 6;
    a[3] = 1;
    a[4] = 3;
    a[5] = 2;
    a[6] = 5;
    a[7] = 7;
    int x; 


    for (i = 1; i < 7; i++) {

        if (a[i] != 0 && a[i] != i) {

            f = i;
            printf("( ");
            
            while (i != a[f]) {
                    printf("%d ", a[f]);
                    j = f;
                    f = a[f];
                    a[j] = 0;
            }

            if (i == a[f]) {
                printf("%d ", a[f]);
                a[f] = 0;
            }

            printf(")");
        }
    }
    return 0;
}