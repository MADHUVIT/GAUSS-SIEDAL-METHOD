%Gauss Seidal method
n=input('enter the number of variables:');
disp('Enter the co-efficients of the variable  coma separated in a square bracket format')
x=zeros(n);
for k=1:n
        x(k,:)=input('Enter the co-efficients of euaqtion');
end
d=input('Enter the constants');
dia=diag(x);
count=0;
sd=0;
for k=1:n
    s=x(k,:);
    for q=1:n
    if(k~=q)    
    if(abs(dia(k))>abs(s(q)))
        count=count+1;
    end
    end
    if(count==n-1)
    sd=sd+1;
    count=0;
    end
    end
end
if(sd>round(n/2))
    disp('Coefficient matrix is diagonally dominant');
    disp('We can use Gauss Setdal method to solve');
end
X=input('Enter the initial conditions coma separated in a square bracket format');
b=input('Enter the no. of iteration.');
for c=1:b
for k=1:n
ce=x(k,:);
z=d(k);
for q=1:n
    if(k~=q)
z=z-ce(q)*X(q);
    else
        a=q;
    end
end
X(k)=z/ce(a);
end
end
disp('Numerical solutions:');
disp(X);
disp('Exact solution');
disp(inv(x)*d');
