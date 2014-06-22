-module(ex1).
-export([loop/0]).

loop() ->
    process_flag(trap_exit, true),
    receive
        new ->
            io:format("Creatin new translate service process.~n"),
            register(translator, spawn_link(fun translate_service:loop/0)),
            loop();
        {'EXIT', From, Reason} ->
            io:format("Process ~p died with reason ~p.", [From, Reason]),
            self() ! new,
            loop()
    end.
