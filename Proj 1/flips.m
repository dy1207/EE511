function []=flips(n)
arr = zeros(1,n);
Longestrun=0;
Sumrun=0;
Headtime=0;
Headrun=0;
for i=1:n
    A=rand();
    if A>0.5
       a=1;
    else
        a=0;
    end
    arr(1,i)=a;
    disp(arr);
 
    if Sumrun>=Longestrun
        Longestrun=Sumrun;
    end
    if A>0.5
        Headtime=Headtime+1;
        Headrun=Headrun+1;
        Sumrun=Headrun+1;
    else
        Headrun=0;
    end
end
disp('the longestrun of Head');
disp(Longestrun);
disp('Headtimes');
disp(Headtime);
hist(arr)