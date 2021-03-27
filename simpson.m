function integral = simpson(f,a,b,n)
   if rem(n,2)~=0
     n = n+1;
   endif
   h = (b-a)./n;
   resultado = (f(a)+f(b))./3;
   for i = 1:n-1       %exclui os pontos x0 e x1
      if rem(i,2)~=0
        resultado = resultado + (4./3).*(f(a+i*h));
      elseif rem(i,2)==0
         resultado = resultado + (2./3).*(f(a+i*h));
      endif       
   endfor
   integral = h*resultado;
 endfunction 