-module(ex1).
-export([words/1]).

words([32|Tail]) -> 1 + words(Tail);
words([_|Tail]) -> words(Tail);
words([]) -> 1.
