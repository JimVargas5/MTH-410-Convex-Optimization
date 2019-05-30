function w=weakSub(x,A)
    w=zeros(1,size(A,2));
    for i=1:size(A,1)
        if x~=A(i,:)
            w=w + (x-A(i,:))/norm(x-A(i,:));
        end
    end
end