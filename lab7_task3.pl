% Joining the input list with a single-element list [X]
add_at_the_end(X, List, Result) :-
    append(List, [X], Result).
