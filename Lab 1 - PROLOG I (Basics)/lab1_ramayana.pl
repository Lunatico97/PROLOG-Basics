/*
%PREDICATES
husband(STRING, STRING).
father(STRING, STRING).
mother(STRING, STRING).
son(STRING, STRING).
*/

%CLAUSES
mother("Kaushalya", "Ram").
mother("Kaikai", "Bharat").
mother("Sumitra", "Laxman").
mother("Sumitra", "Satrugan").

husband("Dasrath", "Kaushalya").
husband("Dasrath", "Kaikai").
husband("Dasrath", "Sumitra").

son(A, C):- mother(C, A).
son(A, C):- husband(C, B), mother(B, A).

father(A, B):- husband(A, C), mother(C, B).

%GOALS
son(X, "Kaikai").

