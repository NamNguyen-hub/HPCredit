function [beta_mat,fcst_mat] = filter_fcn(prmtr,y,T,START,t_y_prior, t_h_prior)

    %Transform hyperparamters to impose constraints
  prmtr = trans(prmtr);
    
  theta_y1 = prmtr(1);
  theta_y2 = prmtr(2);
  theta_yh = prmtr(3);
  theta_h1 = prmtr(4);
  theta_h2 = prmtr(5);
  theta_hy = prmtr(6);
  
  sig_nyy = prmtr(7)^2; % s.e. of HP permanent component
  sig_nhh = prmtr(8)^2; % s.e. of credit permanent component
  sig_eyy = prmtr(9)^2; % s.e. of the HP AR component
  sig_ehh = prmtr(10)^2; % s.e. of the credit AR component
  sig_nynh = prmtr(11)*sqrt(sig_nyy*sig_nhh);
  sig_eyeh = prmtr(12)*sqrt(sig_eyy*sig_ehh);
  sig_wyy = prmtr(13);
  sig_whh = prmtr(14);

    F = [1,1,0,0,0,0,0,0; %Transition matrix
         0,1,0,0,0,0,0,0;
         0,0,theta_y1,theta_y2,0,0,theta_yh,0;
         0,0,1,0,0,0,0,0;
         0,0,0,0,1,1,0,0;
         0,0,0,0,0,1,0,0;
         0,0,theta_hy,0,0,0,theta_h1,theta_h2;
         0,0,0,0,0,0,1,0];

    Fstar = [theta_y1,theta_y2,theta_yh,0;
            1,0,0,0;
            theta_hy,0,theta_h1,theta_h2;
            0,0,1,0]; %Transition matrix of I(0) part];
    
    H = [1,0,1,0,0,0,0,0; %Measurement equation
        0,0,0,0,1,0,1,0];

    Q = [sig_nyy,0,0,0,sig_nynh,0,0,0; %Cov matrix
        0,sig_wyy,0,0,0,0,0,0,;
        0, 0,sig_eyy,0, 0, 0, sig_eyeh, 0;
        0,0,0,0,0,0,0,0;
        sig_nynh, 0, 0,0, sig_nhh, 0, 0,0;
        0,0,0,0,0,sig_whh,0,0;
        0, 0,sig_eyeh, 0, 0, 0, sig_ehh, 0;
        0,0,0,0,0,0,0,0];

    Qstar = [sig_eyy,0,sig_eyeh,0; %Cov matrix of I(0) part
            0,0,0,0;
            sig_eyeh, 0,sig_ehh, 0;
            0,0,0,0];

    A = [0;0];

    beta_ll = [t_y_prior,0,0,0,t_h_prior,0,0,0]'; %Starting values

    vecQstar = reshape(Qstar,[numel(Qstar),1]);
    vecP_ll = inv(eye(16) - kron(Fstar,Fstar))*vecQstar;
    
    %Var matrix of initial state vector
    P_ll = [100,0,0,0,140,0,0,0;
            0,150,0,0,0,0,0,0;
            0,0,vecP_ll(1,1),0,0,0,vecP_ll(3,1),0;
            0,0,0,0,0,0,0,0;
            140,0,0,0,200,0,0,0;
            0,0,0,0,0,160,0,0;
            0,0,vecP_ll(9,1),0,0,0,vecP_ll(11,1),0;
            0,0,0,0,0,0,0,0];
        
    beta_mat = zeros(T,8);
    fcst_mat = zeros(T,2);
    
    for j_iter = 1:T
        beta_tl  = F*beta_ll;
        P_tl  =  F*P_ll*F' + Q;

        vt = y(j_iter,1:2)' - H*beta_tl - A; %Prediction error

        ft =  H*P_tl*H'; %Variance of forecast error

        beta_tt = beta_tl + P_tl*H'*inv(ft)*vt;
        P_tt = P_tl - P_tl*H'*inv(ft)*H*P_tl;

        beta_ll = beta_tt;
        P_ll = P_tt;
        
        fcst_mat(j_iter,:) = vt';
        beta_mat(j_iter,:) = beta_tt';
    end
        
end
        