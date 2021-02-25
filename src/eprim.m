function y = eprim(k,n,x)
h = 3/n;
xj = (k-1)*h;
xk = (k)*h;
xl = (k+1)*h;

if k == 0
    if 0<=x && x<=h
        y = -1/h;
    else
        y = 0;
    end
elseif k == n
    if 3-h<=x && x<=3
        y = 1/h;
    else 
        y = 0;
    end
else
    if xj<=x && x<=xk
        y = 1/h;
    elseif xk<x && x<=xl
        y = -1/h;
    else 
        y = 0;
    end
end
end

