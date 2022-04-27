%% This is the file process all the data and visualize



%% plot map with start and goal
map1 = im2bw(imread('map.bmp'));
mapobj1 = binaryOccupancyMap(~map1);

map2 = im2bw(imread('map2.bmp'));
mapobj2 = binaryOccupancyMap(~map2);

map3 = im2bw(imread('map3.bmp'));
mapobj3 = binaryOccupancyMap(~map3);

map4 = im2bw(imread('map4.bmp'));
mapobj4 = binaryOccupancyMap(~map4);

% Scenario 1
figure(1)
set (gcf,'Position',[500,400,600*1.2,450*1.2]);
show(mapobj1);
set(gca,'linewidth',1);
set(gca,'FontName','Times New Roman', 'FontSize',12)
title('Environment Map (Scenario 1)', 'FontName','Times New Roman',  'FontSize',16, 'FontWeight', 'bold');
xlabel('X (m)', 'FontSize',14,'FontName','Times New Roman', 'FontWeight', 'bold');
ylabel('Y (m)', 'FontSize',14,'FontName','Times New Roman', 'FontWeight', 'bold');
hold on
scatter(150, 300, 'b', 'filled')
scatter(200 ,90, 'r', 'filled')
text(150+10, 300, 'Start','Color', 'b','FontSize',14, 'FontName','Times New Roman', 'FontWeight', 'bold')
text(200+10 ,90, 'Goal','Color', 'r','FontSize',14, 'FontName','Times New Roman', 'FontWeight', 'bold')

% Scenario 2
figure(2)
set (gcf,'Position',[500,400,600*1.2,450*1.2]);
show(mapobj2);
set(gca,'linewidth',1);
set(gca,'FontName','Times New Roman', 'FontSize',12)
title('Environment Map (Scenario 2)', 'FontName','Times New Roman',  'FontSize',16, 'FontWeight', 'bold');
xlabel('X (m)', 'FontSize',14,'FontName','Times New Roman', 'FontWeight', 'bold');
ylabel('Y (m)', 'FontSize',14,'FontName','Times New Roman', 'FontWeight', 'bold');
hold on
scatter(50 ,330, 'b', 'filled')
scatter(250 ,250, 'r', 'filled')
text(50-37 ,330+13, 'Start','Color', 'b','FontSize',14, 'FontName','Times New Roman', 'FontWeight', 'bold')
text(250+7 ,250, 'Goal','Color', 'r','FontSize',14, 'FontName','Times New Roman', 'FontWeight', 'bold')

% Scenario 3
figure(3)
set (gcf,'Position',[500,400,600*1.2,450*1.2]);
show(mapobj3);
set(gca,'linewidth',1);
set(gca,'FontName','Times New Roman', 'FontSize',12)
title('Environment Map (Scenario 3)', 'FontName','Times New Roman',  'FontSize',16, 'FontWeight', 'bold');
xlabel('X (m)', 'FontSize',14,'FontName','Times New Roman', 'FontWeight', 'bold');
ylabel('Y (m)', 'FontSize',14,'FontName','Times New Roman', 'FontWeight', 'bold');
hold on
scatter(290 ,350, 'b', 'filled')
scatter(390 ,60, 'r', 'filled')
text(290-40 ,350+10, 'Start','Color', 'b','FontSize',14, 'FontName','Times New Roman', 'FontWeight', 'bold')
text(390-45 ,60-5, 'Goal','Color', 'r','FontSize',14, 'FontName','Times New Roman', 'FontWeight', 'bold')

% Scenario 4
figure(4)
set (gcf,'Position',[500,400,600*1.2,450*1.2]);
show(mapobj4);
set(gca,'linewidth',1);
set(gca,'FontName','Times New Roman', 'FontSize',12)
title('Environment Map (Scenario 4)', 'FontName','Times New Roman',  'FontSize',16, 'FontWeight', 'bold');
xlabel('X (m)', 'FontSize',14,'FontName','Times New Roman', 'FontWeight', 'bold');
ylabel('Y (m)', 'FontSize',14,'FontName','Times New Roman', 'FontWeight', 'bold');
hold on
scatter(150 ,240, 'b', 'filled')
scatter(350 ,120, 'r', 'filled')
text(150-45 ,240, 'Start','Color', 'b','FontSize',14, 'FontName','Times New Roman', 'FontWeight', 'bold')
text(350+5 ,120, 'Goal','Color', 'r','FontSize',14, 'FontName','Times New Roman', 'FontWeight', 'bold')
clear



%% plot the path generated by algorithms

