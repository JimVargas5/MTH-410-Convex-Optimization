function error=meanRegressionError(x,y)
    % x is a vector of the predicted prices from unused data
    % y is a vector of the corresponding actual prices from unused data
    % NOTE: x and y can be scalars because of MATLAB indexing
    % returns the mean of all percentage errors
    error=0;
    n=size(x,1);
    for i=1:n
        if y(i)~=0
            error=error+ ((x(i)-y(i))/y(i))/n;
        else
            error=error+ x(i)/n;
        end
    end
    error=100*error;
end