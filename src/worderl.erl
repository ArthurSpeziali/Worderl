%%%-------------------------------------------------------------------
%% @doc worderl main module.
%% @end
%%%-------------------------------------------------------------------

-module(worderl).
-export([open_file/1]).

open_file(Path) when is_list(Path) ->
    {ok, Path}.
    
