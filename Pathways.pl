/*Consider the graph given below. Create a Prolog database to 
represent the connections between the graph. Then write a 
prolog program to test if a path is a valid path in the graph. 
The predicate should be called path and should behave as follows:
path([]).
False

path([a]).
False (actually any list with less than 2 elements should return false).

path([a,b]).
True

path([b,a]).
True

path([b,d]).
False (because there is no way to go from b to d)

path([d,e,c]).
True

path([c,e,g,h]).
False  (because there is no 'hop' from e to g).
Hint: you need to process the list recursively, peeling two elements 
off at a time from the front of the list. If those items are connected, 
you can proceed with recursion further down the list. You can stop when 
the list length is 2 items and they are marked as connected in your graph.*/

edge(a,b).
edge(a,c).
edge(a,d).
edge(b,a).
edge(b,c).
edge(b,h).
edge(c,a).
edge(c,b).
edge(c,a).
edge(c,g).
edge(c,e).
edge(d,a).
edge(d,e).
edge(h,d).
edge(h,g).
edge(g,h).
edge(g,c).
edge(g,f).
edge(e,d).
edge(e,c).
edge(e,f).  
edge(f,e).
edge(f,g).  

path([X,Y]) :- edge(X,Y).
path([X,Y|T]) :- edge(X,Y), path([Y|T]).