% Scenario 1
figure(5)
set (gcf,'Position',[500,-200,1200,1200]);
subplot(2,2,1)
[path, mapobj] = loadPath('EGApathS1', 'map.bmp');
show(mapobj);
set(gca,'linewidth',1);
set(gca,'FontName','Times New Roman', 'FontSize',12)
title('Path Comparison (Scenario 1)', 'FontName','Times New Roman',  'FontSize',16, 'FontWeight', 'bold');
xlabel('X (m)', 'FontSize',14,'FontName','Times New Roman', 'FontWeight', 'bold');
ylabel('Y (m)', 'FontSize',14,'FontName','Times New Roman', 'FontWeight', 'bold');
hold on
plot(path(:,1),path(:,2), 'r', 'lineWidth', 2);
hold on
[path, mapobj] = loadPath('GApathS1', 'map.bmp');
plot(path(:,1),path(:,2), 'm:',  'lineWidth', 1.5);
hold on
[path, mapobj] = loadPath('DstarpathS1', 'map.bmp');
plot(path(:,1),path(:,2), 'k-',  'lineWidth', 1.5);
hold on
[path, mapobj] = loadPath('hybridpathS1', 'map.bmp');
plot(path(:,1),path(:,2), 'b--',  'lineWidth', 1.5);
hold on
[path, mapobj] = loadPath('RRTpathS1', 'map.bmp');
plot(path(:,1),path(:,2), 'g--',  'lineWidth', 1.5);
hold on
scatter(150, 300, 'b', 'filled')
scatter(200 ,90, 'r', 'filled')
text(150+10, 300, 'Start','Color', 'b','FontSize',14, 'FontName','Times New Roman', 'FontWeight', 'bold')
text(200+10 ,90, 'Goal','Color', 'r','FontSize',14, 'FontName','Times New Roman', 'FontWeight', 'bold')
legend('Proposed', 'GA','[13]', '[14]', '[15]',  'FontSize',11,'FontName','Times New Roman', 'FontWeight', 'bold', 'location', 'Northwest')
clear

% Scenario 2
[path, mapobj] = loadPath('EGApathS2', 'map2.bmp');
subplot(2,2,2)
show(mapobj);
set(gca,'linewidth',1);
set(gca,'FontName','Times New Roman', 'FontSize',12)
title('Path Comparison (Scenario 2)', 'FontName','Times New Roman',  'FontSize',16, 'FontWeight', 'bold');
xlabel('X (m)', 'FontSize',14,'FontName','Times New Roman', 'FontWeight', 'bold');
ylabel('Y (m)', 'FontSize',14,'FontName','Times New Roman', 'FontWeight', 'bold');
hold on
plot(path(:,1),path(:,2), 'r', 'lineWidth', 2);
hold on
[path, mapobj] = loadPath('GApathS2', 'map.bmp');
plot(path(:,1),path(:,2), 'm:',  'lineWidth', 1.5);
hold on
[path, mapobj] = loadPath('DstarpathS2', 'map.bmp');
plot(path(:,1),path(:,2), 'k-',  'lineWidth', 1.5);
hold on
[path, mapobj] = loadPath('hybridpathS2', 'map.bmp');
plot(path(:,1),path(:,2), 'b--',  'lineWidth', 1.5);
hold on
[path, mapobj] = loadPath('RRTpathS2', 'map.bmp');
plot(path(:,1),path(:,2), 'g--',  'lineWidth', 1.5);
hold on
scatter(50 ,330, 'b', 'filled')
scatter(250 ,250, 'r', 'filled')
text(50-37 ,330+13, 'Start','Color', 'b','FontSize',14, 'FontName','Times New Roman', 'FontWeight', 'bold')
text(250+7 ,250, 'Goal','Color', 'r','FontSize',14, 'FontName','Times New Roman', 'FontWeight', 'bold')
legend('Proposed', 'GA','[13]', '[14]', '[15]',  'FontSize',11,'FontName','Times New Roman', 'FontWeight', 'bold')
clear

