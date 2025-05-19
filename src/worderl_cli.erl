%%%-------------------------------------------------------------------
%% @doc worderl commands for escript.
%% @end
%%%-------------------------------------------------------------------

-module(worderl_cli).
-mode(compile).
-export([main/1]).


main(Args) ->
    case Args of
        [] -> io:format("No one argument.\n");
        _ -> io:format("Has ~p argument(s).", [length(Args)])
    end.
