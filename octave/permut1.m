function permut ()
    a = dlmread ('vetor2.txt', ' ', 0, 0);
    l = length(a);

    for (i = 1:l)
        if (a(i) != 0 && a(i) != i)
            f = i;
            printf("( ");

            while (i != a(f))
                printf("%d ", a(f));
                j = f;
                f = a(f);
                a(j) = 0;
            endwhile

            if (i == a(f))
                printf("%d ", a(f));
                a(f) = 0;
            endif

            printf(")");
        endif
    endfor
    printf("\n");
endfunction