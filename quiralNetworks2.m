syms k_1 k_2 k_3 k_4 k_5 k_6 k_7 k_8 L_1 L_2 L_3 L_4 x
R1 = [k_2, -k_1, 0, 0;
     0, 0, 0, k_8;
     -k_3*L_2, -k_3*L_1, k_5, 0;
     0, -k_4*L_1, 0, k_6];
R2 = [0, 0, 0, 0;
     0, 0, -k_7, 0;
     0, 0, 0, 0;
     -k_4*L_2, 0, 0, 0];
D1 = det(R1+R2,'Algorithm','minor-expansion');
polyD1 = charpoly(R1-R2);
  
%Conditions  
%eq1 = polyD1(2) > 0; 
%eq2 = polyD1(3) > 0; 
%eq3 = polyD1(4) >= 0; 
%eq4 = polyD1(5) >= 0;
%eq5 = poly2sym(polyD1) == 0;
%eq6 = k_1+k_2+k_3+k_4+k_5+k_6+k_7+k_8 > 0;
%eq7 = L_1+L_2+L_3+L_4 > 0;
%eq8 = k_4*L_2*L_1+k_6*L_4-k_3*L_1*L_2 == 0;
  
%Solve for beta 
%S=solve(eq1,eq2,eq3,eq4,eq5,x,'ReturnConditions', 'true'); 


%Conditions  
assume(polyD1(1) > 0); 
assume(polyD1(2) > 0); 
assume(polyD1(3) >= 0); 
assume(polyD1(4) >= 0);

  
%Solve for x
%S=solve(charpoly(R1+R2,x),x,'ReturnConditions',true); 
%sol_explicit = simplify(solve(charpoly(R1+R2,x),x, 'MaxDegree', 4))