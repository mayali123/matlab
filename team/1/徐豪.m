T1
x=linspace(0,2*pi);
y1=tan(x);
y2=sin(x);
plot(x,y1,'og',x,y2,'--r');
axis([0,2*pi,-10,10])


T2
x=-2*pi:0.05:2*pi;
y1=sqrt(abs(x));
plot(x,y1,'r')

hold on
y2=cos(x);
plot(x,y2,'b')

hold on
y3=tanh(x);
plot(x,y3,'g')
hold off


T3
xt=@(t) cos(t).^3;
yt=@(t) sin(t).^3;
fplot(xt,yt,'m','Linewidth',2)


T4
fplot(@(x) x.^5,[0,1000]);
figure
x=logspace(0,1000);
y=x.^5;
loglog(x,y);
figure
x=0:0.01:1000;
y=x.^5;
semilogx(x,y)
figure
x=0:0.01:1000;
y=x.^5;
semilogy(x,y)


T5
x=0:0.01:2.*pi;
y1=sin(x);
y2=cos(x);
y3=sin(x).*cos(x);
y4=sin(x)./cos(x);
subplot(2,2,1);plot(x,y1);title('y1=sin(x)');grid on;
subplot(2,2,2);plot(x,y2);title('y2=cos(x)');grid on;
subplot(2,2,3);plot(x,y3);title('y3=sin(x).*cos(x)');grid on;
subplot(2,2,4);plot(x,y4);title('y4=sin(x)/cos(x)');grid on;
axis([0,2*pi,-10,10])


T6
f1=@(x,y) exp(x)+sin(x.*y);
fimplicit(f1,'g*')


T7
x=0:0.1:4*pi;
y1=10*sin(x);
y2=5*cos(x);
plot(x,y1,'-.r','Marker','+');
hold on
plot(x,y2,'--y','Marker','x');
text(pi,0,'\leftarrow 10*sin(\pi)');
text(2*pi,0,'\leftarrow 5*cos(2*pi)');
title('y1=10*sin(x) & y2=5*cos(x)');
xlabel('x');
ylabel('y');
box on  
ax = gca; 
ax.XTick =0:pi/2:4*pi; 
ax.XTickLabel = {'0','\pi/2','\pi','3\pi/2','2\pi','5\pi/2','3\pi','7\pi/2','4\pi'};
ax.YTick = -10:5:10; 
ax.YTickLabel = {'-10','-5','0','5','10'};
grid on;


T8
fmesh(@(x,y) 1/2.*(x.^2-y.^2+1));
text(5,5,0,'\leftarrow z=1/2.*(x.^2-y.^2+1)')
grid on;
legend('z=1/2.*(x.^2-y.^2+1)')

funx=@(u,t) 1/2.*(u-1./u)+t;
funy=@(u,t) 1/2.*(u+1./u)+t;
funz=@(u,t) u.*t;
fmesh(funx,funy,funz,[-6,6]);
axis([-20 20 -20 20]);
grid on;
axis equal;
legend('1/2.*(u-1./u)+t','1/2.*(u+1./u)+t','u.*t')


T9
fmesh(@(x,y) sqrt(25-x.^2-y.^2));
axis equal
hold on;
fmesh(@(x,y) -sqrt(25-x.^2-y.^2));
axis equal
hold on;
t=0:0.01:2*pi;
x=2.5.*(cos(t)+1);
y=2.5.*sin(t);
z=linspace(-5,5,length(t));
X=meshgrid(x);
Y=meshgrid(y);
Z=[meshgrid(z)]';
mesh(X,Y,Z);
axis equal
hold off;