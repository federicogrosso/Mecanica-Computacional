function T = Ejercicio01_a(dominio,f)
syms x;
if (f == 1)
    T =(-5/2)*(x.^2)+(3/2)*x+1;
else
    T =(-5/2)*(x.^2)+(5/2)*x+1;
end

    
T_aux = double(subs(T,x,dominio));
plot(dominio,T_aux);
title('Solucion analítica');