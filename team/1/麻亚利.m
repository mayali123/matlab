%% 第一题
x = 0:0.05:2*pi;
y = sin(x);
z = tan(x);
plot(x,y,'--r',x,z,'og');
% axis([0,4,-100,100])

%% 第二题

y1 = @(x) sqrt(abs(x));
fplot(y1,[-2*pi,2*pi]);
hold on 
y2 = @(x) cos(x);
fplot(y2,[-2*pi,2*pi]);
y3 = @(x) tanh(x);
fplot(y3,[-2*pi,2*pi]);
hold off 

%% 第三题
x = @(t) cos(t).^3;
y = @(t) sin(t).^3;
fplot(x,y,'m','LineWidth',2)


%% 第四题
x = 0:1:1000;
y = x.^5;
plot(x,y);
% 新开一个窗口
figure;
% 对数坐标图
loglog(x,y);
% x轴半对数坐标图
figure;
semilogx(x,y);
% y轴半对数坐标图
figure;
semilogy(x,y);


%% 第五题
subplot(2,2,1);
fplot(@(x) sin(x),[0,2*pi]);
title('y=sin(x)');

subplot(2,2,2);
fplot(@(x) cos(x),[0,2*pi]);
title('y=cos(x)');

subplot(2,2,3);
fplot(@(x) sin(x).*cos(x),[0,2*pi]);
title('y=sin(x)*cos(x)');

subplot(2,2,4);
fplot(@(x) sin(x)./cos(x),[0,2*pi]);
title('y=sin(x)/cos(x)');

%% 第六题
f = @(x,y) exp(x) + sin(x.*y);
fimplicit(f,'*g');


%% 第七题
y1 = @(x) 10 .*sin(x);
y2 = @(x) 5  .*cos(x);
% 曲线y1的线型为点画线、颜色为红色、数据点标记为+号；
fplot(y1,[0,4*pi],'-.r','Marker','+');
hold on 
% 曲线y2的线型为虚线，颜色为黄色、数据点标记为叉号；
fplot(y2,[0,4*pi],'--y','Marker','x');
hold off

% 标示坐标轴的显示范围和刻度线、添加栅格线；
ax = gca
ax.XTick = 0:pi/2:4*pi
ax.XTickLabel = {'0','\pi/2','\pi','3\pi/2','2\pi','5\pi/2','3\pi','7\pi/2','4\pi'}
ax.YTick = -10:5:10
ax.YTickLabel = {'-10','-5','0','5','10'}
grid on

% 标注图标题（自拟）和坐标轴名称。
title({'y= 10sin(x)', 'y = 5cos(x)'});
xlabel('x轴');
ylabel('y轴');



%% 第八题
% 加格栅、图例和标注。
% (1)
fsurf(@(x,y) 1/2*(x.^2-y.^2 +1));
grid on;
legend('x^2 + y^2 = 2z -1 ')

% (2)
x = @(u,t) 1/2 .*(u - 1./u) + t;
y = @(u,t) 1/2 .*(u + 1./u) + t;
z = @(u,t) u.*t;
fsurf(x,y,z,[-6 6 -6 6]);





%% 第九题
fsurf(@(x,y) sqrt( - x.^2 - y.^2 + 25));
hold on 
fsurf(@(x,y) -sqrt( - x.^2 - y.^2 + 25));
axis equal;
t = 0:0.01:2*pi;
x = 2.5.*(cos(t)+1);
y = 2.5.*sin(t);
X = meshgrid(x);
Y = meshgrid(y);
z = linspace(-5,5,length(t));
Z = [meshgrid(z)]';
mesh(X,Y,Z);


x = 1:0.1:2;
y = 2:0.2:3;  

[X,Y] = meshgrid(x,y);
