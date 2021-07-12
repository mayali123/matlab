%% ��ͼ

% plot(x,y) 
x = [1,2,3,4];
y = x + 1;
plot(x,y)

x = -10 : 10;
y = x .^ 2;

% plot(x)
x  = [2,3,4,5]
plot(x)

% ���Ƹ��� 
x = -2:2
y = -3:1
cx = x + y*i;
plot(cx)

% plot(x,A) x������ A�Ǿ���
x = 0:0.05: 2*pi;
A = [sin(x);sin(2*x);sin(0.5*x)];
plot(x,A)

% fplot(fun,[tmin,tmax],ѡ��) 
fplot(@(x) sin(1./x) ,[0,0.2])

% fplot(fun,fun2,[tmin,tmax],ѡ��) 
fplot(@(t) t * sin(t),@(t) t *cos(t) ,[0,10*pi])


%% ����ͼ�εĸ�������
x = [-2*pi:0.05:2*pi];
y = sin(x);
plot(x,y)
% title ��ӱ���
title('y = sin(x)');

% ��x����·���ʾ ����
xlabel('-2 \pi \leq x \leq 2 \pi')

% ��y�������ʾ ����
ylabel('-1 \leq y \leq 1 ')

% ��ͼ���ϵ�һ�� ��ʾ����
text(0,0,'y = sin(0)')


%% ��ά��ͼ
t = linspace(0,10*pi,100)
x = sin(t) + t .* cos(t);
y = cos(t) + t .* sin(t);
z = t;
plot3(x,y,z);
grid on 
axis([-40,40,-40,40,0,30])

