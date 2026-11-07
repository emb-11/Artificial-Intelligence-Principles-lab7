
start :-
    menu([coffee, milk, chocolate, apple, juice]).

menu(List) :-
    nl,
    write('** SHOPPING LIST **'), nl,
    write('d. display all items.'), nl,
    write('a. Add an item to the list.'), nl,
    write('e. exit.'), nl,
    write('ENTER YOUR CHOICE:'), nl,
    read(Choice),
    action(Choice, List).


action(d, List) :-
    display_items(List),
    menu(List).  


action(a, List) :-
    write('enter the item you want to add it: '), nl,
    read(Item),
    write('The item has been added'), nl,
    menu([Item | List]).  


action(e, _) :-
    nl, write('Goodbye!'), nl.


action(_, List) :-
    write('Invalid choice, try again.'), nl,
    menu(List). 


display_items([]).
display_items([Head | Tail]) :-
    write(Head), nl,
    display_items(Tail).
