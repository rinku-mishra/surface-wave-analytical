clc;clear;
    ks1 = 0.001;
    ks2 = 100;
[x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,y1,y2,y3,y4,y5,y6] = surface_1TiA_2(ks1,ks2);
ks = linspace(ks1,ks2,20);
t = ks.*ks;
r1 = zeros (10,12);
for i = 1:length(ks)
    p2 = [x1(i,1),x2(i,1),x3(i,1),x4(i,1),x5(i,1),x6(i,1),x7(i,1),x8(i,1),x9(i,1),x10(i,1),x11(i,1),x12(i,1),x13(i,1)];
    r1(i,:)= roots(p2);
%     t(i,:) =  r1(i,:)* r1(i,:);
end
figure(1)
plot(ks(1:20),r1(1:20,6),'linewidth',2);
grid on

xlabel('\kappa');
ylabel('\omega_R');


%%%%%%%%%%%%%%%%%%%%% for gamma Calculation %%%%%%%%%%%%%%%%%%%%%
for k = 1:length(ks)
    a(k) = -12*r1(k,6)*x1(k,1);
    b(k) = -11*r1(k,6)*y1(k,1);
    c(k) = (220*r1(k,6)^3*x1(k,1))+(10*r1(k,6)*x3(k,1));
    d(k) = (9*r1(k,6)*y2(k,1))+(165*r1(k,6)^3*y1(k,1));
    e(k) = -(120*r1(k,6)^3*x3(k,1))-(8*r1(k,8)*x5(k,1))-(792*r1(k,8)^5*x1(k,1));
    f(k) = -(462*r1(k,6)^5*y1(k,1))-(84*r1(k,8)^3*y2(k,1))-(7*r1(k,6)*y3(k,1));
    g(k) = (792*r1(k,6)^7*x1(k,1))+(252*r1(k,6)^5*x3(k,1))+(56*r1(k,6)^3*x5(k,1))+(6*r1(k,6)*x7(k,1));
    h(k) = (330*r1(k,6)^7*y1(k,1))+(126*r1(k,6)^5*y2(k,1))+(35*r1(k,6)^3*y3(k,1))+(5*r1(k,6)*y4(k,1));
    l(k) = -(220*r1(k,6)^9*x1(k,1))-(120*r1(k,6)^7*x3(k,1))-(56*r1(k,6)^5*x5(k,1))-(20*r1(k,6)^3*x7(k,1))-(4*r1(k,6)*x9(k,1));
    m(k) = -(55*r1(k,6)^9*y1(k,1))-(36*r1(k,6)^7*y2(k,1))-(21*r1(k,6)^5*y3(k,1))-(10*r1(k,6)^3*y4(k,1))+(3*r1(k,6)*y5(k,1));
    n(k)= (12*r1(k,6)^11*x1(k,1))+(10*r1(k,6)^9*x3(k,1))+(8*r1(k,6)^7*x5(k,1))+(6*r1(k,6)^5*x7(k,1))+(4*r1(k,1)^3*x9(k,1))+(2*r1(k,6)*x11(k,1));
    o(k) = (r1(k,6)^11*y1(k,1))+(r1(k,6)^9*y2(k,1))+(r1(k,1)^7*y3(k,1))+(r1(k,1)^5*y4(k,1))-(r1(k,1)^3*y5(k,1))-(r1(k,1)*y2(k,1));
    
end    

z1 = a';z2 = b';z3 = c';z4 = d'; z5 = e';z6 = f';z7 = g'; z8 = h';z9 = l';z10 = m';z11 = n';z12 = o';
r2 = zeros (20,11);
for i = 1:length(ks)
    p1 = [z1(i,1),z2(i,1),z3(i,1),z4(i,1),z5(i,1),z6(i,1),z7(i,1),z8(i,1),z9(i,1),z10(i,1),z11(i,1),z12(i,1)];
    r2(i,:)= roots(p1);
end

figure(2)
plot(ks(1:12),r2(1:12,1),'-*');
grid on

xlabel('\kappa');
ylabel('\omega_i');