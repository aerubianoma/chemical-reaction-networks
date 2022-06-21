syms k_1 k_2 k_3 k_4 k_5 k_6 k_7 k_8 L_1 L_2 L_3 L_4 x
R1 = [-k_1-k_3-k_4*L_2, -k_3*L_1+k_2, k_5, k_6;
     -k_3*L_1+k_1, -k_2-k_3*L_1-k_4*L_1, 0, 0;
     -k_3*L_2, -k_3*L_1, -k_5-k_8, 0;
     0, -k_4*L_1, 0, -k_6-k_7]
R2 = [0, -k_4*L_1, 0, k_6;
     -k_4*L_2, 0, 0, 0;
     0, 0, 0, k_7;
     k_4*L_2, 0, k_8, 0]
D1 = det(R1+R2,'Algorithm','minor-expansion')
polyD1 = charpoly(R1+R2)
  
%Conditions  
assume(polyD1(1) > 0); 
assume(polyD1(2) > 0); 
assume(polyD1(3) >= 0); 
assume(polyD1(4) >= 0);

  
%Solve for beta 
S=solve(charpoly(R1+R2,x),x,'ReturnConditions',true); 
