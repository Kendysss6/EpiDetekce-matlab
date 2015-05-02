fname = 'data.txt';
fid = fopen(fname);
raw = fread(fid,inf);
str = char(raw');
fclose(fid);

data = JSON.parse(str);

X  = cell2mat(data{1,1});
Y  = cell2mat(data{1,2});
Z  = cell2mat(data{1,3});
time = cell2mat(data{1,4});

difTime = time - time(1);

plot(difTime, X);