%%%-------------------------------------------------------------------
%% @doc worderl file utilities module.
%% @end
%%%-------------------------------------------------------------------

-module(worderl_file).
-export([split_file/2]).


-spec split_file(string(), line | word) -> {atom(), list()}.
split_file(Path, Action) when is_list(Path) ->

    case {file:read_file(Path), Action} of
        {{ok, Content}, line} -> 
            lists:filter(
              fun(Item) -> Item /= <<>> end, 
              string:split(Content, "\n", all)
             );


        {{ok, Content}, word} -> 
            Line_List = lists:filter(
                          fun(Bin) -> Bin /= <<>> end, 
                          string:split(Content, "\n", all)
                         ),

            lists:map(
              fun(Bin) -> string:split(Bin, " ", all) end,
              Line_List
             );


        {{error, _reason}, _Action} -> {error, nonexists}
    end.


