-module(ex3).
-export([printresult/1]).

printresult({error, Message}) -> erlang:display(string:concat("Error: ", Message));
printresult(success) -> erlang:display("Success!").
