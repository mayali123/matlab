%% ��һ��
x = 0:0.05:2*pi;
y = sin(x);
z = tan(x);
plot(x,y,'--r',x,z,'og');
% axis([0,4,-100,100])

%% �ڶ���

y1 = @(x) sqrt(abs(x));
fplot(y1,[-2*pi,2*pi]);
hold on 
y2 = @(x) cos(x);
fplot(y2,[-2*pi,2*pi]);
y3 = @(x) tanh(x);
fplot(y3,[-2*pi,2*pi]);
hold off 

%% ������
x = @(t) cos(t).^3;
y = @(t) sin(t).^3;
fplot(x,y,'m','LineWidth',2)


%% ������
x = 0:1:1000;
y = x.^5;
plot(x,y);
% �¿�һ������
figure;
% ��������ͼ
loglog(x,y);
% x����������ͼ
figure;
semilogx(x,y);
% y����������ͼ
figure;
semilogy(x,y);


%% ������
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

%% ������
f = @(x,y) exp(x) + sin(x.*y);
fimplicit(f,'*g');


%% ������
y1 = @(x) 10 .*sin(x);
y2 = @(x) 5  .*cos(x);
% ����y1������Ϊ�㻭�ߡ���ɫΪ��ɫ�����ݵ���Ϊ+�ţ�
fplot(y1,[0,4*pi],'-.r','Marker','+');
hold on 
% ����y2������Ϊ���ߣ���ɫΪ��ɫ�����ݵ���Ϊ��ţ�
fplot(y2,[0,4*pi],'--y','Marker','x');
hold off

% ��ʾ���������ʾ��Χ�Ϳ̶��ߡ����դ���ߣ�
ax = gca
ax.XTick = 0:pi/2:4*pi
ax.XTickLabel = {'0','\pi/2','\pi','3\pi/2','2\pi','5\pi/2','3\pi','7\pi/2','4\pi'}
ax.YTick = -10:5:10
ax.YTickLabel = {'-10','-5','0','5','10'}
grid on

% ��עͼ���⣨���⣩�����������ơ�
title({'y= 10sin(x)', 'y = 5cos(x)'});
xlabel('x��');
ylabel('y��');



%% �ڰ���
% �Ӹ�դ��ͼ���ͱ�ע��
% (1)
fsurf(@(x,y) 1/2*(x.^2-y.^2 +1));
grid on;
legend('x^2 + y^2 = 2z -1 ')

% (2)
x = @(u,t) 1/2 .*(u - 1./u) + t;
y = @(u,t) 1/2 .*(u + 1./u) + t;
z = @(u,t) u.*t;
fsurf(x,y,z,[-6 6 -6 6]);





%% �ھ���
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
