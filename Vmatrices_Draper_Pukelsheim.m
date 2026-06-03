function [ V0, V2, V4 ] = Vmatrices_Draper_Pukelsheim( k )
% For a given number k of variables, creates matrices V0, V2 and V4
% of the paper
% DraperPukelsheim1990_Another_look_at_rotatability_Technometrics_32_195-202
%  

N=1+k+k^2;
T=zeros(N);

V0=T;
V0(1,1)=1;

V2=T;
temp=(3*k)^(-0.5);
for i=1:k
   V2(i+1,i+1)=temp;
   V2(1,(k+1)*i+1)=temp;
   V2((k+1)*i+1,1)=temp;
end

V4=T;

temp2=(3*k*(k+2))^(-0.5);
temp1=3*temp2; 
for i=1:k
   V4(i*k+1+i,i*k+1+i)=temp1;
   for j=1:k
     if i~=j 
        V4(i*k+1+i,j*k+1+j)=temp2; 
        V4(i*k+1+j,i*k+1+j)=temp2;  
        V4(i*k+j+1,j*k+i+1)=temp2;  
     end
   end;
end
V2;
end
