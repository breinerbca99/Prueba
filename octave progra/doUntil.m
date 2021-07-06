% creamos un vector 
fib = ones (1, 10);
i = 2;
do
  i++;
  fib (i) = fib (i-1) + fib (i-2);
until (i == 10)
% mostramos la posicion y el valor para la serie fibonacci
printf("La pos es %d para el valor %d\n",i,fib(i));

