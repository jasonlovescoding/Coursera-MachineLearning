function [ B ] = shuffleRows(A)
%SHUFFLE shuffles A row-wise  
%   This function shuffles A according to its rows,
%   for example, if A = [ a1; a2; a3 ], where ai is a row vector of A
%   Then B is maybe equal to [ a3; a1; a2 ]
B=zeros(size(A));

m=size(A,1);
shuffle_vec=randperm(m);
for i=1:m
    B(i,:)=A(shuffle_vec(i),:);
end

end

