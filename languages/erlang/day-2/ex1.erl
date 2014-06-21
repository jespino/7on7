-module(ex1).
-export([get/2]).

get([], _) -> false;
get([{Key, Value}|Tail], Keyword) -> if
                                        Key == Keyword -> Value;
                                        Key /= Keyword -> get(Tail, Keyword)
                                     end.
