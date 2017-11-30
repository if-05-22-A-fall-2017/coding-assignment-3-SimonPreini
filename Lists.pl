addElementHead(X,L,[X|L]).
addElementTail([],X,[X]).
addElementTail([H|T],X,[H|ExtendedTail]):- addElementTail(T,X,ExtendedTail).
hasLength([],0).
hasLength([H|T], N):- hasLength(T, Nleft), N is Nleft+1.
remove(X,[X|T],T).
remove(X,[H|T], [H|T2]):- remove(X,T,T2).
