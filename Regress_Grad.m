clc; 
clear; 
data = xlsread('Admission_Predict.csv'); 
gre = data(1:300,2); 
to = data(1:300,3); 
ur = data(1:300,4); 
gpa = data(1:300,7); 
combo = gpa.*gre.*to.*ur; 
sop = data(1:300,5); 
lor = data(1:300,6); 
research = data(1:300,8); 
op = data(1:300,9); 
tb1 = table(gre,gpa,to,ur,op,'VariableNames',{'gre','gpa','to','ur','op'}); 
fit = fitlm(tb1,'op ~ gre*to + gre*ur + gre*gpa + to*ur + to*gpa + ur*gpa'); 
% Testing data 
gre = data(301:400,2); 
to = data(301:400,3); 
ur = data(301:400,4); 
gpa = data(301:400,7); 
sop = data(301:400,5); 
lor = data(301:400,6); 
research = data(301:400,8); 
op = data(301:400,9); 
tb2 = table(gre,gpa,to,ur,op,'VariableNames',{'gre','gpa','to','ur','op'}); 
YHat = predict(fit,tb2); 
plot(gre,op,'x',gre,YHat,'o'); 
legend('Admit Actual','Admit Predicted'); 
xlabel('Gre Score'); 
ylabel('Chance of getting Admit'); 
title('Actual Chance of Admit vs Predicted Chance of Admit based on gre score'); 
figure 
plot(gpa,op,'x',gpa,YHat,'o'); 
legend('Admit Actual','Admit Predicted'); 
xlabel('Gpa Score'); 
ylabel('Chance of getting Admit'); 
title('Actual Chance of Admit vs Predicted Chance of Admit based on gpa'); 
figure 
plot(to,op,'x',to,YHat,'o'); 
legend('Admit Actual','Admit Predicted'); 
xlabel('TOEFL Score'); 
ylabel('Chance of getting Admit'); 
title('Actual Chance of Admit vs Predicted Chance of Admit based on toefl score'); 
% ChiTest 
x = 0:0.5:100; 
py = chi2pdf(x,4);
