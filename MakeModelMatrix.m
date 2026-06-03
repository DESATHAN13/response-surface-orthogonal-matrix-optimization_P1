function D = MakeModelMatrix(X,model)
  [n,m]=size(X);
  if strcmpi(model,'LINEAR') 
     D=X;  
  elseif strcmpi(model,'INTERACTIONS')
  %Main and all 2-factor interaction effects
    D=X;
    k=m;
    Z=zeros(n,m*(m-1)/2);
    D=[D,Z];
    for i=1:m-1
      for j=i+1:m
          k=k+1;
          D(:,k)=X(:,i).*X(:,j);
      end;
    end;

  elseif strcmpi(model,'LINQUAD')
  %Main and Quadratic effects
       D=[X, X.*X];  

  else %strcmpi(model,'FULLQUAD')
      
  %full model i.e. main quadratic and all 2-factor interactions
    D=[X, X.*X];
    k=2*m;
    Z=zeros(n,m*(m-1)/2);
    D=[D,Z];
    for i=1:m-1
      for j=i+1:m
          k=k+1;
          D(:,k)=X(:,i).*X(:,j);
      end;
    end;
  end;
 D=[ones(n,1),D];
end
