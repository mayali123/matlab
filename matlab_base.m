%% 改输出的格式 
format short  %显示5位定点十进制数 小数显示5位
format long  % 显示15位定点十进制数 小数显示15位
format rat   % 用有理数逼近显示数据
% format short/long + e 以科学计算法显示

%% 字符串
% 如果文本包含双引号，请在定义中使用两个双引号
q = "Something ""quoted"" and something else. "

% 字符串的 + 操作
s = "pi=" + pi  % 双引号 直接拼接
t = '123' + 1   % asc 码相加 



% matlab索引 是 按列优先 和c语言不一样
% 还有一点是 索引是 从1开始的 不是从0开始的 


%% 元胞数组
% 元胞数组的创建

% 使用 {}
A = {"cell array"}

% 使用 cell(n,m) 

cell(2,3)

% 修改
% 细胞数组的索引 对于{}是索引具体的值 ()是索引这个cell

%% 操作符与运算符
% 在指令后加 ;就是不显示 指令执行的结果

% 开始的数:步数:结束的数  
1:2:9

%% 特殊的矩阵

% 生成全为1的方阵
% ones(m, n) 生成一个m行，n列的元素全为1的矩阵 
ones(2,3) 
% 如果只输入一个值n则为n阶全为1的方阵  
ones(5)

% zeros(m, n)	生成一个m行，n列的零矩阵
zeros(2,3)
% eye(m, n)	生成一个m行，n列的单位矩阵
eye(4)

% 生成m行，n列元素服从(0,1)开区间上均匀分布的随机矩阵

rand(2, 4)

% randi(N, m, n) 生成m行，n列元素为不超过N的整数的随机矩阵
randi(10,2,2)


% randn(m, n) 生成m行，n列元素服从标准正态分布的随机矩阵; 
% a+k.*randn(m, n)可以生成m行，n列元素服从正态分布N(a,k^2)的随机矩阵
randn(2,3)

5 + 10 .* randn(2,3)

% 保存随机数生成器的当前状态 
s = rng;
rand(2,2)
rng(s);
rand(2,2)

%% 对矩阵的操作
% diag(v)	创建对角矩阵或获取矩阵的对角元素
% triu(A)	创建上三角阵，即返回矩阵 A 的上三角部分
% tril(A)	创建下三角阵，即返回矩阵 A 的下三角部分
% compan(A)	生成矩阵 A 的伴随矩阵
% magic(m)	生成m阶魔方矩阵(任一行/列都)



%% 符号运算

% limit(f,x,a,'Right'/'Left')
% 表示当自变量x逼近a或从右侧（左侧）逼近a时
% 函数f的极限值。

% 定义符号变量
syms  x;
f = (1/(x*(log(x))^2) - 1/((x-1)^2) );
% 求极限
limit(f,x,1,'right')

% 求和
syms a;
g = a * n^3 + (a-1)*n^2;
symsum(g,n,0,50)

% 求导
syms x y ;
f = sin(x*y);
diff(f,x)
diff(f,y)

g = x * log(1+x);
int(g,x)
int(g,x,0,1)

% 求解微分方程
% 通解
f = dsolve("Dy + 3*x*y = x*exp(-x^2)",'x');
f1= dsolve("D2y + Dy*2 = exp(x)",'x');
% 特解

f3 = dsolve("x*Dy+2*y-exp(x)=0","y(1)=2*exp(1)",'x')










