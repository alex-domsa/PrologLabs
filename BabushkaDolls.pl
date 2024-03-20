/*Write a knowledge base using the predicate directlyIn/2 
which encodes which doll is directly contained in which 
other doll. Then, define a recursive predicate in/2 , 
that tells us which doll is (directly or indirectly) 
contained in which other dolls. 
For example:
in(katarina,natasha).
True
in(olga,katarina)
False.
Note: Pay attention to the order of the parameters.
in(A,B)
Note: Pay attention to the order of the parameters.
in(A,B)*/

directlyIn(katarina,olga).
directlyIn(olga,natasha).
directlyIn(natasha,irina).

in(X,Y) :- directlyIn(X,Y).
in(X,Y) :- directlyIn(X,Z), in(Z,Y).