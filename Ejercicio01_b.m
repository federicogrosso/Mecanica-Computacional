function Flujo_Calor = Ejercicio01_b(T,dominio,k)
syms x;
dT=-k*diff(T);
Flujo_Calor = double(subs(dT,x,dominio));
plot(dominio,Flujo_Calor);
title('Flujo de Calor');
