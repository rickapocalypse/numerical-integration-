function integral = trapezio(f,a,b,n)
   h = (b-a)./n;
   resultado = (f(a)+f(b))./2;
   for i = 1:n-1       
      resultado = resultado + f(a + i*h);
   endfor
   integral = h*resultado;
 endfunction 