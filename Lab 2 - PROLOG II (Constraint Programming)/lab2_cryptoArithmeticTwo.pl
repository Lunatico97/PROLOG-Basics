
/*
	 TEN
	 TEN
      +FORTY
     ---------
       SIXTY
*/

%CLAUSES
solution([]).
solution([T,E,N,F,O,R,Y,S,I,X]):-
% These following values need to be as follows because there is no other possibility.
N is 0,
E is 5, 
C4 is 1, % C4 must be 1 so that 'F' and 'S' remains unequal.
% C4 is 1 because even the maximum sum of two single-digits can only generate a carry of 1. 
member(C1,[0,1,2]),
member(C2,[0,1,2]),
member(C3,[0,1,2]), 
% C1, C2, C3 will have values 0, 1 or 2 [Maximum sum of 3-digits can generate a carry upto 2.]
member(I,[1,2,3,4,6,7,8,9]),
member(O,[1,2,3,4,6,7,8,9]),
member(T,[1,2,3,4,6,7,8,9]),
member(F,[1,2,3,4,6,7,8,9]),
member(R,[1,2,3,4,6,7,8,9]),
member(Y,[1,2,3,4,6,7,8,9]),
member(S,[1,2,3,4,6,7,8,9]),
member(X,[1,2,3,4,6,7,8,9]),
% T,E,N,F,O,R,Y,S,I,X will have values between 0 and 9.
% The values of T,E,N,F,O,R,Y,S,I,X must not be equal.
T=\=E, T=\=N, T=\=F, T=\=O, T=\=R, T=\=Y, T=\=S, T=\=I, T=\=X,
E=\=N, E=\=F, E=\=O, E=\=R, E=\=Y, E=\=S, E=\=I, E=\=X,
N=\=F, N=\=O, N=\=R, N=\=Y, N=\=S, N=\=I, N=\=X,
F=\=O, F=\=R, F=\=Y, F=\=S, F=\=I, F=\=X,
O=\=R, O=\=Y, O=\=S, O=\=I, O=\=X,
R=\=Y, R=\=S, R=\=I, R=\=X,
Y=\=S, Y=\=I, Y=\=X,
S=\=I, S=\=X,
I=\=X,
% Computation for solution
2*N+Y =:= Y+10*C1,
2*E+T+C1 =:= T+10*C2,
2*T+R+C2 =:= X+10*C3,
O+C3 =:= I+10*C4,
F+C4 =:= S.
member(X, [X|_]).
member(X, [_|Z]):-
member(X,Z).

%GOAL
% solution([T,E,N,F,O,R,Y,S,I,X]).
