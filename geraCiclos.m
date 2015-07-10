function geraCiclos (n, d)
a = randperm(n);
a
c = a;
b = n;
cont = 1;     
 z = d;  
for i = 1:d
 printf("( ");   
    
    if(b > n-z)
       w = a(cont);
       for j = 1:(n - z - 1)
              printf(" %d",a(cont));
              c(a(cont)) = a(cont + 1);
              cont++;
              b--;
        endfor
        z+=2;
        printf(" vies %d",a(cont));
        c(a(cont)) = w;
        cont++;
        b--; 
    endif
    
    if(i == d)
       w = a(cont);
       for j = 1:b
          printf(" %d",a(cont));
          if(j < b)
              c(a(cont)) = a(cont + 1);  
          else
              c(a(cont)) = w;  
          endif
          cont = cont + 1;  
       endfor
    else
        if(b >= d && cont > b)
            printf(" %d",a(cont)); 
            c(a(cont)) = a(cont);
            cont = cont + 1; 
            b--;
        endif
    endif     
    

printf(" )");   
endfor
printf("\n");

c
endfunction