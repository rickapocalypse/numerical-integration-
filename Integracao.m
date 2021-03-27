clear
clc
%integração numerica
f=@(x) e.^(3.*x) .*sin(2.*x); 
a = 0;
b = pi./4;
n = 5;
Resultado1 = Trapezio(f,a,b,n);
Resultado2 = simpson(f,a,b,n);
%Solução analitica 
x = sym('x');
f1 =  e.^(3.*x) .*sin(2.*x);
Resultado3 = double(int(f1,a,b));
%Resultado final

display('------------Resultado Numerico---------');
display('Metodo do Trapezio')
Resultado1 = Trapezio(f,a,b,n)
display('Metodo de Simpson')
Resultado2 = simpson(f,a,b,n)
display('------------Resultado Analatico--------')
Resultado3