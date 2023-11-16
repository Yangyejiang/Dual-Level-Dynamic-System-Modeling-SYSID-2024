function OutputSet=computelayerOutput(X_l,X_u,W,bias,activeFcn)
[R,~]=size(X_l);
N=size(W,1);
Bias=repmat(bias,1);
P_min=X_l;
P_max=X_u;
H_l = zeros(N,1);
H_u = zeros(N,1);
i=1;
    for j = 1:N
        for k = 1:R
            if W(j,k) > 0
              H_l(j,i) = W(j,k)*(P_min(k,i))+H_l(j,i);
              H_u(j,i) = W(j,k)*(P_max(k,i))+H_u(j,i);
            else
              H_l(j,i)=(W(j,k)*P_max(k,i))+H_l(j,i);
              H_u(j,i)=(W(j,k)*P_min(k,i))+H_u(j,i);  
            end
        end
    end
% Activiation function
if activeFcn(1)=='R'
    H_l=max(H_l+Bias,0);
    H_u=max(H_u+Bias,0);
else
    H_l=activation(H_l+Bias,activeFcn);
    H_u=activation(H_u+Bias,activeFcn);
end
Y_l = H_l;
Y_u = H_u;
OutputSet=[Y_l,Y_u];
end