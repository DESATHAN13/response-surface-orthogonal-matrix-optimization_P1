function [ Qstar, delta, A, Abar, Xm ] = Rotatability_Draper_Pukelsheim( X1 )
% Calculate the Q* criterion of rotatability and delta as in
% DraperPukelsheim1990_Another_look_at_rotatability_Technometrics_32_195-202

[N,k]=size(X1);
 %maxlevel=1; 
 maxlevel=max(X1(:,k));
 %sqrtk=sqrt(k);
 sqrtk=1;
 scale=max(maxlevel,sqrtk);
 X=X1/scale; 
 [V0, V2, V4] = Vmatrices_Draper_Pukelsheim(k);

 Xm=[ones(N,1),X,zeros(N,k^2)];
 t=k+1;
 for i=1:k
    for j=1:k
       t=t+1;
       Xm(:,t)=X(:,i).*X(:,j); 
    end
 end
 A=Xm'*Xm/N;
 Abar=V0+V2*trace(A*V2)+V4*trace(A*V4);
 Qstar=trace((Abar-V0)'*(Abar-V0))/trace((A-V0)'*(A-V0));
 delta=(trace((A-Abar)'*(A-Abar)))^(0.5);
end
