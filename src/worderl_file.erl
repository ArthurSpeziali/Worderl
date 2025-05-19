%%%-------------------------------------------------------------------
%% @doc worderl file utilities module.
%% @end
%%%-------------------------------------------------------------------

-module(worderl_file).
-export([get_file/1]).


-spec get_file(string()) -> {atom(), binary() | atom()}.
get_file(Path) when is_list(Path) ->
    case file:read_file(Path) of
         {ok, Content} -> 
            {ok, string:split(Content, "\n", all)};

         {error, _reason} -> {error, nonexists}
    end.
