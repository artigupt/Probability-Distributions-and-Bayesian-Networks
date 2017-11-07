
UBitName = 'artigupt';

personNumber = '50170010';

X = xlsread('university_data.xlsx');

a = xlsread('university_data.xlsx', 'C2:C50');
b = xlsread('university_data.xlsx', 'D2:D50');
c = xlsread('university_data.xlsx', 'E2:E50');
d = xlsread('university_data.xlsx', 'F2:F50');

mu1= mean(a);

mu2= mean(b);

mu3= mean(c);

mu4= mean(d);

var1 = var(a);

var2 = var(b);

var3 = var(c);

var4 = var(d);

sigma1 = std(a);

sigma2 = std(b);

sigma3 = std(c);

sigma4 = std(d);

X = [a b c d];

covarianceMat = cov(X);

correlationMat = corrcoef(X);

scatter(a,b);

scatter(a,c);

scatter(a,d);

scatter(b,c);

scatter(b,d);

scatter(c,d);

loglike1 = sum(log(normpdf(a,mu1,sigma1)));

loglike2 = sum(log(normpdf(b,mu2,sigma2)));

loglike3 = sum(log(normpdf(c,mu3,sigma3)));

loglike4 = sum(log(normpdf(d,mu4,sigma4)));

logLikelihood = loglike1 + loglike2 + loglike3 + loglike4;

BNgraph = [ 0 1 1 0; 0 0 1 1; 0 0 0 1; 0 0 0 0];

BNlogLikelihood = -49.8695;

save('proj1.mat', 'UBitName', 'personNumber', 'mu1', 'mu2', 'mu3', 'mu4', 'var1', 'var2', 'var3', 'var4', 'sigma1', 'sigma2', 'sigma3', 'sigma4', 'covarianceMat', 'correlationMat', 'logLikelihood', 'BNgraph','BNlogLikelihood');
 
