function [T2,T1,F]=Ejercicio01_cd(h,T0,Tn)
    n=(1/h)+1;
    K=zeros(n,n);
    T2=zeros(n,1);
    aux1=[1 -2 1];
    G=10;k=2;
    f=zeros(n,1);
    f(1)=T0;
    f(n)=Tn;
    
    K(1,1) = 1; K(n,n) = 1;
    
    for i=2:n-1
        for j=0:2
            K(i,i-1+j)=aux1(j+1);
            f(i)=(-G/k)*h^2;
        end
    end
    
    T2=K\f;
    plot(0:h:1,T2,'g');
    title('Temp Aprox');    
end