% Scenario 3
[path, mapobj] = loadPath('EGApathS3', 'map3.bmp');
subplot(2,2,3)
show(mapobj);
set(gca,'linewidth',1);
set(gca,'FontName','Times New Roman', 'FontSize',12)
title('Path Comparison (Scenario 3)', 'FontName','Times New Roman',  'FontSize',16, 'FontWeight', 'bold');
xlabel('X (m)', 'FontSize',14,'FontName','Times New Roman', 'FontWeight', 'bold');
ylabel('Y (m)', 'FontSize',14,'FontName','Times New Roman', 'FontWeight', 'bold');
hold on
plot(path(:,1),path(:,2), 'r', 'lineWidth', 2);
hold on
[path, mapobj] = loadPath('GApathS3', 'map.bmp');
plot(path(:,1),path(:,2), 'm:',  'lineWidth', 1.5);
hold on
[path, mapobj] = loadPath('DstarpathS3', 'map.bmp');
plot(path(:,1),path(:,2), 'k-',  'lineWidth', 1.5);
hold on
[path, mapobj] = loadPath('hybridpathS3', 'map.bmp');
plot(path(:,1),path(:,2), 'b--',  'lineWidth', 1.5);
hold on
[path, mapobj] = loadPath('RRTpathS3', 'map.bmp');
plot(path(:,1),path(:,2), 'g--',  'lineWidth', 1.5);
hold on
scatter(290 ,350, 'b', 'filled')
scatter(390 ,60, 'r', 'filled')
text(290-40 ,350+10, 'Start','Color', 'b','FontSize',14, 'FontName','Times New Roman', 'FontWeight', 'bold')
text(390-40 ,60-15, 'Goal','Color', 'r','FontSize',14, 'FontName','Times New Roman', 'FontWeight', 'bold')
legend('Proposed', 'GA','[13]', '[14]', '[15]',  'FontSize',11,'FontName','Times New Roman', 'FontWeight', 'bold', 'location', 'Northwest')
clear


% Scenario 4
[path, mapobj] = loadPath('EGApathS4', 'map4.bmp');
subplot(2,2,4)
show(mapobj);
set(gca,'linewidth',1);
set(gca,'FontName','Times New Roman', 'FontSize',12)
title('Path Comparison (Scenario 4)', 'FontName','Times New Roman',  'FontSize',16, 'FontWeight', 'bold');
xlabel('X (m)', 'FontSize',14,'FontName','Times New Roman', 'FontWeight', 'bold');
ylabel('Y (m)', 'FontSize',14,'FontName','Times New Roman', 'FontWeight', 'bold');
hold on
plot(path(:,1),path(:,2), 'r', 'lineWidth', 2);
hold on
[path, mapobj] = loadPath('GApathS4', 'map.bmp');
plot(path(:,1),path(:,2), 'm:',  'lineWidth', 1.5);
hold on
[path, mapobj] = loadPath('DstarpathS4', 'map.bmp');
plot(path(:,1),path(:,2), 'k-',  'lineWidth', 1.5);
hold on
[path, mapobj] = loadPath('hybridpathS4', 'map.bmp');
plot(path(:,1),path(:,2), 'b--',  'lineWidth', 1.5);
hold on
[path, mapobj] = loadPath('RRTpathS4', 'map.bmp');
plot(path(:,1),path(:,2), 'g--',  'lineWidth', 1.5);
hold on
scatter(150 ,240, 'b', 'filled')
scatter(350 ,120, 'r', 'filled')
text(150-45 ,240, 'Start','Color', 'b','FontSize',14, 'FontName','Times New Roman', 'FontWeight', 'bold')
text(350+5 ,120, 'Goal','Color', 'r','FontSize',14, 'FontName','Times New Roman', 'FontWeight', 'bold')
legend('Proposed', 'GA','[13]', '[14]', '[15]',  'FontSize',11,'FontName','Times New Roman', 'FontWeight', 'bold')
clear

%% currents distribution
figure(6)
set(gca,'linewidth',1);
set(gca,'FontName','Times New Roman', 'FontSize',12)
box on
axis([0 100 0 100])
title('Currents distribution','FontName','Times New Roman',  'FontSize',16, 'FontWeight', 'bold')
xlabel('X (m)', 'FontSize',14,'FontName','Times New Roman', 'FontWeight', 'bold');
ylabel('Y (m)', 'FontSize',14,'FontName','Times New Roman', 'FontWeight', 'bold');
hold on
x = -10:5:110;
y = -10:5:110;
u = zeros(length(x), length(y));
v = zeros(length(y), length(x));
m=20;
u(:) = m*cos(60);
v(:) = m*sin(30);
quiver(x, y, u, v,0.5,'b', 'MaxHeadSize', 3);




%% plot contour figure for smoothness
% Scenario 1 (proposed)
[path, mapobj] = loadPath('EGApathS1', 'map.bmp');
pathMetricsObj = evaluatePath(mapobj, path);
figure(7);
set (gcf,'Position',[500,-200,1000,1000]);
subplot(2, 2, 1)
set(gca,'linewidth',1);
set(gca,'FontName','Times New Roman', 'FontSize',12, 'FontWeight', 'bold')
box on
title('Smoothness Value (Scenario 1)',  'FontWeight', 'bold')
hold on
show(pathMetricsObj,'Metrics',{'Smoothness'})
xlabel('X (m)', 'FontSize',14,'FontName','Times New Roman', 'FontWeight', 'bold');
ylabel('Y (m)', 'FontSize',14,'FontName','Times New Roman', 'FontWeight', 'bold');
clear

