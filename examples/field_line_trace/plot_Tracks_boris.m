clear all
close all
load('D3DrzZ2D2Tiles10Res.mat')
rGeom = r;
zGeom = z;
Zgeom = Z;

circle_radius = 0.4;
angle = linspace(0,2*pi,1e3);
cr = circle_radius*sin(angle)+1.6;
cz = circle_radius*cos(angle);

file = 'output/history.nc';
x = ncread(file,'x');
y = ncread(file,'y');
z = ncread(file,'z');
vx = ncread(file,'vx');
vy = ncread(file,'vy');
vz = ncread(file,'vz');
charge = ncread(file,'charge');
weight = ncread(file,'weight');
sizeArray = size(x);
nP = sizeArray(2);


r = sqrt(x.^2+y.^2);%x;
figure(16)
hold on
dt = 1e-7;
nT = 1e6;
Sub = 1;
tloop = 7850*1e-6;
nloops = floor(dt*nT/tloop);
timerange = floor(nT/nloops/Sub);
r_vec = zeros(1,nloops);
if nP ==1
for j=1:nloops
for i=1:nP
    trange = (j-1)*timerange+1:j*timerange;
plot(r(trange),z(trange))

end
zdiff = 0.01;
rsub = r(trange);
averager = mean(rsub(find((z(trange) < zdiff & z(trange) > -zdiff) & (r(trange) >1.6) )));
r_vec(j) = averager;
end
else
    
for j=1:nloops
for i=1:nP
    trange = (j-1)*timerange+1:j*timerange;
plot(r(trange,i),z(trange,i))
end
end
end

plot(rGeom,zGeom)
hold on
scatter(rGeom,zGeom)
plot(cr,cz,'k')

thisr_vec = r_vec;

names = {'boris_dt1en6_nt1e5_nocyl.mat','boris_dt1en7_nt1e6_nocyl.mat','boris_dt1en8_nt1e7_nocyl.mat'};
figure(1)
hold on
%clipboard('copy',r_vec)
r_vec_dt1en8_rk4=[1.99934119270887 1.99938131821935 1.99944631190757 1.99944117894054 1.99937753976738 1.99932193625937 1.99932226644175 1.9993909067419 1.99943587902472 1.99942467079623 1.9994324365112 1.99941966615125];
r_vec_dt1en7_rk4=[1.999341853072 1.99935855433369 1.99934754558333 1.99936758328791 1.99934391769602 1.9993479970994 1.99935512000692 1.99935303566111 1.99932412623583 1.99931980708203 1.99932049062689 1.99931645510053];
r_vec_dt1en6_rk4=[1.99933835383384 1.99934063803765 1.99934835203232 1.99934601206933 1.999356956709 1.99935094387301 1.99938692085779 1.99935202980042 1.99934613512408 1.99934582364175 1.99934583902359 1.9993473099124];
r_vec_dt1en8_rk4_cyl=[2.0317659421076 2.03179785994897 2.03180049912798 2.03179598563369 2.03175044439659 2.03176703034592 2.03173277869488 2.03173344915414 2.03172779755183 2.03177239067089 2.03180572811736 2.03179046515176];
r_vec_dt1en7_rk4_cyl=[2.03180187295222 2.03184172013031 2.03179710568782 2.03180883679036 2.0318299720631 2.03179910523651 2.03182556017186 2.03180841335322 2.03180069464644 2.03184209403938 2.03181333971745 2.03180449751703];
r_vec_dt1en6_rk4_cyl=[2.03180652518176 2.03183671677793 2.03180895318449 2.03180178497553 2.03181703170099 2.03180882582744 2.03179809865975 2.03179835983421 2.03181849880286 2.03180005016878 2.0318009164391 2.03182744502584];
plot(thisr_vec-thisr_vec(1))
hold on
plot(r_vec_dt1en8_rk4-r_vec_dt1en8_rk4(1),'-o')
plot(r_vec_dt1en7_rk4-r_vec_dt1en7_rk4(1),'-o')
plot(r_vec_dt1en6_rk4-r_vec_dt1en6_rk4(1),'-o')
plot(r_vec_dt1en8_rk4_cyl-r_vec_dt1en8_rk4_cyl(1),'-*')
plot(r_vec_dt1en7_rk4_cyl-r_vec_dt1en7_rk4_cyl(1),'-*')
plot(r_vec_dt1en6_rk4_cyl-r_vec_dt1en6_rk4_cyl(1),'-*')
% for i=1:length(names)
%     load(names{i});
%     plot(r_vec-r_vec(1))
% end
legend('Straight dt=1e-8','Straight dt=1e-7','Straight dt=1e-6','Curved dt=1e-8','Curved dt=1e-7','Curved dt=1e-6')
% 
title({'Relative Outward Drift of Particles in Helical Field','In Straight and Cylindrical Geometries For Boris Integrator'})
xlabel('Poloidal Loop Number')
ylabel('$\bar{r}_i - \bar{r}_1$ [m]','Interpreter','latex')
set(gca,'FontSize',14)