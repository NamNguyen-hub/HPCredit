%=============%
%stationary region
%=============%
working_dir = ['D:\GitHub\HPCredit\Regression'];
cd(working_dir);
    clc; clear all ;
    x = -3:0.05:3;             % The range of x values.
    y = -3:0.05:3;             % The range of y values.
    [X,Y] = meshgrid (x,y); % This generates the actual grid of x and y values.
    [A,B] = arrayfun(@(x1,x2) stationaritytest2(x1,x2), X, Y);
    A = double(A);
    B = double(B);
    % Generating the Z Data
% 
%     Z1 = X./(1 + abs(X))+Y./(1 + abs(Y));
%     Z2 = -1.*(X./(1 + abs(X)).*(Y./(1 + abs(Y))));
    figure(1);              % Generating a new window to plot in.
    grid on
    hold on % Hold position should be at the start of plotting to overlap plots
%     surf(X,Y,Z1,'FaceAlpha',0.5,'EdgeColor','none','FaceColor','red');             % The surface plotting function.
%     surf(X,Y,Z2,'FaceAlpha',0.5,'EdgeColor','none','FaceColor',	'#4DBEEE');             % The surface plotting function.
    surf(X,Y,A,'FaceAlpha',0.5,'FaceColor','blue');             % The surface plotting function.
    surf(X,Y,B,'FaceAlpha',0.5);             % The surface plotting function.
    zlabel('Transformed coefficient')
    xlabel('phi1-input')
    ylabel('phi2-input')
    legend('stationary', 'non-complex root')
    
    hold off;