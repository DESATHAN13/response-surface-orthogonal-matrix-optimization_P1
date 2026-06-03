
%OD(2;1,1)
X2=@(a1,a2)[a1,a2;-a2,a1];

X6a=@(a,b)[a,b,-a,a,0,a;-a,a,b,a,a,0;b,-a,a,0,a,a;-a,-a,0,a,-a,b;0,-a,-a,b,a,-a;-a,0,-a,-a,b,a];
%OD(6;2,2)
X6b=@(a,b)[a,0,b,-a,0,b;b,a,0,b,-a,0;0,b,a,0,b,-a;a,-b,0,a,b,0;0,a,-b,0,a,b;-b,0,a,b,0,a];
%OD(6;1,1)
X6c=@(a,b)[a,0,0,b,0,0;0,a,0,0,b,0;0,0,a,0,0,b;-b,0,0,a,0,0;0,-b,0,0,a,0;0,0,-b,0,0,a];
%OD(4;1,1,1,1)
X4=@(a1,a2,a3,a4)[a1,a2,a3,a4;-a2,a1,-a4,a3;-a3,a4,a1,-a2;-a4,-a3,a2,a1];
%OD(8;1,1,1,1,1,1,1,1) 
X8=@(a1,a2,a3,a4,a5,a6,a7,a8)[a1,a2,a4,a3,a6,a5,a8,a7;-a2,a1,a3,-a4,a5,-a6,a7,-a8;-a4,-a3,a1,a2,-a8,a7,a6,-a5;-a3,a4,-a2,a1,a7,a8,-a5,-a6;-a6,-a5,a8,-a7,a1,a2,-a4,a3;-a5,a6,-a7,-a8,-a2,a1,a3,a4;-a8,-a7,-a6,a5,a4,-a3,a1,a2;-a7,a8,a5,a6,-a3,-a4,-a2,a1];
%OD(12;1,5,5,1) a1,a4
X12a=@(a1,a2,a3,a4)[a4,a2,-a2,-a3,a3,a1,a3,a3,a2,a2,a2,-a3;-a2,a4,a2,a3,a1,-a3,a3,a2,a3,a2,-a3,a2;a2,-a2,a4,a1,-a3,a3,a2,a3,a3,-a3,a2,a2;a3,-a3,-a1,a4,a2,-a2,-a2,-a2,a3,a3,a3,a2;-a3,-a1,a3,-a2,a4,a2,-a2,a3,-a2,a3,a2,a3;-a1,a3,-a3,a2,-a2,a4,a3,-a2,-a2,a2,a3,a3;-a3,-a3,-a2,a2,a2,-a3,a4,a2,-a2,-a3,a3,-a1;-a3,-a2,-a3,a2,-a3,a2,-a2,a4,a2,a3,-a1,-a3;-a2,-a3,-a3,-a3,a2,a2,a2,-a2,a4,-a1,-a3,a3;-a2,-a2,a3,-a3,-a3,-a2,a3,-a3,a1,a4,a2,-a2;-a2,a3,-a2,-a3,-a2,-a3,-a3,a1,a3,-a2,a4,a2;a3,-a2,-a2,-a2,-a3,-a3,a1,a3,-a3,a2,-a2,a4];
%OD(12;1,2,8,1) a1,a4
X12b=@(a1,a2,a3,a4)[a4,a3,-a3,-a3,a3,a1,a3,a3,a2,a3,a3,-a2;-a3,a4,a3,a3,a1,-a3,a3,a2,a3,a3,-a2,a3;a3,-a3,a4,a1,-a3,a3,a2,a3,a3,-a2,a3,a3;a3,-a3,-a1,a4,a3,-a3,-a3,-a3,a2,a3,a3,a2;-a3,-a1,a3,-a3,a4,a3,-a3,a2,-a3,a3,a2,a3;-a1,a3,-a3,a3,-a3,a4,a2,-a3,-a3,a2,a3,a3;-a3,-a3,-a2,a3,a3,-a2,a4,a3,-a3,-a3,a3,-a1;-a3,-a2,-a3,a3,-a2,a3,-a3,a4,a3,a3,-a1,-a3;-a2,-a3,-a3,-a2,a3,a3,a3,-a3,a4,-a1,-a3,a3;-a3,-a3,a2,-a3,-a3,-a2,a3,-a3,a1,a4,a3,-a3;-a3,a2,-a3,-a3,-a2,-a3,-a3,a1,a3,-a3,a4,a3;a2,-a3,-a3,-a2,-a3,-a3,a1,a3,-a3,a3,-a3,a4];
%OD(12;9,1,1,1)
X12c=@(a1,a2,a3,a4)[a4,a1,-a1,-a1,a1,a2,-a1,a1,a3,a1,a1,a1;-a1,a4,a1,a1,a2,-a1,a1,a3,-a1,a1,a1,a1;a1,-a1,a4,a2,-a1,a1,a3,-a1,a1,a1,a1,a1;a1,-a1,-a2,a4,a1,-a1,-a1,-a1,-a1,a1,-a1,a3;-a1,-a2,a1,-a1,a4,a1,-a1,-a1,-a1,-a1,a3,a1;-a2,a1,-a1,a1,-a1,a4,-a1,-a1,-a1,a3,a1,-a1;a1,-a1,-a3,a1,a1,a1,a4,a1,-a1,-a1,a1,-a2;-a1,-a3,a1,a1,a1,a1,-a1,a4,a1,a1,-a2,-a1;-a3,a1,-a1,a1,a1,a1,a1,-a1,a4,-a2,-a1,a1;-a1,-a1,-a1,-a1,a1,-a3,a1,-a1,a2,a4,a1,-a1;-a1,-a1,-a1,a1,-a3,-a1,-a1,a2,a1,-a1,a4,a1;-a1,-a1,-a1,-a3,-a1,a1,a2,a1,-a1,a1,-a1,a4];
%OD(16;1,3,1,3,1,3,1,3)
X16=@(a,b,c,d,e,f,g,h)[a,b,b,b,-c,d,d,d,-e,f,f,f,-g,h,h,h;-b,a,-b,b,d,d,-d,c,f,f,-f,e,h,h,-h,g;-b,b,a,-b,d,-d,c,d,f,-f,e,f,h,-h,g,h;-b,-b,b,a,d,c,d,-d,f,e,f,-f,h,g,h,-h;c,-d,-d,-d,a,b,b,b,-g,-h,-h,-h,e,f,f,f;-d,-d,d,-c,-b,a,-b,b,-h,-h,h,g,f,f,-f,-e;-d,d,-c,-d,-b,b,a,-b,-h,h,g,-h,f,-f,-e,f;-d,-c,-d,d,-b,-b,b,a,-h,g,-h,h,f,-e,f,-f;e,-f,-f,-f,g,h,h,h,a,b,b,b,-c,-d,-d,-d;-f,-f,f,-e,h,h,-h,-g,-b,a,-b,b,-d,-d,d,c;-f,f,-e,-f,h,-h,-g,h,-b,b,a,-b,-d,d,c,-d;-f,-e,-f,f,h,-g,h,-h,-b,-b,b,a,-d,c,-d,d;g,-h,-h,-h,-e,-f,-f,-f,c,d,d,d,a,b,b,b;-h,-h,h,-g,-f,-f,f,e,d,d,-d,-c,-b,a,-b,b;-h,h,-g,-h,-f,f,e,-f,d,-d,-c,d,-b,b,a,-b;-h,-g,-h,h,-f,e,-f,f,d,-c,d,-d,-b,-b,b,a];
%OD(20;1,1,9,9)
X20=@(a,b,c,d)[a,c,d,-d,-c,-d,c,-c,d,b,c,c,c,c,-c,d,d,d,d,-d,;-c,a,c,d,-d,c,-c,d,b,-d,c,c,c,-c,c,d,d,d,-d,d,;-d,-c,a,c,d,-c,d,b,-d,c,c,c,-c,c,c,d,d,-d,d,d,;d,-d,-c,a,c,d,b,-d,c,-c,c,-c,c,c,c,d,-d,d,d,d,;c,d,-d,-c,a,b,-d,c,-c,d,-c,c,c,c,c,-d,d,d,d,d,;d,-c,c,-d,-b,a,c,d,-d,-c,-d,-d,-d,-d,d,c,c,c,c,-c,;-c,c,-d,-b,d,-c,a,c,d,-d,-d,-d,-d,d,-d,c,c,c,-c,c,;c,-d,-b,d,-c,-d,-c,a,c,d,-d,-d,d,-d,-d,c,c,-c,c,c,;-d,-b,d,-c,c,d,-d,-c,a,c,-d,d,-d,-d,-d,c,-c,c,c,c,;-b,d,-c,c,-d,c,d,-d,-c,a,d,-d,-d,-d,-d,-c,c,c,c,c,;-c,-c,-c,-c,c,d,d,d,d,-d,a,c,d,-d,-c,-d,c,-c,d,-b,;-c,-c,-c,c,-c,d,d,d,-d,d,-c,a,c,d,-d,c,-c,d,-b,-d,;-c,-c,c,-c,-c,d,d,-d,d,d,-d,-c,a,c,d,-c,d,-b,-d,c,;-c,c,-c,-c,-c,d,-d,d,d,d,d,-d,-c,a,c,d,-b,-d,c,-c,;c,-c,-c,-c,-c,-d,d,d,d,d,c,d,-d,-c,a,-b,-d,c,-c,d,;-d,-d,-d,-d,d,-c,-c,-c,-c,c,d,-c,c,-d,b,a,c,d,-d,-c,;-d,-d,-d,d,-d,-c,-c,-c,c,-c,-c,c,-d,b,d,-c,a,c,d,-d,;-d,-d,d,-d,-d,-c,-c,c,-c,-c,c,-d,b,d,-c,-d,-c,a,c,d,;-d,d,-d,-d,-d,-c,c,-c,-c,-c,-d,b,d,-c,c,d,-d,-c,a,c,;d,-d,-d,-d,-d,c,-c,-c,-c,-c,b,d,-c,c,-d,c,d,-d,-c,a];


