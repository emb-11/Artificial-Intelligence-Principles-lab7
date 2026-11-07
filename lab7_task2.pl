% Base case: deleting from an empty list 
deleteElement(_, [], []).

% If the head matches X, discard it and continue filtering the tail
deleteElement(X, [X|Tail], Result) :-
    deleteElement(X, Tail, Result).

% If the head does not match X, keep it in the result list and continue
deleteElement(X, [Head|Tail], [Head|ResultTail]) :-
    X \= Head,
    deleteElement(X, Tail, ResultTail).
