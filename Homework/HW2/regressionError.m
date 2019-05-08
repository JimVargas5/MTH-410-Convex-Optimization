function error=regressionError(x,y)
    % x is a vector of the predicted prices from unused data
    % y is a vector of the corresponding actual prices from unused data
    % returns the mean of all percentage errors
    error=0;
    n=size(x);
    for i=1:n
        if y(i)~=0
            error=error+ ((x(i)-y(i))/y(i))/n;
        else
            error=error+ x(i)/n;
        end
    end
end