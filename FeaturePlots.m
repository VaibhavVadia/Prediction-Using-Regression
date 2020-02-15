% Explore Boston Housing Data, for multiple regression
% Data has 13 features and 1 output variable (plot each feature vs. Y)
%**************************************************************************

%**************************************************************************
% Load the Boston Housing Data; reading data from a *.csv file;
%**************************************************************************
MArr = importdata('C:\Users\vaibh\Downloads\Boston\hou_all.csv');
% output variable, median house price
Y = MArr(:,14);

%**************************************************************************
% plot each variable vs. Y
%**************************************************************************
subplot(3,1,1)
scatter(MArr(:,1),Y)
xlabel('feature 1')
subplot(3,1,2)
scatter(MArr(:,2),Y)
xlabel('feature 2')
subplot(3,1,3)
scatter(MArr(:,3),Y)
xlabel('feature 3')
pause
clf reset

subplot(3,1,1)
scatter(MArr(:,4),Y)
xlabel('feature 4')
subplot(3,1,2)
scatter(MArr(:,5),Y)
xlabel('feature 5')
subplot(3,1,3)
scatter(MArr(:,6),Y)
xlabel('feature 6')
pause
clf reset

subplot(3,1,1)
scatter(MArr(:,7),Y)
xlabel('feature 7')
subplot(3,1,2)
scatter(MArr(:,8),Y)
xlabel('feature 8')
subplot(3,1,3)
scatter(MArr(:,9),Y)
xlabel('feature 9')
pause
clf reset

subplot(3,1,1)
scatter(MArr(:,10),Y)
xlabel('feature 10')
subplot(3,1,2)
scatter(MArr(:,11),Y)
xlabel('feature 11')
subplot(3,1,3)
scatter(MArr(:,12),Y)
xlabel('feature 12')
pause
clf reset

subplot(3,1,1)
scatter(MArr(:,13),Y)
xlabel('feature 13')
subplot(3,1,2)
scatter(func,Y)
xlabel('feature 13')

