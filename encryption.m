%% encription software
%% it will encript a text message in a code that can only be open with the help of key and logic

clc;close all; clear;

%% data input
fprintf('data input');
prompt='\nenter your sentence:';
str=input(prompt,'s');

%% operation 
z=double(str);  %converts the string into ASCII values.
len= length(z);
fprintf('length : %f\n', len);

if (mod(len,3)==1)         %condition to add a column if nessary
    c=[z 32 32];
elseif (mod(len,3)==2)
    c=[z 32];
elseif (mod(len,3)==0)
    c=[z];
end


d=length(c)/3;
fprintf('number of rows :%0.1f\nnumber of columns :%0.1f\n',d,3);
e= reshape(c,d,3);  % reshapping into a matrix with 3 columns. 

fprintf('Program paused. Press enter to continue.\n');
pause;

fprintf('source matrix:\n');
disp(e);

fprintf('Program paused. Press enter to continue.\n');
pause;

fprintf('\nRandom Key:\n');
k=rand(3);
disp(k);
fprintf('Program paused. Press enter to continue.\n');
pause;
%% encripton
fprintf('\nEnripted matrix:\n');
f=e*k;
disp(f);
fprintf('Program paused. Press enter to continue.\n');
pause;
%% deription

fprintf('\ndecription:\n');
dec=f*inv(k);
dec=round(dec);
disp(dec);

fprintf('Program paused. Press enter to continue.\n');
pause;

z=reshape(dec,1,length(c)); 

fprintf('\noriginal message:\n');
o=char(z);
disp(o);

fprintf('Program completed. Press enter to continue.\n');
pause;
