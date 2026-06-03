function ok = WriteDesignToFile(fname,D,Qstar,D_value)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
fileID = fopen(fname,'a+');
[n,m]=size(D);
for i=1:n
    for j=1:m
      fprintf(fileID,'%5.2f %s',D(i,j),' ');    
    end;
    fprintf(fileID,'\n');
end;
fprintf(fileID,'\n ');
fprintf(fileID,'%15s%20.2f\n','D-value=',D_value);
fprintf(fileID,'%15s%20g\n','D-value=',D_value);
fprintf(fileID,'%15s%20.8f\n','Qstar=', Qstar);
fprintf(fileID,'%s\n','===================================');

fclose(fileID);
ok=1;
end