% Scenario 2 (proposed)
[path, mapobj] = loadPath('EGApathS2', 'map2.bmp');
pathMetricsObj = evaluatePath(mapobj, path);
subplot(2, 2, 2)
set(gca,'linewidth',1);
set(gca,'FontName','Times New Roman', 'FontSize',12, 'FontWeight', 'bold')
box on
title('Smoothness Value (Scenario 2)',  'FontWeight', 'bold')
hold on
show(pathMetricsObj,'Metrics',{'Smoothness'})
xlabel('X (m)', 'FontSize',14,'FontName','Times New Roman', 'FontWeight', 'bold');
ylabel('Y (m)', 'FontSize',14,'FontName','Times New Roman', 'FontWeight', 'bold');
clear


% Scenario 3 (proposed)
subplot(2, 2, 3)
set(gca,'linewidth',1);
set(gca,'FontName','Times New Roman', 'FontSize',12, 'FontWeight', 'bold')
[path, mapobj] = loadPath('EGApathS3', 'map3.bmp');
pathMetricsObj = evaluatePath(mapobj, path);
box on
title('Smoothness Value (Scenario 3)', 'FontWeight', 'bold')
hold on
show(pathMetricsObj,'Metrics',{'Smoothness'})
xlabel('X (m)', 'FontSize',14,'FontName','Times New Roman', 'FontWeight', 'bold');
ylabel('Y (m)', 'FontSize',14,'FontName','Times New Roman', 'FontWeight', 'bold');
clear

% Scenario 4 (proposed)
subplot(2, 2, 4)
set(gca,'linewidth',1);
set(gca,'FontName','Times New Roman', 'FontSize',12, 'FontWeight', 'bold')
[path, mapobj] = loadPath('EGApathS4', 'map4.bmp');
pathMetricsObj = evaluatePath(mapobj, path);
box on
title('Smoothness Value (Scenario 4)', 'FontWeight', 'bold')
hold on
show(pathMetricsObj,'Metrics',{'Smoothness'})
xlabel('X (m)', 'FontSize',14,'FontName','Times New Roman', 'FontWeight', 'bold');
ylabel('Y (m)', 'FontSize',14,'FontName','Times New Roman', 'FontWeight', 'bold');
clear

%% subroutine functions

function [path, mapobj] = loadPath(filename1, filename2)
% load the results from mat file, output path information and map
% for generated path with/without smoothing
if strcmp(filename1, 'RRTpathS1') || strcmp(filename1, 'RRTpathS2')|| strcmp(filename1, 'RRTpathS3')|| strcmp(filename1, 'RRTpathS4')
    out = load(filename1);
    path = out.pthObj.States;
else
    out = load(filename1);
    path = out.path;
end
map = im2bw(imread(filename2));
mapobj = binaryOccupancyMap(~map);
end



function [v, chi, chi_d, t] = vcload(filename)
data = load(filename);
out = data.out;
v = out.speed;
t = out.tout;
chi = calculateChi(out.chi, t);
chi_d = calculateChi(out.chi_d, t);

% cooridanate change, chi is originally based on the north axis
% we need to change it to east axis

function chi = calculateChi(chi, t)
for i = 1:length(t)
    if chi(i) < -pi
        chi(i) = 2*pi + chi(i);
    elseif chi(i) > pi
        chi(i) = chi(i) - 2*pi;
    end
end
for i = 1:length(chi)
    if (0< chi(i)) && (chi(i) <= pi/2)
        chi(i) = pi/2 - chi(i);
    elseif (pi/2 < chi(i))&& (chi(i)<= pi)
        chi(i) = -(chi(i)-pi/2);
        continue
    elseif (-pi/2 < chi(i))&& (chi(i) <= 0)
        chi(i) = -chi(i) + pi/2;
        continue
    elseif (-pi < chi(i))&& (chi(i)<= -pi/2)
        chi(i) = -(3/2*pi + chi(i));
        continue
    end
end
end

end


function pathMetricsObj = evaluatePath(mapobj, path)
% mapobj
% path: n*3 vector
statespace = stateSpaceDubins([mapobj.XWorldLimits;mapobj.YWorldLimits;-pi pi]);
statevalidator = validatorOccupancyMap(statespace);
statevalidator.Map = mapobj;
statevalidator.ValidationDistance = 0.01;
pathobj = navPath(statespace);
append(pathobj, path);
pathMetricsObj = pathmetrics(pathobj,statevalidator);
end



