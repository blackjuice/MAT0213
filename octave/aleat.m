function aleat (n, d)

    a = randperm(n);

    m = n;
    de = d;
    i = 0;

    while (de != 1)
        i++;
        b = (randperm(m-de+1));
        ger = b(1);
        
        V(i) = ger;
        
        m = m - ger;
        de--;
    endwhile

    i++;
    V(i) = m;

    x = 1;
    for (i = 1:d)
        for (j = 1:V(i))

            Y(x) = a(x);
            x++;
        endfor
    endfor    


    x = 1;
    for (i = 1:d)
        guarda = a(x);
        for (j = 1:V(i))
            if (j == V(i))
                Z(a(x)) = guarda;
                x++;
                break;
            endif

            posicao = a(x);
            proximo = a(x+1);
            Z(posicao) = proximo;
            x++;

        endfor
    endfor    

    printf("( ");
    for (i = 1:n)
        printf("%d ", Z(i));
    endfor
    printf(") = \n");

    x = 1;
    for (i = 1:d)
        printf("( ");        
        for (j = 1:V(i))
            printf("%d ", Y(x));
            Y(x) = a(x);
            x++;
        endfor
        printf(") ");
    endfor  


endfunction