n=18;% number of total runs
m=4;
s=4;
nc=0;
Qbest=-1;
Dbest1=-1;
Dbest2=-1;
critical_D=10e-500;

fnameD1=strcat('out1_',num2str(n),'_',num2str(m),'_',num2str(s),'_D3ge_Evang.txt');
fileID = fopen(fnameD1,'wt');
fclose(fileID);
fnameD2=strcat('out1_',num2str(n),'_',num2str(m),'_',num2str(s),'_D3ge_Nguyen.txt');
fileID = fopen(fnameD2,'wt');
fclose(fileID);
fnameQ=strcat('out1_',num2str(n),'_',num2str(m),'_',num2str(s),'_Q3ge.txt');
fileID = fopen(fnameQ,'wt');
fclose(fileID);


Xf=hadamard(8);
rr=2:m+1;
Xf=Xf(:,rr);

x1=[0,1];
x2=[0,1];
x3=[1,0];
x4=[0,1];
x5=[0,1];
x6=[0,1];
x7=[1];
x8=[1];
xa=[0,1]

for j1=1:length(x1)
for j2=1:length(x2)
for j3=1:length(x3)
for j4=1:length(x4)
for j5=1:length(x5)
for j6=1:length(x6)
for j7=1:length(x7)
for j8=1:length(x8)
for ja=1:length(xa)
    
    %sss=sum(xx);


    XT3=[X2(x1(j1),x2(j2)),zeros(2,1);zeros(1,2),xa(ja)]; %T3=T2+T1
    XT4=[X4(x1(j1),x2(j2),x3(j3),x4(j4))]
     XT5a=[X4(x1(j1),x2(j2),x3(j3),x4(j4)),zeros(4,1);zeros(1,4),xa(ja)]; %T5=T4+T1
   XT5b=[XT3,zeros(3,2);zeros(2,3),X2(x5(j5),x6(j6))]; %T5=T2+T2+a

    XT6a=[X6a(x1(j1),x2(j2))]; %ODX6a
   XT6b=[X6b(x1(j1),x2(j2))]; %ODX6b
   XT6c=[X6c(x1(j1),x2(j2))]; %ODX6c
