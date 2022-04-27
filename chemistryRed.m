syms k_1 k_2 k_3 k_4 k_5 k_6 L D A
R1 = [-k_4, -k_3*D, 0;
     k_1*A-k_3*D, k_2*D*A-k_5*D^2+k_6*A^2, -k_3*D;
     k_6*A^2, 0, k_2*D*A-k_5*D^2+k_6*A^2]
D1 = det(R1,'Algorithm','minor-expansion')
R2 = [k_4, -k_3*D, 0;
     (-k_1*A)+(2*k_3*D), (k_2*D*A)-(k_5*D^2)+(k_6*A^2), -k_3*D;
     k_5*D^2-2*k_6*A^2-k_2*D*A, 0, k_2*D*A-k_5*D^2+k_6*A^2;]
D2 = det(R2,'Algorithm','minor-expansion')
p1 = [-k_4*k_6^2, - 2*k_4*D*k_2*k_6 + k_1*D*k_3*k_6, -k_4*D^2*k_2^2 + k_1*D^2*k_2*k_3 + 2*k_4*D^2*k_5*k_6, -D^3*k_2*k_3^2 + 2*k_4*D^3*k_2*k_5 - k_1*D^3*k_3*k_5,  D^4*k_3^2*k_5 - k_4*D^4*k_5^2]
p2 = [k_4*k_6^2, 2*k_4*D*k_2*k_6 - k_1*D*k_3*k_6,  k_4*D^2*k_2^2 - k_1*D^2*k_2*k_3 - 2*k_4*D^2*k_5*k_6,  D^3*k_2*k_3^2 - 2*k_4*D^3*k_2*k_5 + k_1*D^3*k_3*k_5, -D^4*k_3^2*k_5 + k_4*D^4*k_5^2]
R3 = [p1(1),0    ,0    ,0    ,p2(1),0    ,0    ,0    ;
      p1(2),p1(1),0    ,0    ,p2(2),p2(1),0    ,0    ;
      p1(3),p1(2),p1(1),0    ,p2(3),p2(2),p2(1),0    ;
      p1(4),p1(3),p1(2),p1(1),p2(4),p2(3),p2(2),p2(1);
      0    ,p1(4),p1(3),p1(2),0    ,p2(4),p2(3),p2(2);
      0    ,0    ,p1(4),p1(3),0    ,0    ,p2(4),p2(3);
      0    ,0    ,0    ,p1(4),0    ,0    ,0    ,p2(4);
      0    ,0    ,0    ,0    ,0    ,0    ,0    ,0    ]
d3 = det(R3,'Algorithm','minor-expansion')
solution = solve([0==k_1*L*A-k_3*L*D-k_4*L^2+k_6*A^2,0==k_2*D*A-k_3*L*D-k_5*D^2+k_6*A^2,0==-k_1*L*A-k_2*D*A+2*k_3*L*D+k_4*L^2+k_5*D^2-2*k_6*A^2],[L D A],'maxDegree',4)
solution.L
solution.D
solution.A