% Name: Md. Roknuzzaman Rikon
% ID: 22024014
% Power System Load Flow Analysis using Newton-Raphson Method 

% Define system parameters 
Ybus = [ 
    10-20j, -5+10j, -5+10j;
   -5+10j,  8-16j, -3+6j;
   -5+10j, -3+6j,  8-16j 
]; % Y-bus matrix 

P = [-1.2; 1.0; 0.5]; % Active power demand (per unit) 
Q = [-0.5; 0.3; 0.2]; % Reactive power demand (per unit) 
V = [1; 1; 1]; % Initial guess for voltage magnitudes 
theta = [0; 0; 0]; % Initial guess for voltage angles 

% Newton-Raphson iteration parameters
max_iter = 10; 
tol = 1e-6; 

for iter = 1:max_iter 
    % Calculate complex voltage
    V_complex = V .* exp(1j * theta);  % Complex form of voltage vector
    
    % Calculate power mismatches
    S_calc = V_complex .* (Ybus * V_complex); % Calculated complex power (S = P + jQ)
    P_calc = real(S_calc); % Extract real part for active power
    Q_calc = imag(S_calc); % Extract imaginary part for reactive power
    
    dP = P - P_calc; % Active power mismatch
    dQ = Q - Q_calc; % Reactive power mismatch
    mismatch = [dP; dQ]; % Combined mismatch vector
    
    % Check for convergence
    if norm(mismatch) < tol 
        fprintf('Converged after %d iterations\n', iter);
        break; 
    end 
    
    % Jacobian matrix calculation
    % Partial derivatives for Jacobian elements J11, J12, J21, J22
    n = length(V); % Number of buses
    J11 = zeros(n, n);
    J12 = zeros(n, n);
    J21 = zeros(n, n);
    J22 = zeros(n, n);
    
    for i = 1:n
        for k = 1:n
            if i == k
                % Diagonal elements
                J11(i, k) = -Q_calc(i) - imag(Ybus(i, i)) * V(i)^2;
                J22(i, k) = P_calc(i) - real(Ybus(i, i)) * V(i)^2;
                J12(i, k) = P_calc(i) / V(i) + real(Ybus(i, i)) * V(i);
                J21(i, k) = Q_calc(i) / V(i) - imag(Ybus(i, i)) * V(i);
            else
                % Off-diagonal elements
                J11(i, k) = V(i) * V(k) * (real(Ybus(i, k)) * sin(theta(i) - theta(k)) - imag(Ybus(i, k)) * cos(theta(i) - theta(k)));
                J22(i, k) = V(i) * V(k) * (real(Ybus(i, k)) * cos(theta(i) - theta(k)) + imag(Ybus(i, k)) * sin(theta(i) - theta(k)));
                J12(i, k) = V(i) * (real(Ybus(i, k)) * cos(theta(i) - theta(k)) + imag(Ybus(i, k)) * sin(theta(i) - theta(k)));
                J21(i, k) = V(i) * (real(Ybus(i, k)) * sin(theta(i) - theta(k)) - imag(Ybus(i, k)) * cos(theta(i) - theta(k)));
            end
        end
    end
    
    % Construct Jacobian matrix
    J = [J11, J12; J21, J22];
    
    % Update voltage magnitudes and angles
    correction = J \ mismatch; % Solve for corrections (avoids explicit matrix inverse)
    dtheta = correction(1:n); 
    dV = correction(n+1:end); 
    
    theta = theta + dtheta; % Update angles
    V = V + dV; % Update magnitudes
end 

% Display results
disp('Voltage magnitudes (pu):'); 
disp(V); 
disp('Voltage angles (degrees):'); 
disp(rad2deg(theta)); 
