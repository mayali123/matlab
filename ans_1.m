%% 第一题
% 使用短格式
format short
pi  % pi是matlab 自带的
% 长格式
format long
pi
% 短格式e方法
format short e
pi
% 长格式e方法
format long e
pi
% 有理数格式
format rat
pi

%% 第二题
S = "Hello, world"
T = "You are more than what you have become now"
length(S)
strlength(S)

S + T

A = [S,S;S,S]
length(A)   % 矩阵行和列的最大值
strlength(A) % 对矩阵的每个值求长度 

%% 第三题
a = [1:3:100] ;
% 输出a数组的长度
length(a) ;
% 提取数组a的前10个元素并赋值给b
b = a(1:10) ; 
% 提取数组a的最后10个元素并赋值给c
c = a(length(a)-9:length(a)) ; 
% 求 b * c
b .* c 
% 求 b/c
b ./ c


%% 第四题
% 生成5行4列元素服从(0,1)开区间上均匀分布的随机矩阵；
rand(5,4)


% 生成4阶元素服从(10,30)开区间上均匀分布的随机矩阵；
% (0,1) -> (0,20) -> (10,30)
10 + 20 * rand(4)

% 生成2行4列元素为不超过100的整数的随机矩阵；
randi(100,2,4)

% 使用help命令查找randn()函数的用法；
help randn()

% 生成3行5列元素服从标准正态分布的随机矩阵；
randn(3,5)

% 生成2行5列元素服从正态分布N(5,81)的随机矩阵
5 + 9 .* randn(2,5)  %  5 + 9 * randn(2,5) 这个也可以


%% 第五题
A = magic(4)

% 分别使用函数diag()、triu()、tril()、company()生成矩阵A的相关对象。
diag(A)  % 提取对角线
triu(A)  % 提取对角线上部分
tril(A)  % 提取对角线下部分
 
%% 第六题
A=[1,2,3,4;5,6,7,8;9,10,11,12]

% 提取矩阵元素10；
A(3,2)

% 提取第3列元素
A(:,3)

% 提取最后一行元素
A(3,:)

% 将A拉伸为一个列向量；
A(:)

% 提取第2至3行、第2至4列的元素组成新矩阵；
A(2:3,2:4)

% 提取第1、3、4列的元素组成新矩阵；
A(:,[1,3,4])

% 逆序提取矩阵的第2至4列元素组成新矩阵；
A(:,4:-1:2)

% 删除第1行，构成新矩阵；
A(1,:) = []

% 分别按行和列方向将矩阵两个矩阵A拼接成新矩阵；
B = [A,A] % 按行
C = [A;A] % 按列

% 对A进行转置、上下翻转、左右翻转
A'
flipud(A)
fliplr(A)

%% 第七题
A=[1,0,0;0,2,0;0,0,5] 
B= magic(3)

X1=A + B
X2=A - B  

X3=A * B
Y3=A .* B  

X4=A \ B
Y4=A .\ B

X5=A / B
Y5=A ./ B 

X6=A ^ 2
Y6=A .^ 2   

X7=3 ^ B
Y7=3 .^ B

X8=A ^ B  % 不对
Y8=A .^ B    

X9=A + 6 
Y9=3 - A     

X10= A * 6 
Y10=A .* 6

X11=A / 6
Y11=A ./ 6

%% 第八题
A = [1,1,3,-1;
    0,1,-1,1;
    1,1,2,2;
    1,-1,1,-1
    ]
B = [2;1;4;0]
% 求行列式
det(A) 
% 逆矩阵
inv(A) 
% 特征值和特征向量
eig(A)

% 阶梯形的行最简形式
rref(A) 

% 秩
rank(A)

% 迹
trace(A)


% 正交分解
orth(A)


% LU分解
lu(A) 

% 最后求出方程组的解
A\B

%% 第九题
%（1）
syms x;
f = sin(x)/x;
limit(f,x,0,'Right')


diff(f,x,1)

diff(f,x,2)

diff(f,x,3)

% （2）
g = x*x *exp(-x);
limit(g,x,-inf)
limit(g,x,+inf)
int(g,x)
int(g,x,-5,+8)
int(g,x,0,+inf)

% （3）
syms a n;
d = 1/(n^2);
symsum(d,n,1,+inf)

ff = a*n^2 - 3*n;
symsum(ff,n,0,99)
