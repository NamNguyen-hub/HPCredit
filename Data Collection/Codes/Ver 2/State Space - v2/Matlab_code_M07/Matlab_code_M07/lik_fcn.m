function val = lik_fcn(prmtr,y,T,START,t_y_prior, t_h_prior)

    %Transform hyperparamters to impose constraints
  prmtr = trans(prmtr);
    
  phi_y11 = prmtr(1);
  phi_y12 = prmtr(2);
  phi_y21 = prmtr(3);
  phi_y22 = prmtr(4);
  
  phi_h11 = prmtr(5);
  phi_h12 = prmtr(6);
  phi_h21 = prmtr(7);
  phi_h22 = prmtr(8);
  
  mu_y = prmtr(9);
  mu_h = prmtr(10);
    
  sig_nyy = prmtr(11)^2; % s.e. of HP permanent component
  sig_nhh = prmtr(12)^2; % s.e. of credit permanent component
  sig_eyy = prmtr(13)^2; % s.e. of the HP AR component
  sig_ehh = prmtr(14)^2; % s.e. of the credit AR component
  sig_nynh = prmtr(15)*sqrt(sig_nyy*sig_nhh);
  sig_eyeh = prmtr(16)*sqrt(sig_eyy*sig_ehh);

  

    F = [1,0,0,0,0,0; %Transition matrix
         0,phi_y11,phi_y12,0,phi_y21,phi_y22;
         0,1,0,0,0,0;
         0,0,0,1,0,0;
         0,phi_h11,phi_h12,0,phi_h21, phi_h22;
         0,0,0,0,1,0];

    Fstar = [phi_y11,phi_y12,phi_y21,phi_y22;
            1,0,0,0;
            phi_h11,phi_h12,phi_h21, phi_h22;
            0,0,1,0]; %Transition matrix of I(0) part;
    
    muvec = [mu_y,0,0,mu_h,0,0]'; %Drift vector

    H = [1,1,0,0,0,0; %Measurement equation
        0,0,0,1,1,0];

    Q = [sig_nyy,0,0,sig_nynh,0,0; %Cov matrix
        0, sig_eyy, 0, 0, sig_eyeh, 0;
        0,0,0,0,0,0;
        sig_nynh, 0, 0, sig_nhh, 0, 0;
        0, sig_eyeh, 0, 0, sig_ehh, 0;
        0,0,0,0,0,0];

    Qstar = [sig_eyy,0,sig_eyeh,0; %Cov matrix of I(0) part
            0,0,0,0;
            sig_eyeh, 0,sig_ehh, 0;
            0,0,0,0];

    A = [0;0];

    beta_ll = [t_y_prior,0,0,t_h_prior,0,0]'; %Starting values

    vecQstar = reshape(Qstar,[numel(Qstar),1]);
    vecP_ll = inv(eye(16) - kron(Fstar,Fstar))*vecQstar;
    
    %Var matrix of initial state vector
    P_ll = [100,0,0,140,0,0;
            0,vecP_ll(1,1),0,0,vecP_ll(3,1),0;
            0,0,0,0,0,0;
            140,0,0,200,0,0;
            0,vecP_ll(9,1),0,0,vecP_ll(11,1),0;
            0,0,0,0,0,0];

    lik_mat = zeros(T,1);
    
    for j_iter = 1:T
        beta_tl  =  muvec + F*beta_ll;
        P_tl  =  F*P_ll*F' + Q;

        vt = y(j_iter,1:2)' - H*beta_tl - A; %Prediction error

        ft =  H*P_tl*H'; %Variance of forecast error

        beta_tt = beta_tl + P_tl*H'*inv(ft)*vt;
        P_tt = P_tl - P_tl*H'*inv(ft)*H*P_tl;

        lik_mat(j_iter,1) = 0.5*log(((2*pi)^2)*det(ft)) + 0.5*vt'*inv(ft)*vt;

        beta_ll = beta_tt;
        P_ll = P_tt;
    end

    val = sum(lik_mat(START:T));

end