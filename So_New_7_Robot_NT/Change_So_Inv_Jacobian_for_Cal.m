function [ Inv_Jaco ] = So_Inv_Jacobian_for_Cal( Theta1, Theta2, Theta3, Theta4, Theta5, Theta6, a2, a3, a4  )
%SO_INV_JACOBIAN_CAL Summary of this function goes here
%   Detailed explanation goes here

% t1 = So_Theta_to_Rad(Theta1);
% t2 = So_Theta_to_Rad(Theta2);
% t3 = So_Theta_to_Rad(Theta3);
% t4 = So_Theta_to_Rad(Theta4);
% t5 = So_Theta_to_Rad(Theta5);
% t6 = So_Theta_to_Rad(Theta6);
% t7 = So_Theta_to_Rad(Theta7);
t1 = Theta1;
t2 = Theta2;
t3 = Theta3;
t4 = Theta4;
t5 = Theta5;
t6 = Theta6;


% 6축 자코비안
Pre_Inv_Jaco = [                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        (2*sin(t1)*sin(t3))/(sin(t2 - t3) - sin(t2 + 2*t3) - sin(t2 + 2*t3 + t4) - sin(t2 + t3) + sin(t2 + t4) + sin(t2)),                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      -(2*cos(t1)*sin(t3))/(sin(t2 - t3) - sin(t2 + 2*t3) - sin(t2 + 2*t3 + t4) - sin(t2 + t3) + sin(t2 + t4) + sin(t2)),                                 0,                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    0,                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    0,                                                                                                                                                                                                          0;
                                                                                                                                                                                                                                                                                                                                                                              (sin(t1 + t2 + t3 - t5) - sin(t1 + 2*t2 + t3 + t5) + 2*sin(t1 - t5) - sin(t1 + t3 + t5) - sin(t1 + t4 + t5) - sin(t1 - t2 - t3 - 2*t4 + t5) - sin(t1 - 2*t2 - 2*t3 - t4 + t5) + sin(t1 + 2*t2 + 2*t3 + t4 - t5) + sin(t1 - t2 - t3 + t5) - sin(t1 - 2*t2 - t3 + t5) + sin(t1 + 2*t2 + t3 - t5) - sin(t1 - 2*t2 - 2*t3 + t5) - sin(t1 + 2*t2 + 2*t3 + t5) - sin(t1 + t2 + t3 + 2*t4 + t5) + sin(t1 + t3 - t5) - sin(t1 - t3 + t5) + sin(t1 + t4 - t5) - sin(t1 - t4 + t5) - sin(t1 - t2 - t3 - 2*t4 - t5) + sin(t1 - 2*t2 - 2*t3 - t4 - t5) + sin(t1 + t2 + t3 + t5) - 2*sin(t1 + t5) + sin(t1 - t2 - t3 - t5) + sin(t1 - 2*t2 - t3 - t5) + sin(t1 - 2*t2 - 2*t3 - t5) + sin(t1 + 2*t2 + 2*t3 - t5) - sin(t1 + t2 + t3 + 2*t4 - t5) - sin(t1 + 2*t2 + 2*t3 + t4 + t5) + sin(t1 - t3 - t5) + sin(t1 - t4 - t5))/(4*sin(t5)*(sin(t2 - t3) - sin(t2 + 2*t3) - sin(t2 + 2*t3 + t4) - sin(t2 + t3) + sin(t2 + t4) + sin(t2))),                                                                                                                                                                                                                                                                                                                                                                -(2*cos(t1 - t5) - cos(t1 + t3 + t5) - cos(t1 + t4 + t5) - cos(t1 - t2 - t3 - 2*t4 + t5) - cos(t1 - 2*t2 - 2*t3 - t4 + t5) + cos(t1 + 2*t2 + 2*t3 + t4 - t5) + cos(t1 - t2 - t3 + t5) - cos(t1 - 2*t2 - t3 + t5) + cos(t1 + 2*t2 + t3 - t5) - cos(t1 - 2*t2 - 2*t3 + t5) - cos(t1 + 2*t2 + 2*t3 + t5) - cos(t1 + t2 + t3 + 2*t4 + t5) + cos(t1 + t3 - t5) - cos(t1 - t3 + t5) + cos(t1 + t4 - t5) - cos(t1 - t4 + t5) - cos(t1 - t2 - t3 - 2*t4 - t5) + cos(t1 - 2*t2 - 2*t3 - t4 - t5) + cos(t1 + t2 + t3 + t5) - 2*cos(t1 + t5) + cos(t1 - t2 - t3 - t5) + cos(t1 - 2*t2 - t3 - t5) + cos(t1 - 2*t2 - 2*t3 - t5) + cos(t1 + 2*t2 + 2*t3 - t5) - cos(t1 + t2 + t3 + 2*t4 - t5) - cos(t1 + 2*t2 + 2*t3 + t4 + t5) + cos(t1 - t3 - t5) + cos(t1 - t4 - t5) + cos(t1 + t2 + t3 - t5) - cos(t1 + 2*t2 + t3 + t5))/(4*sin(t5)*(sin(t2 - t3) - sin(t2 + 2*t3) - sin(t2 + 2*t3 + t4) - sin(t2 + t3) + sin(t2 + t4) + sin(t2))),              sin(t2 + t3)/sin(t3),                                                                                                                                                                                                                                                                                                                                                                                                                                                          (sin(t1)*sin(t4)*sin(t5) + cos(t1)*cos(t2)*cos(t5)*sin(t3) + cos(t1)*cos(t3)*cos(t5)*sin(t2) - cos(t1)*cos(t2)*cos(t4)^2*cos(t5)*sin(t3) - cos(t1)*cos(t3)*cos(t4)^2*cos(t5)*sin(t2) - cos(t1)*cos(t2)*cos(t3)*cos(t4)*cos(t5)*sin(t4) + cos(t1)*cos(t4)*cos(t5)*sin(t2)*sin(t3)*sin(t4))/(sin(t3)*sin(t5)),                                                                                                                                                                                                                                                                                                                                                                                                                                                         -(cos(t1)*sin(t4)*sin(t5) - cos(t2)*cos(t5)*sin(t1)*sin(t3) - cos(t3)*cos(t5)*sin(t1)*sin(t2) + cos(t2)*cos(t4)^2*cos(t5)*sin(t1)*sin(t3) + cos(t3)*cos(t4)^2*cos(t5)*sin(t1)*sin(t2) + cos(t2)*cos(t3)*cos(t4)*cos(t5)*sin(t1)*sin(t4) - cos(t4)*cos(t5)*sin(t1)*sin(t2)*sin(t3)*sin(t4))/(sin(t3)*sin(t5)),                                                                                         -(cos(t2 + t3 + t5) - cos(t2 + t3 + 2*t4 - t5) + cos(t2 + t3 - t5) - cos(t2 + t3 + 2*t4 + t5))/(4*sin(t3)*sin(t5));
             -(cos(t2)*cos(t5)*sin(t1) - cos(2*t2)*cos(t1)*sin(t5) - 2*cos(t1)*sin(t5) - 2*cos(t1)*cos(t3)*sin(t5) - cos(t1)*cos(t4)*sin(t5) - 2*cos(2*t2)*cos(t1)*cos(t3)*sin(t5) + 2*sin(2*t2)*cos(t1)*sin(t3)*sin(t5) - cos(2*t2)*cos(2*t3)*cos(t1)*sin(t5) + sin(2*t2)*sin(2*t3)*cos(t1)*sin(t5) + cos(t2)*cos(t3)*cos(t5)*sin(t1) - cos(t1)*cos(t3)*cos(t4)*sin(t5) - cos(t5)*sin(t1)*sin(t2)*sin(t3) + cos(t1)*sin(t3)*sin(t4)*sin(t5) - cos(2*t2)*cos(t1)*cos(t3)*cos(t4)*sin(t5) - cos(2*t4)*cos(t2)*cos(t3)*cos(t5)*sin(t1) + cos(2*t2)*cos(t1)*sin(t3)*sin(t4)*sin(t5) + cos(2*t4)*cos(t5)*sin(t1)*sin(t2)*sin(t3) + sin(2*t2)*cos(t1)*cos(t3)*sin(t4)*sin(t5) + sin(2*t2)*cos(t1)*cos(t4)*sin(t3)*sin(t5) + sin(2*t4)*cos(t2)*cos(t5)*sin(t1)*sin(t3) + sin(2*t4)*cos(t3)*cos(t5)*sin(t1)*sin(t2) - cos(2*t2)*cos(2*t3)*cos(t1)*cos(t4)*sin(t5) - cos(2*t3)*cos(2*t4)*cos(t2)*cos(t5)*sin(t1) + cos(2*t2)*sin(2*t3)*cos(t1)*sin(t4)*sin(t5) + cos(2*t3)*sin(2*t2)*cos(t1)*sin(t4)*sin(t5) + cos(2*t3)*sin(2*t4)*cos(t5)*sin(t1)*sin(t2) + cos(2*t4)*sin(2*t3)*cos(t5)*sin(t1)*sin(t2) + sin(2*t2)*sin(2*t3)*cos(t1)*cos(t4)*sin(t5) + sin(2*t3)*sin(2*t4)*cos(t2)*cos(t5)*sin(t1))/(sin(t5)*(sin(t2 - t3) - sin(t2 + 2*t3) - sin(t2 + 2*t3 + t4) - sin(t2 + t3) + sin(t2 + t4) + sin(t2))), (2*sin(t1)*sin(t5) + 2*cos(t3)*sin(t1)*sin(t5) + cos(t4)*sin(t1)*sin(t5) + cos(2*t2)*sin(t1)*sin(t5) + cos(t1)*cos(t2)*cos(t5) + 2*cos(2*t2)*cos(t3)*sin(t1)*sin(t5) - 2*sin(2*t2)*sin(t1)*sin(t3)*sin(t5) + cos(2*t2)*cos(2*t3)*sin(t1)*sin(t5) - sin(2*t2)*sin(2*t3)*sin(t1)*sin(t5) + cos(t1)*cos(t2)*cos(t3)*cos(t5) - cos(t1)*cos(t5)*sin(t2)*sin(t3) + cos(t3)*cos(t4)*sin(t1)*sin(t5) - sin(t1)*sin(t3)*sin(t4)*sin(t5) + cos(2*t2)*cos(t3)*cos(t4)*sin(t1)*sin(t5) + cos(2*t4)*cos(t1)*cos(t5)*sin(t2)*sin(t3) + sin(2*t4)*cos(t1)*cos(t2)*cos(t5)*sin(t3) + sin(2*t4)*cos(t1)*cos(t3)*cos(t5)*sin(t2) - cos(2*t2)*sin(t1)*sin(t3)*sin(t4)*sin(t5) - sin(2*t2)*cos(t3)*sin(t1)*sin(t4)*sin(t5) - sin(2*t2)*cos(t4)*sin(t1)*sin(t3)*sin(t5) - cos(2*t3)*cos(2*t4)*cos(t1)*cos(t2)*cos(t5) + cos(2*t2)*cos(2*t3)*cos(t4)*sin(t1)*sin(t5) + cos(2*t3)*sin(2*t4)*cos(t1)*cos(t5)*sin(t2) + cos(2*t4)*sin(2*t3)*cos(t1)*cos(t5)*sin(t2) + sin(2*t3)*sin(2*t4)*cos(t1)*cos(t2)*cos(t5) - cos(2*t2)*sin(2*t3)*sin(t1)*sin(t4)*sin(t5) - cos(2*t3)*sin(2*t2)*sin(t1)*sin(t4)*sin(t5) - sin(2*t2)*sin(2*t3)*cos(t4)*sin(t1)*sin(t5) - cos(2*t4)*cos(t1)*cos(t2)*cos(t3)*cos(t5))/(sin(t5)*(sin(t2 - t3) - sin(t2 + 2*t3) - sin(t2 + 2*t3 + t4) - sin(t2 + t3) + sin(t2 + t4) + sin(t2))), -(sin(t2 + t3) + sin(t2))/sin(t3), -(sin(t1)*sin(t4)*sin(t5) + cos(t1)*cos(t3)^2*cos(t5)*sin(t2) + cos(t1)*cos(t4)^2*cos(t5)*sin(t2) + cos(t1)*cos(t2)*cos(t5)*sin(t3) + cos(t1)*cos(t3)*cos(t5)*sin(t2) + cos(t3)*sin(t1)*sin(t4)*sin(t5) + cos(t4)*sin(t1)*sin(t3)*sin(t5) - cos(t1)*cos(t2)*cos(t4)^2*cos(t5)*sin(t3) - cos(t1)*cos(t3)*cos(t4)^2*cos(t5)*sin(t2) - 2*cos(t1)*cos(t3)^2*cos(t4)^2*cos(t5)*sin(t2) + cos(t1)*cos(t2)*cos(t3)*cos(t5)*sin(t3) + cos(t1)*cos(t2)*cos(t4)*cos(t5)*sin(t4) - cos(t1)*cos(t2)*cos(t3)*cos(t4)*cos(t5)*sin(t4) + cos(t1)*cos(t4)*cos(t5)*sin(t2)*sin(t3)*sin(t4) - 2*cos(t1)*cos(t2)*cos(t3)*cos(t4)^2*cos(t5)*sin(t3) - 2*cos(t1)*cos(t2)*cos(t3)^2*cos(t4)*cos(t5)*sin(t4) + 2*cos(t1)*cos(t3)*cos(t4)*cos(t5)*sin(t2)*sin(t3)*sin(t4))/(sin(t3)*sin(t5)),  (cos(t1)*sin(t4)*sin(t5) - cos(t3)^2*cos(t5)*sin(t1)*sin(t2) - cos(t4)^2*cos(t5)*sin(t1)*sin(t2) - cos(t2)*cos(t5)*sin(t1)*sin(t3) - cos(t3)*cos(t5)*sin(t1)*sin(t2) + cos(t1)*cos(t3)*sin(t4)*sin(t5) + cos(t1)*cos(t4)*sin(t3)*sin(t5) + cos(t2)*cos(t4)^2*cos(t5)*sin(t1)*sin(t3) + cos(t3)*cos(t4)^2*cos(t5)*sin(t1)*sin(t2) + 2*cos(t3)^2*cos(t4)^2*cos(t5)*sin(t1)*sin(t2) - cos(t2)*cos(t3)*cos(t5)*sin(t1)*sin(t3) - cos(t2)*cos(t4)*cos(t5)*sin(t1)*sin(t4) + cos(t2)*cos(t3)*cos(t4)*cos(t5)*sin(t1)*sin(t4) - cos(t4)*cos(t5)*sin(t1)*sin(t2)*sin(t3)*sin(t4) + 2*cos(t2)*cos(t3)*cos(t4)^2*cos(t5)*sin(t1)*sin(t3) + 2*cos(t2)*cos(t3)^2*cos(t4)*cos(t5)*sin(t1)*sin(t4) - 2*cos(t3)*cos(t4)*cos(t5)*sin(t1)*sin(t2)*sin(t3)*sin(t4))/(sin(t3)*sin(t5)),  (cos(t2 - t5) + cos(t2 + t3 + t5) - cos(t2 + t3 + 2*t4 - t5) - cos(t2 + 2*t3 + 2*t4 + t5) + cos(t2 + t3 - t5) + cos(t2 + t5) - cos(t2 + 2*t3 + 2*t4 - t5) - cos(t2 + t3 + 2*t4 + t5))/(4*sin(t3)*sin(t5));
                                                                                                                                                                                                                                (2*(cos(t2)*cos(t3)^2*cos(t5)*sin(t1) - cos(t1)*cos(t2)^2*cos(t3)*sin(t5) - cos(t1)*cos(t2)^2*sin(t5) + cos(t2)*cos(t4)^2*cos(t5)*sin(t1) + cos(t2)*cos(t4)*cos(t5)*sin(t1) - cos(t5)*sin(t1)*sin(t2)*sin(t4) - cos(t1)*cos(t2)^2*cos(t3)*cos(t4)*sin(t5) - cos(t2)*cos(t3)^2*cos(t4)*cos(t5)*sin(t1) + cos(t1)*cos(t2)^2*sin(t3)*sin(t4)*sin(t5) + cos(t3)^2*cos(t5)*sin(t1)*sin(t2)*sin(t4) - 2*cos(t2)*cos(t3)^2*cos(t4)^2*cos(t5)*sin(t1) + cos(t1)*cos(t2)*sin(t2)*sin(t3)*sin(t5) - cos(t3)*cos(t5)*sin(t1)*sin(t2)*sin(t3) - cos(t4)*cos(t5)*sin(t1)*sin(t2)*sin(t4) + cos(t1)*cos(t2)*cos(t3)*sin(t2)*sin(t4)*sin(t5) + cos(t1)*cos(t2)*cos(t4)*sin(t2)*sin(t3)*sin(t5) + cos(t2)*cos(t3)*cos(t5)*sin(t1)*sin(t3)*sin(t4) + cos(t3)*cos(t4)*cos(t5)*sin(t1)*sin(t2)*sin(t3) + 2*cos(t3)*cos(t4)^2*cos(t5)*sin(t1)*sin(t2)*sin(t3) + 2*cos(t3)^2*cos(t4)*cos(t5)*sin(t1)*sin(t2)*sin(t4) + 2*cos(t2)*cos(t3)*cos(t4)*cos(t5)*sin(t1)*sin(t3)*sin(t4)))/(sin(t5)*(sin(t2 - t3) - sin(t2 + 2*t3) - sin(t2 + 2*t3 + t4) - sin(t2 + t3) + sin(t2 + t4) + sin(t2))),                                                                                                                                                                                                                  -(2*(cos(t2)^2*sin(t1)*sin(t5) + cos(t1)*cos(t2)*cos(t3)^2*cos(t5) + cos(t1)*cos(t2)*cos(t4)^2*cos(t5) + cos(t2)^2*cos(t3)*sin(t1)*sin(t5) + cos(t1)*cos(t2)*cos(t4)*cos(t5) - cos(t1)*cos(t5)*sin(t2)*sin(t4) + cos(t1)*cos(t3)^2*cos(t5)*sin(t2)*sin(t4) + cos(t2)^2*cos(t3)*cos(t4)*sin(t1)*sin(t5) - cos(t2)^2*sin(t1)*sin(t3)*sin(t4)*sin(t5) - 2*cos(t1)*cos(t2)*cos(t3)^2*cos(t4)^2*cos(t5) - cos(t1)*cos(t3)*cos(t5)*sin(t2)*sin(t3) - cos(t1)*cos(t4)*cos(t5)*sin(t2)*sin(t4) - cos(t2)*sin(t1)*sin(t2)*sin(t3)*sin(t5) - cos(t1)*cos(t2)*cos(t3)^2*cos(t4)*cos(t5) + cos(t1)*cos(t2)*cos(t3)*cos(t5)*sin(t3)*sin(t4) + cos(t1)*cos(t3)*cos(t4)*cos(t5)*sin(t2)*sin(t3) - cos(t2)*cos(t3)*sin(t1)*sin(t2)*sin(t4)*sin(t5) - cos(t2)*cos(t4)*sin(t1)*sin(t2)*sin(t3)*sin(t5) + 2*cos(t1)*cos(t3)*cos(t4)^2*cos(t5)*sin(t2)*sin(t3) + 2*cos(t1)*cos(t3)^2*cos(t4)*cos(t5)*sin(t2)*sin(t4) + 2*cos(t1)*cos(t2)*cos(t3)*cos(t4)*cos(t5)*sin(t3)*sin(t4)))/(sin(t5)*(sin(t2 - t3) - sin(t2 + 2*t3) - sin(t2 + 2*t3 + t4) - sin(t2 + t3) + sin(t2 + t4) + sin(t2))),                   sin(t2)/sin(t3),  (sin(t1)*sin(t3)*sin(t5) + cos(t1)*cos(t3)^2*cos(t5)*sin(t2) + cos(t1)*cos(t4)^2*cos(t5)*sin(t2) + cos(t1)*cos(t2)*cos(t5)*sin(t4) + cos(t1)*cos(t4)*cos(t5)*sin(t2) + cos(t3)*sin(t1)*sin(t4)*sin(t5) + cos(t4)*sin(t1)*sin(t3)*sin(t5) - cos(t1)*cos(t2)*cos(t3)^2*cos(t5)*sin(t4) - cos(t1)*cos(t3)^2*cos(t4)*cos(t5)*sin(t2) - 2*cos(t1)*cos(t3)^2*cos(t4)^2*cos(t5)*sin(t2) + cos(t1)*cos(t2)*cos(t3)*cos(t5)*sin(t3) + cos(t1)*cos(t2)*cos(t4)*cos(t5)*sin(t4) - cos(t1)*cos(t2)*cos(t3)*cos(t4)*cos(t5)*sin(t3) + cos(t1)*cos(t3)*cos(t5)*sin(t2)*sin(t3)*sin(t4) - 2*cos(t1)*cos(t2)*cos(t3)*cos(t4)^2*cos(t5)*sin(t3) - 2*cos(t1)*cos(t2)*cos(t3)^2*cos(t4)*cos(t5)*sin(t4) + 2*cos(t1)*cos(t3)*cos(t4)*cos(t5)*sin(t2)*sin(t3)*sin(t4))/(sin(t3)*sin(t5)), -(cos(t1)*sin(t3)*sin(t5) - cos(t3)^2*cos(t5)*sin(t1)*sin(t2) - cos(t4)^2*cos(t5)*sin(t1)*sin(t2) - cos(t2)*cos(t5)*sin(t1)*sin(t4) - cos(t4)*cos(t5)*sin(t1)*sin(t2) + cos(t1)*cos(t3)*sin(t4)*sin(t5) + cos(t1)*cos(t4)*sin(t3)*sin(t5) + cos(t2)*cos(t3)^2*cos(t5)*sin(t1)*sin(t4) + cos(t3)^2*cos(t4)*cos(t5)*sin(t1)*sin(t2) + 2*cos(t3)^2*cos(t4)^2*cos(t5)*sin(t1)*sin(t2) - cos(t2)*cos(t3)*cos(t5)*sin(t1)*sin(t3) - cos(t2)*cos(t4)*cos(t5)*sin(t1)*sin(t4) + cos(t2)*cos(t3)*cos(t4)*cos(t5)*sin(t1)*sin(t3) - cos(t3)*cos(t5)*sin(t1)*sin(t2)*sin(t3)*sin(t4) + 2*cos(t2)*cos(t3)*cos(t4)^2*cos(t5)*sin(t1)*sin(t3) + 2*cos(t2)*cos(t3)^2*cos(t4)*cos(t5)*sin(t1)*sin(t4) - 2*cos(t3)*cos(t4)*cos(t5)*sin(t1)*sin(t2)*sin(t3)*sin(t4))/(sin(t3)*sin(t5)), -(cos(t2 - t5) + cos(t2 + t4 + t5) - cos(t2 + 2*t3 + t4 - t5) - cos(t2 + 2*t3 + 2*t4 + t5) + cos(t2 + t4 - t5) + cos(t2 + t5) - cos(t2 + 2*t3 + 2*t4 - t5) - cos(t2 + 2*t3 + t4 + t5))/(4*sin(t3)*sin(t5));
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        (sin(t1 + t2 + t4 - t5) - sin(t1 - t2 - 2*t3 - t4 + t5) + sin(t1 - t2 - t4 + t5) + sin(t1 + t2 + 2*t3 + t4 + t5) + sin(t1 - t2 - 2*t3 - t4 - t5) - sin(t1 + t2 + t4 + t5) - sin(t1 - t2 - t4 - t5) - sin(t1 + t2 + 2*t3 + t4 - t5))/(4*sin(t5)*(sin(t2 - t3) - sin(t2 + 2*t3) - sin(t2 + 2*t3 + t4) - sin(t2 + t3) + sin(t2 + t4) + sin(t2))),                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           (cos(t1 - t2 - 2*t3 - t4 + t5) - cos(t1 - t2 - t4 + t5) - cos(t1 + t2 + 2*t3 + t4 + t5) - cos(t1 - t2 - 2*t3 - t4 - t5) + cos(t1 + t2 + t4 + t5) + cos(t1 - t2 - t4 - t5) + cos(t1 + t2 + 2*t3 + t4 - t5) - cos(t1 + t2 + t4 - t5))/(4*sin(t5)*(sin(t2 - t3) - sin(t2 + 2*t3) - sin(t2 + 2*t3 + t4) - sin(t2 + t3) + sin(t2 + t4) + sin(t2))),                                 0,                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  sin(t1 - t2 - t3 - t4)/2 - sin(t1 + t2 + t3 + t4)/2,                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  cos(t1 + t2 + t3 + t4)/2 - cos(t1 - t2 - t3 - t4)/2,                                                                                                                                                                                          cos(t2 + t3 + t4);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          -(cos(t1 + t2 + t3 + t4) - cos(t1 - t2 - t3 - t4))/(2*sin(t5)*(cos(t2 + t3 + t4) + cos(t2 + t3) + cos(t2))),                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           (cos(t1 + t2 + t4)/2 - cos(t1 - t2 - 2*t3 - t4)/2 + cos(t1 - t2 - t4)/2 - cos(t1 + t2 + 2*t3 + t4)/2)/(sin(t5)*(sin(t2 - t3) - sin(t2 + 2*t3) - sin(t2 + 2*t3 + t4) - sin(t2 + t3) + sin(t2 + t4) + sin(t2))),                                 0,                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        (cos(t1 + t2 + t3 + t4) + cos(t1 - t2 - t3 - t4))/(2*sin(t5)),                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        (sin(t1 + t2 + t3 + t4) + sin(t1 - t2 - t3 - t4))/(2*sin(t5)),                                                                                                                                                                                  sin(t2 + t3 + t4)/sin(t5)];




Inv_Jaco = Pre_Inv_Jaco([1 2 3 6 5 4],[1 2 3 4 5 6])

end

