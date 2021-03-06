module E7_Priority_Encoder(D,X,Y,V);
input [0:3]D;
output X,Y,V;
wire D2_n,Y2;

not(D2_n,D[2]);
and(Y2,D[1],D2_n);

or(X,D[2],D[3]);
or(Y,D[3],Y2);
or(V,D[0],D[1],D[2],D[3]);
endmodule 