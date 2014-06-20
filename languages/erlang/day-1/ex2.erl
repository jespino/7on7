-module(ex2).
-export([count/0]).

count() -> count(10).

count(1) -> erlang:display(1);
count(N) -> count(N-1), erlang:display(N).
