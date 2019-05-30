function v=weaksubnorm(x)

if x==0
    v=x;
else
    v=x/(norm(x));
end

