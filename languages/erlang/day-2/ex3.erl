-module(ex3).
-export([tictactoe/1]).

tictactoe([o,o,o,_,_,_,_,_,_]) -> o;
tictactoe([_,_,_,o,o,o,_,_,_]) -> o;
tictactoe([_,_,_,_,_,_,o,o,o]) -> o;
tictactoe([o,_,_,o,_,_,o,_,_]) -> o;
tictactoe([_,o,_,_,o,_,_,o,_]) -> o;
tictactoe([_,_,o,_,_,o,_,_,o]) -> o;
tictactoe([o,_,_,_,o,_,_,_,o]) -> o;
tictactoe([_,_,o,_,o,_,o,_,_]) -> o;
tictactoe([x,x,x,_,_,_,_,_,_]) -> x;
tictactoe([_,_,_,x,x,x,_,_,_]) -> x;
tictactoe([_,_,_,_,_,_,x,x,x]) -> x;
tictactoe([x,_,_,x,_,_,x,_,_]) -> x;
tictactoe([_,x,_,_,x,_,_,x,_]) -> x;
tictactoe([_,_,x,_,_,x,_,_,x]) -> x;
tictactoe([x,_,_,_,x,_,_,_,x]) -> x;
tictactoe([_,_,x,_,x,_,x,_,_]) -> x;

tictactoe([]) -> cat;
tictactoe([Head|Tail]) -> if
                              Head == b -> no_winner;
                              Head /= b -> tictactoe(Tail)
                          end.
