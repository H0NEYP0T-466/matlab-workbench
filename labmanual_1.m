%% task #1
edit dct
edit sin
help rand
a=3; b=5; c=7;
clear b

%%task# 2
x=[1 4;8 3];
invOfX=inv(x)
diagOfX=diag(x)
sumOfCols=sum(x)
sumOfX=sum(sum(x))
transOfX=x'

x=[2 8 5;9 7 1]; b=[2 4 5];
maxOfX=max(max(x))
minOfX=min(min(x))
medianOfRows=median(x,2)
x=[x;b]

x=[2 6 12;15 6 3;10 11 1];
avgFirstRow=mean(x(1,:))
x(1,:)=avgFirstRow
rowVecX=reshape(x,1,[])

idMat=eye(4)

b=5:5:100
numOfB=numel(b)

%% TASK #3
A=[1 8 3;5 2 0;4 1 9];
elem23=A(2,3)
row3=A(3,:)
col2=A(:,2)
B=A; B(:,end)=0
sumOfA=sum(A(:))
