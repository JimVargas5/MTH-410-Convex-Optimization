function sum=sumDistances(u,X)
% This function sums up all of the distances between a test point and a set
% of given points. We wish to minimize this sum.

% u: The test point. This will apporach an optimal solution with sufficient
% iterations.
% X: The set of given points, stored as a matrix. In this case, the points
% are the rows with coordinates as the column entries.

    sum=0;
    for i=1:size(X,1)
        sum=sum + norm(u - X(i,:));
    end
end