%**************************************************************************
% Load the Boston Housing Data; reading data from a *.txt file;
%**************************************************************************
clc
clear all
close all
MArr = importdata('C:\Users\vaibh\Downloads\Boston\hou_all.csv');
% output variable, median house price
Y = MArr(:,14);

%**************************************************************************
% Start with features:
% choose training data: 400 points
%**************************************************************************
x1 = MArr(:,1);
x2 = MArr(:,2);
x3 = MArr(:,3);
x4 = MArr(:,4);
x5 = MArr(:,5);
x6 = MArr(:,6);
x7 = MArr(:,7);
x8 = MArr(:,8);
x9 = MArr(:,9);
x10 = MArr(:,10);
x11 = MArr(:,11);
x12 = MArr(:,12);
x13 = MArr(:,13);
%X= {x1,x4,x5,x6.^7,log(x8),x9,x10,x11,log(x12),x13}

%**************************************************************************
% Split data into training and test
%**************************************************************************
ka = 400; % choose ka points for training
indexV = [1,2,3,4,5,6,7,8,9,10,11,12,13];
sz = size(MArr,1);
Nf = size(indexV,2);

%rndArr = randperm(sz); % shuffle data
%x1Train = x1(rndArr(1:ka));
%x1Test = x1(rndArr(ka+1:sz));

%for ia=1:Nf
 %   ind = indexV(ia);
 %  x1Train = MArr(1:ka,ind);
  %  x1Test = MArr(ka+1:sz,ind);
%end

%**************************************************************************
% Compute the multiple regression coefficients for a linear model,
% using training data
%**************************************************************************
%tbl = table(x1,x2,x3,x4,x5,x6.^7,x7,log(x8),x9,log(x10),log(x11),x12,log(x13),Y);
tbl = table(x1,x4,x5,x6.^7,log(x8),x9,log(x10),log(x11),log(x13),Y);
%tbl.x4 = categorical(tbl.x4);
fitlm(tbl)
%heatmap(tbl,x1,x2)
%ypred = predict(mdl,X);
%plot(X,y,'o',X,ypred,'x')
%legend('Data','Predictions')

%**************************************************************************
% Compare the prediction vs. observation, in test data (still to do)
%**************************************************************************
func=1+x1+x4+x5+x6.^7+log(x8)+x9+log(x10)+log(x11)+log(x13)
scatter(func,Y)
