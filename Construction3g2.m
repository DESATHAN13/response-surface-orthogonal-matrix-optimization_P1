function Done = Construction3g2( Xf, XA, nc, s, fnameD, fnameQ, Qbest, Dbest, which_Dvalue, critical_D )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
% Xf: matrix with  all the factorialpoints that will be used, 
    % XA : matrix withe Axial points(possible more collumns than needed) 
    % nc: number of center points
    % s: number of collumns that will be selected from factorial and axial
    % part
    X=XA;
[n,m]=size(X);
ok=0;
%for s=1:m
   
   C=zeros(nc,s);
   
   switch s
    case 1
      for i1=1:m
         T=X(:,i1);
         D=[Xf;T;C;-T];
         Xm=MakeModelMatrix(D,'full'); % change to fullquad
         [nn,p]=size(Xm);
         D_value2=((10^3)*abs(det(Xm'*Xm))^(1/p))/nn;%Nguyen
         D_value1=((10^3)*abs(det(Xm'*Xm))^(1/p))/nn;%Nguyen
         [ Qstar, AA,AAA,AAAA,AAAAA] = Rotatability_Draper_Pukelsheim( D );
         if which_Dvalue==1
             D_value=D_value1;
         else 
             D_value=D_value2;
         end;    
         [ Qstar, AA,AAA,AAAA,AAAAA] = Rotatability_Draper_Pukelsheim( D );
         if (((Qstar>Qbest)|(D_value>Dbest))&(D_value>critical_D))
           if (Qstar>Qbest)
             Qbest=Qstar
             ok=WriteDesignToFile(fnameQ,D,Qstar,D_value);
           end;
           if (D_value>Dbest)
             Dbest=D_value
             ok=WriteDesignToFile(fnameD,D,Qstar,D_value); 
           end; 
         end
      end;
    case 2
      for i1=1:m-1
      for i2=i1+1:m    
         T=X(:,[i1,i2]);
         D=[Xf;T;C;-T];
         Xm=MakeModelMatrix(D,'full');
         [nn,p]=size(Xm);
         D_value2=((10^3)*abs(det(Xm'*Xm))^(1/p))/nn;%Nguyen
         D_value1=((10^3)*abs(det(Xm'*Xm))^(1/p))/nn;%Nguyen
         if which_Dvalue==1
             D_value=D_value1;
         else 
             D_value=D_value2;
         end;    
         [ Qstar, AA,AAA,AAAA,AAAAA] = Rotatability_Draper_Pukelsheim( D );
         if (((Qstar>Qbest)|(D_value>Dbest))&(D_value>critical_D))
           if (Qstar>Qbest)
             Qbest=Qstar
             ok=WriteDesignToFile(fnameQ,D,Qstar,D_value);
           end;
           if (D_value>Dbest)
             Dbest=D_value
             ok=WriteDesignToFile(fnameD,D,Qstar,D_value); 
           end; 
         end
      end;
      end;

    case 3
      for i1=1:m-2
      for i2=i1+1:m-1    
      for i3=i2+1:m    
         T=X(:,[i1,i2,i3]);
         D=[Xf;T;C;-T];
         Xm=MakeModelMatrix(D,'full');
         [nn,p]=size(Xm);
         D_value2=((10^3)*abs(det(Xm'*Xm))^(1/p))/nn;%Nguyen
         D_value1=((10^3)*abs(det(Xm'*Xm))^(1/p))/nn;%Nguyen
         if which_Dvalue==1
             D_value=D_value1;
         else 
             D_value=D_value2;
         end;    
         [ Qstar, AA,AAA,AAAA,AAAAA] = Rotatability_Draper_Pukelsheim( D );
         if (((Qstar>Qbest)|(D_value>Dbest))&(D_value>critical_D))
           if (Qstar>Qbest)
             Qbest=Qstar
             ok=WriteDesignToFile(fnameQ,D,Qstar,D_value);
           end;
           if (D_value>Dbest)
             Dbest=D_value
             ok=WriteDesignToFile(fnameD,D,Qstar,D_value); 
           end; 
         end
      end;
      end;
      end;

    case 4
      for i1=1:m-3
      for i2=i1+1:m-2    
      for i3=i2+1:m-1    
      for i4=i3+1:m    
         T=X(:,[i1,i2,i3,i4]);
         D=[Xf;T;C;-T];
         Xm=MakeModelMatrix(D,'full');
         [nn,p]=size(Xm);
         D_value2=((10^3)*abs(det(Xm'*Xm))^(1/p))/nn;%Nguyen
         D_value1=((10^3)*abs(det(Xm'*Xm))^(1/p))/nn;%Nguyen
         [ Qstar, AA,AAA,AAAA,AAAAA] = Rotatability_Draper_Pukelsheim( D );
         if which_Dvalue==1
             D_value=D_value1;
         else 
             D_value=D_value2;
         end;    
         
         if (((Qstar>Qbest)|(D_value>Dbest))&(D_value>critical_D))
           if (Qstar>Qbest)
             Qbest=Qstar
             ok=WriteDesignToFile(fnameQ,D,Qstar,D_value);
           end;
           if (D_value>Dbest)
             Dbest=D_value
             ok=WriteDesignToFile(fnameD,D,Qstar,D_value); 
           end; 
         end
      end;
      end;
      end;
      end;
        
    case 5
      for i1=1:m-4
      for i2=i1+1:m-3    
      for i3=i2+1:m-2    
      for i4=i3+1:m-1    
      for i5=i4+1:m    
         T=X(:,[i1,i2,i3,i4,i5]);
         D=[Xf;T;C;-T];
         Xm=MakeModelMatrix(D,'full');
         [nn,p]=size(Xm);
         D_value2=((10^3)*abs(det(Xm'*Xm))^(1/p))/nn;%Nguyen
         D_value1=((10^3)*abs(det(Xm'*Xm))^(1/p))/nn;%Nguyen
         if which_Dvalue==1
             D_value=D_value1;
         else 
             D_value=D_value2;
         end;    
         [ Qstar, AA,AAA,AAAA,AAAAA] = Rotatability_Draper_Pukelsheim( D );
         if (((Qstar>Qbest)|(D_value>Dbest))&(D_value>critical_D))
           if (Qstar>Qbest)
             Qbest=Qstar
             ok=WriteDesignToFile(fnameQ,D,Qstar,D_value);
           end;
           if (D_value>Dbest)
             Dbest=D_value
             ok=WriteDesignToFile(fnameD,D,Qstar,D_value); 
           end; 
         end
      end;
      end;
      end;
      end;
      end;
        
    case 6
      for i1=1:m-5
      for i2=i1+1:m-4    
      for i3=i2+1:m-3    
      for i4=i3+1:m-2    
      for i5=i4+1:m-1    
      for i6=i5+1:m    
         T=X(:,[i1,i2,i3,i4,i5,i6]);
         D=[Xf;T;C;-T];
         Xm=MakeModelMatrix(D,'full');
         [nn,p]=size(Xm);
         D_value2=((10^3)*abs(det(Xm'*Xm))^(1/p))/nn;%Nguyen
         D_value1=((10^3)*abs(det(Xm'*Xm))^(1/p))/nn;%Nguyen
         if which_Dvalue==1
             D_value=D_value1;
         else 
             D_value=D_value2;
         end;    
         [ Qstar, AA,AAA,AAAA,AAAAA] = Rotatability_Draper_Pukelsheim( D );
         if (((Qstar>Qbest)|(D_value>Dbest))&(D_value>critical_D))
           if (Qstar>Qbest)
             Qbest=Qstar
             ok=WriteDesignToFile(fnameQ,D,Qstar,D_value);
           end;
           if (D_value>Dbest)
             Dbest=D_value
             ok=WriteDesignToFile(fnameD,D,Qstar,D_value); 
           end; 
         end
      end;
      end;
      end;
      end
      end;
      end;
        
    case 7
      for i1=1:m-6
      for i2=i1+1:m-5    
      for i3=i2+1:m-4    
      for i4=i3+1:m-3    
      for i5=i4+1:m-2    
      for i6=i5+1:m-1    
      for i7=i6+1:m    
         T=X(:,[i1,i2,i3,i4,i5,i6,i7]);
         D=[Xf;T;C;-T];
         Xm=MakeModelMatrix(D,'full');
         [nn,p]=size(Xm);
         D_value2=((10^3)*abs(abs(det(Xm'*Xm)))^(1/p))/nn;%Nguyen
         D_value1=((10^3)*abs(abs(det(Xm'*Xm)))^(1/p))/nn;%Nguyen
         if which_Dvalue==1
             D_value=D_value1;
         else 
             D_value=D_value2;
         end;    
         [ Qstar, AA,AAA,AAAA,AAAAA] = Rotatability_Draper_Pukelsheim( D );
         if (((Qstar>Qbest)|(D_value>Dbest))&(D_value>critical_D))
           if (Qstar>Qbest)
             Qbest=Qstar
             ok=WriteDesignToFile(fnameQ,D,Qstar,D_value);
           end;
           if (D_value>Dbest)
             Dbest=D_value
             ok=WriteDesignToFile(fnameD,D,Qstar,D_value); 
           end; 
         end
      end;
      end;
      end;
      end
      end;
      end;
      end;
        
    case 8
      for i1=1:m-7
      for i2=i1+1:m-6    
      for i3=i2+1:m-5    
      for i4=i3+1:m-4    
      for i5=i4+1:m-3    
      for i6=i5+1:m-2    
      for i7=i6+1:m-1    
      for i8=i7+1:m    
         T=X(:,[i1,i2,i3,i4,i5,i6,i7,i8]);
         D=[Xf;T;C;-T];
         Xm=MakeModelMatrix(D,'full');
         [nn,p]=size(Xm);
         D_value2=((10^3)*abs(abs(det(Xm'*Xm)))^(1/p))/nn;%Nguyen
         D_value1=((10^3)*abs(abs(det(Xm'*Xm)))^(1/p))/nn;%Nguyen
         if which_Dvalue==1
             D_value=D_value1;
         else 
             D_value=D_value2;
         end;    
         [ Qstar, AA,AAA,AAAA,AAAAA] = Rotatability_Draper_Pukelsheim( D );
         if (((Qstar>Qbest)|(D_value>Dbest))&(D_value>critical_D))
           if (Qstar>Qbest)
             Qbest=Qstar;
             ok=WriteDesignToFile(fnameQ,D,Qstar,D_value);
           end;
           if (D_value>Dbest)
             Dbest=D_value;
             ok=WriteDesignToFile(fnameD,D,Qstar,D_value); 
           end; 
         end
      end;
      end;
      end;
      end;
      end
      end;
      end;
      end;
        
    case 9
      for i1=1:m-8
      for i2=i1+1:m-7    
      for i3=i2+1:m-6    
      for i4=i3+1:m-5    
      for i5=i4+1:m-4    
      for i6=i5+1:m-3    
      for i7=i6+1:m-2    
      for i8=i7+1:m-1    
      for i9=i8+1:m    
         T=X(:,[i1,i2,i3,i4,i5,i6,i7,i8,i9]);
         D=[Xf;T;C;-T];
         Xm=MakeModelMatrix(D,'full');
         [nn,p]=size(Xm);
         D_value2=((10^3)*abs(abs(det(Xm'*Xm)))^(1/p))/nn;%Nguyen
         D_value1=((10^3)*abs(abs(det(Xm'*Xm)))^(1/p))/nn;%Nguyen
         if which_Dvalue==1
             D_value=D_value1;
         else 
             D_value=D_value2;
         end;    
         [ Qstar, AA,AAA,AAAA,AAAAA] = Rotatability_Draper_Pukelsheim( D );
         if (((Qstar>Qbest)|(D_value>Dbest))&(D_value>critical_D))
           if (Qstar>Qbest)
             Qbest=Qstar;
             ok=WriteDesignToFile(fnameQ,D,Qstar,D_value);
           end;
           if (D_value>Dbest)
             Dbest=D_value;
             ok=WriteDesignToFile(fnameD,D,Qstar,D_value); 
           end; 
         end
      end;
      end;
      end;
      end;
      end
      end;
      end;
      end;
      end;
        
    case 10
      for i1=1:m-9
      for i2=i1+1:m-8    
      for i3=i2+1:m-7    
      for i4=i3+1:m-6    
      for i5=i4+1:m-5    
      for i6=i5+1:m-4    
      for i7=i6+1:m-3    
      for i8=i7+1:m-2    
      for i9=i8+1:m-1    
      for i10=i9+1:m    
         T=X(:,[i1,i2,i3,i4,i5,i6,i7,i8,i9,i10]);
         D=[Xf;T;C;-T];
         Xm=MakeModelMatrix(D,'full');
         [nn,p]=size(Xm);
         D_value2=((10^3)*abs(abs(det(Xm'*Xm)))^(1/p))/nn;%Nguyen
         D_value1=((10^3)*abs(abs(det(Xm'*Xm)))^(1/p))/nn;%Nguyen
         if which_Dvalue==1
             D_value=D_value1;
         else 
             D_value=D_value2;
         end;    
         [ Qstar, AA,AAA,AAAA,AAAAA] = Rotatability_Draper_Pukelsheim( D );
         if (((Qstar>Qbest)|(D_value>Dbest))&(D_value>critical_D))
           if (Qstar>Qbest)
             Qbest=Qstar;
             ok=WriteDesignToFile(fnameQ,D,Qstar,D_value);
           end;
           if (D_value>Dbest)
             Dbest=D_value;
             ok=WriteDesignToFile(fnameD,D,Qstar,D_value); 
           end; 
         end
      end;
      end;
      end;
      end;
      end
      end;
      end;
      end;
      end;
      end;
        
    case 11
      for i1=1:m-10
      for i2=i1+1:m-9    
      for i3=i2+1:m-8    
      for i4=i3+1:m-7    
      for i5=i4+1:m-6    
      for i6=i5+1:m-5    
      for i7=i6+1:m-4    
      for i8=i7+1:m-3    
      for i9=i8+1:m-2    
      for i10=i9+1:m-1    
      for i11=i10+1:m    
         T=X(:,[i1,i2,i3,i4,i5,i6,i7,i8,i9,i10,i11]);
         D=[Xf;T;C;-T];
         Xm=MakeModelMatrix(D,'full');
         [nn,p]=size(Xm);
         D_value2=((10^3)*abs(abs(det(Xm'*Xm)))^(1/p))/nn;%Nguyen
         D_value1=((10^3)*abs(abs(det(Xm'*Xm)))^(1/p))/nn;%Nguyen
         if which_Dvalue==1
             D_value=D_value1;
         else 
             D_value=D_value2;
         end;    
         [ Qstar, AA,AAA,AAAA,AAAAA] = Rotatability_Draper_Pukelsheim( D );
         if (((Qstar>Qbest)|(D_value>Dbest))&(D_value>critical_D))
           if (Qstar>Qbest)
             Qbest=Qstar
             ok=WriteDesignToFile(fnameQ,D,Qstar,D_value);
           end;
           if (D_value>Dbest)
             Dbest=D_value
             ok=WriteDesignToFile(fnameD,D,Qstar,D_value); 
           end; 
         end
      end;
      end;
      end;
      end;
      end;
      end
      end;
      end;
      end;
      end;
      end;
        
    case 12
      for i1=1:m-11
      for i2=i1+1:m-10    
      for i3=i2+1:m-9    
      for i4=i3+1:m-8    
      for i5=i4+1:m-7    
      for i6=i5+1:m-6    
      for i7=i6+1:m-5    
      for i8=i7+1:m-4    
      for i9=i8+1:m-3    
      for i10=i9+1:m-2    
      for i11=i10+1:m-1    
      for i12=i11+1:m    
         T=X(:,[i1,i2,i3,i4,i5,i6,i7,i8,i9,i10,i11,i12]);
         D=[Xf;T;C;-T];
         Xm=MakeModelMatrix(D,'full');
         [nn,p]=size(Xm);
         D_value2=((10^3)*abs(abs(det(Xm'*Xm)))^(1/p))/nn;%Nguyen
         D_value1=((10^3)*abs(abs(det(Xm'*Xm)))^(1/p))/nn;%Nguyen
         if which_Dvalue==1
             D_value=D_value1;
         else 
             D_value=D_value2;
         end;    
         [ Qstar, AA,AAA,AAAA,AAAAA] = Rotatability_Draper_Pukelsheim( D );
         if (((Qstar>Qbest)|(D_value>Dbest))&(D_value>critical_D))
           if (Qstar>Qbest)
             Qbest=Qstar
             ok=WriteDesignToFile(fnameQ,D,Qstar,D_value);
           end;
           if (D_value>Dbest)
             Dbest=D_value
             ok=WriteDesignToFile(fnameD,D,Qstar,D_value); 
           end; 
         end
      end;
      end;
      end;
      end;
      end;
      end
      end;
      end;
      end;
      end;
      end;
      end;
        
    case 13
      for i1=1:m-12
      for i2=i1+1:m-11    
      for i3=i2+1:m-10    
      for i4=i3+1:m-9    
      for i5=i4+1:m-8    
      for i6=i5+1:m-7    
      for i7=i6+1:m-6    
      for i8=i7+1:m-5    
      for i9=i8+1:m-4    
      for i10=i9+1:m-3    
      for i11=i10+1:m-2    
      for i12=i11+1:m-1    
      for i13=i12+1:m    
         T=X(:,[i1,i2,i3,i4,i5,i6,i7,i8,i9,i10,i11,i12,i13]);
         D=[Xf;T;C;-T];
         Xm=MakeModelMatrix(D,'full');
         [nn,p]=size(Xm);
         D_value2=((10^3)*abs(abs(det(Xm'*Xm)))^(1/p))/nn;%Nguyen
         D_value1=((10^3)*abs(abs(det(Xm'*Xm)))^(1/p))/nn;%Nguyen
         if which_Dvalue==1
             D_value=D_value1;
         else 
             D_value=D_value2;
         end;    
         [ Qstar, AA,AAA,AAAA,AAAAA] = Rotatability_Draper_Pukelsheim( D );
         if (((Qstar>Qbest)|(D_value>Dbest))&(D_value>critical_D))
           if (Qstar>Qbest)
             Qbest=Qstar
             ok=WriteDesignToFile(fnameQ,D,Qstar,D_value);
           end;
           if (D_value>Dbest)
             Dbest=D_value
             ok=WriteDesignToFile(fnameD,D,Qstar,D_value); 
           end; 
         end
      end;
      end;
      end;
      end;
      end;
      end;
      end
      end;
      end;
      end;
      end;
      end;
      end;
        
    case 14
      for i1=1:m-13
      for i2=i1+1:m-12    
      for i3=i2+1:m-11    
      for i4=i3+1:m-10    
      for i5=i4+1:m-9    
      for i6=i5+1:m-8    
      for i7=i6+1:m-7    
      for i8=i7+1:m-6    
      for i9=i8+1:m-5    
      for i10=i9+1:m-4    
      for i11=i10+1:m-3    
      for i12=i11+1:m-2    
      for i13=i12+1:m-1    
      for i14=i13+1:m    
         T=X(:,[i1,i2,i3,i4,i5,i6,i7,i8,i9,i10,i11,i12,i13,i14]);
         D=[Xf;T;C;-T];
         Xm=MakeModelMatrix(D,'full');
         [nn,p]=size(Xm);
         D_value2=((10^3)*abs(abs(det(Xm'*Xm)))^(1/p))/nn;%Nguyen
         D_value1=((10^3)*abs(abs(det(Xm'*Xm)))^(1/p))/nn;%Nguyen
         if which_Dvalue==1
             D_value=D_value1;
         else 
             D_value=D_value2;
         end;    
         [ Qstar, AA,AAA,AAAA,AAAAA] = Rotatability_Draper_Pukelsheim( D );
         if (((Qstar>Qbest)|(D_value>Dbest))&(D_value>critical_D))
           if (Qstar>Qbest)
             Qbest=Qstar
             ok=WriteDesignToFile(fnameQ,D,Qstar,D_value);
           end;
           if (D_value>Dbest)
             Dbest=D_value
             ok=WriteDesignToFile(fnameD,D,Qstar,D_value); 
           end; 
         end
      end;
      end;
      end;
      end;
      end;
      end;
      end
      end;
      end;
      end;
      end;
      end;
      end;
      end;
        
    case 15
      for i1=1:m-14
      for i2=i1+1:m-13    
      for i3=i2+1:m-12    
      for i4=i3+1:m-11    
      for i5=i4+1:m-10    
      for i6=i5+1:m-9    
      for i7=i6+1:m-8    
      for i8=i7+1:m-7    
      for i9=i8+1:m-6    
      for i10=i9+1:m-5    
      for i11=i10+1:m-4    
      for i12=i11+1:m-3    
      for i13=i12+1:m-2    
      for i14=i13+1:m-1    
      for i15=i14+1:m    
         T=X(:,[i1,i2,i3,i4,i5,i6,i7,i8,i9,i10,i11,i12,i13,i14,i15]);
         D=[Xf;T;C;-T];
         Xm=MakeModelMatrix(D,'full');
         [nn,p]=size(Xm);
         D_value2=((10^3)*abs(abs(det(Xm'*Xm)))^(1/p))/nn;%Nguyen
         D_value1=((10^3)*abs(abs(det(Xm'*Xm)))^(1/p))/nn;%Nguyen
         if which_Dvalue==1
             D_value=D_value1;
         else 
             D_value=D_value2;
         end;    
         [ Qstar, AA,AAA,AAAA,AAAAA] = Rotatability_Draper_Pukelsheim( D );
         if (((Qstar>Qbest)|(D_value>Dbest))&(D_value>critical_D))
           if (Qstar>Qbest)
             Qbest=Qstar
             ok=WriteDesignToFile(fnameQ,D,Qstar,D_value);
           end;
           if (D_value>Dbest)
             Dbest=D_value
             ok=WriteDesignToFile(fnameD,D,Qstar,D_value); 
           end; 
         end
      end;
      end;
      end;
      end;
      end;
      end;
      end
      end;
      end;
      end;
      end;
      end;
      end;
      end;
      end;
        
        
    case 16
      for i1=1:m-15
      for i2=i1+1:m-14    
      for i3=i2+1:m-13    
      for i4=i3+1:m-12    
      for i5=i4+1:m-11    
      for i6=i5+1:m-10    
      for i7=i6+1:m-9    
      for i8=i7+1:m-8    
      for i9=i8+1:m-7    
      for i10=i9+1:m-6    
      for i11=i10+1:m-5    
      for i12=i11+1:m-4    
      for i13=i12+1:m-3    
      for i14=i13+1:m-2    
      for i15=i14+1:m-1    
      for i16=i15+1:m    
         T=X(:,[i1,i2,i3,i4,i5,i6,i7,i8,i9,i10,i11,i12,i13,i14,i15,i16]);
         D=[Xf;T;C;-T];
         Xm=MakeModelMatrix(D,'full');
         [nn,p]=size(Xm);
         D_value2=((10^3)*abs(abs(det(Xm'*Xm)))^(1/p))/nn;%Nguyen
         D_value1=((10^3)*abs(abs(det(Xm'*Xm)))^(1/p))/nn;%Nguyen
         if which_Dvalue==1
             D_value=D_value1;
         else 
             D_value=D_value2;
         end;    
         [ Qstar, AA,AAA,AAAA,AAAAA] = Rotatability_Draper_Pukelsheim( D );
         if (((Qstar>Qbest)|(D_value>Dbest))&(D_value>critical_D))
           if (Qstar>Qbest)
             Qbest=Qstar
             ok=WriteDesignToFile(fnameQ,D,Qstar,D_value);
           end;
           if (D_value>Dbest)
             Dbest=D_value
             ok=WriteDesignToFile(fnameD,D,Qstar,D_value); 
           end; 
         end
      end;
      end;
      end;
      end;
      end;
      end;
      end;
      end
      end;
      end;
      end;
      end;
      end;
      end;
      end;
      end;
        
        
    %otherwise
        
   end

   Done=[Qbest,Dbest];
   if ok<1             
       
   end;
end