%XT6e=[XT3,zeros(3,3);zeros(3,3),XT3]

   % XT6d=[X4(x1(j1),x2(j2),x3(j3),x4(j4)),zeros(4,2);zeros(2,4),X2(x5(j5),x6(j6))] %ODX6d= T4+T2
%XT8a=[X8(x1(j1),x2(j2),x3(j3),x4(j4),x5(j5),x6(j6),x7(j7),x8(j8))]; %%ODX8
    % XT8b= [XT6c,zeros(6,2);zeros(2,6),X2(x9(j9),x10(j10))] % XT6d+T2


    XT=XT5a; % pick the values, XT6a XT6b XT6c XT6d
    
    XA=XT(:,1:m);
   j1to6= [j1,j2,j3,j4,j5,j6,ja]
    Done1 = Construction3g( Xf, XA, nc, s, fnameD1, fnameQ, Qbest, Dbest1,1, critical_D)

    % Xf: matrix with  all the factorialpoints that will be used, 
    % XA : matrix withe Axial points(possible more collumns than needed) 
    % nc: number of center points
    % s: number of collumns that will be selected from factorial and axial
    % part
    %
    Done2 = Construction3g( Xf, XA, nc, s, fnameD2, fnameQ, Qbest, Dbest2,2, critical_D)
    %
    Done1
    Done2
 %MyX= [Xf;XA;-XA];
   % [k,l]=size(MyX)       
end;
end;
end;
end;
end;
end;
end;
end;
end;


%XF=[-1 -1 -1 -1;-1 -1 -1 1;-1 1 1 -1;-1 1 1 1;1 -1 1 -1;1 -1 1 1;1 1 -1 -1;1 1 -1 1];
%a=2.4;
%XA=a*eye(s);
%Done = Construction3( XF, XA, nc, s, fnameD, fnameQ, Qbest, Dbest )
%[ Dvalue, Deff ] = Make_CCD_AND_FIND_D_Criterions_FROM_FACTORIAL_PART( XF, a );
