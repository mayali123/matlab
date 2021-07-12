%% 绘图

% plot(x,y) 
x = [1,2,3,4];
y = x + 1;
plot(x,y)

x = -10 : 10;
y = x .^ 2;

% plot(x)
x  = [2,3,4,5]
plot(x)

% 绘制复数 
x = -2:2
y = -3:1
cx = x + y*i;
plot(cx)

% plot(x,A) x是向量 A是矩阵
x = 0:0.05: 2*pi;
A = [sin(x);sin(2*x);sin(0.5*x)];
plot(x,A)

% fplot(fun,[tmin,tmax],选项) 
fplot(@(x) sin(1./x) ,[0,0.2])

% fplot(fun,fun2,[tmin,tmax],选项) 
fplot(@(t) t * sin(t),@(t) t *cos(t) ,[0,10*pi])


%% 绘制图形的辅助操作
x = [-2*pi:0.05:2*pi];
y = sin(x);
plot(x,y)
% title 添加标题
title('y = sin(x)');

% 在x轴的下方显示 文字
xlabel('-2 \pi \leq x \leq 2 \pi')

% 在y轴的左方显示 文字
ylabel('-1 \leq y \leq 1 ')

% 在图像上的一点 显示文字
text(0,0,'y = sin(0)')


%% 三维画图
t = linspace(0,10*pi,100)
x = sin(t) + t .* cos(t);
y = cos(t) + t .* sin(t);
z = t;
plot3(x,y,z);
grid on 
axis([-40,40,-40,40,0,30])

