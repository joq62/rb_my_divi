%%%-------------------------------------------------------------------
%% @doc rb_my_add public API
%% @end
%%%-------------------------------------------------------------------
 
-module(rb_my_divi_app).

-behaviour(application).

-export([start/2, stop/1]).

start(_StartType, _StartArgs) ->
    rb_my_divi_sup:start_link().

stop(_State) ->
    ok.

%% internal functions
