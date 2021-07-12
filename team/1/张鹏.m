%%��ͼ��ϰ��1
syms x y y1
x=linspace(0,2*pi,100)
y=sin(x)
y1=tan(x)
figure
plot(x,y,'r--',x,y1,'go')
xlim([0 2*pi])

%%��2
fplot(@(x) sqrt(abs(x)),[-2*pi,2*pi])
hold on
fplot(@(x) cos(x),[-2*pi,2*pi])
fplot(@(x) tanh(x),[-2*pi,2*pi])
hold off

%%��3�����Ʋ�������ͼ��
xt=@(t) (cos(t)).^3
yt=@(t) (sin(t)).^3
fplot(xt,yt,'m','Linewidth',2)

%%��4������[0��1000]�ϣ�y=x^5
%����ͼ
fplot(@(x) x.^5,[0,1000])
%��������ͼ
%x=logspace(0,3)
x=0:1:1000
y=x.^5
loglog(x,y)
%x����������ͼ
semilogx(x,y)
%y����������ͼ
semilogy(x,y)

%%��5������ͼ���ڷָ�ֱ�ͼ
ax1=subplot(2,2,1)
syms x
x=0:0.01:2*pi
y1=sin(x)
y2=cos(x)
y3=sin(x).*cos(x)
y4=sin(x)./cos(x)
plot(ax1,x,y1)
ax2=subplot(2,2,2)
plot(ax2,x,y2)
ax3=subplot(2,2,3)
plot(ax3,x,y3)
ax4=subplot(2,2,4)
%plot(ax4,x,y4)
fplot(@(x) sin(x)./cos(x),[0,2*pi])

%%��6������������
f1=@(x,y) exp(x)+sin(x.*y)
fimplicit(f1,'*g')

%%��7������y1=10*sin(x),y2=5*cos(x)
%(1)��y1,y2
fplot(@(x) 10.*sin(x),[0,4*pi],'-.r','Marker','+')%���ݵ���Ϊ+
hold on
fplot(@(x) 5.*cos(x),[0,4*pi],'--y','Marker','x')
hold off
%��2)��ʾ���������ʾ��Χ�Ϳ̶��ߣ����դ����
box on
ax=gca
ax.XTick=0:pi/2:4*pi
ax.XTickLabel={'0','\pi/2','\pi','3\pi/2','2\pi','5\pi/2','3\pi','7\pi/2','4\pi'}
ax.YTick=-10:5:10
ax.YTickLabel={'-10','-5','0','5','10'}
grid on%��������
%(3)
xlabel('x')
ylabel('y')
title('y1,y2')

%%��8
%(1)
fsurf(@(x,y) (x.^2)./2-(y.^2)./2+1/2)
grid on%��������
legend('z')
%(2)
x=@(u,t)1/2.*(u-1./u)+t
y=@(u,t)1/2.*(u+1./u)+t
z=@(u,t)u.*t
fsurf(x,y,z,[-6,6,-6,6])
grid on%��������
legend('f')


%%��9
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


%%��10
help scatter
help scatter3
help contour
help polarplot




