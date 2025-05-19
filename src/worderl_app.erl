%%%-------------------------------------------------------------------
%% @doc worderl public API
%% @end
%%%-------------------------------------------------------------------

-module(worderl_app).

-behaviour(application).

-export([start/2, stop/1]).

start(_StartType, _StartArgs) ->
    worderl_sup:start_link().

stop(_State) ->
    ok.

%% internal functions
