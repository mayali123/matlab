%% ��һ��
x = 0:0.05:2*pi;
y = sin(x);
z = tan(x);
plot(x,y,'r',x,z,'g');

%% �ڶ���
x =  -2*pi:0.05:2*pi; 
y = [sqrt(abs(x));cos(x);tanh(x)];
plot(x,y);


%% ������
t = 0:0.05:2*pi;
x = cos(t).^3;
y = sin(t).^3;
p = plot(x,y,'r')
p(1).LineWidth = 2;




%% 


