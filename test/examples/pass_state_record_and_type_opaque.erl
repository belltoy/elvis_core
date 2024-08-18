-module(pass_state_record_and_type_opaque).

-dialyzer(no_behaviours).

-behaviour(gen_server).

-export([
         init/1,
         handle_call/3,
         handle_cast/2,
         handle_info/2,
         code_change/3,
         terminate/2
        ]).

-export_type([state/0]).

-record(state, {}).

-opaque state() :: #state{}.

-spec init(term()) -> state().
init(_Args) ->
    #state{}.

-spec handle_call(term(), term(), term()) -> ok.
handle_call(_Request, _From, _State) ->
    ok.

-spec handle_cast(term(), term()) -> ok.
handle_cast(_Request, _State) ->
    ok.

-spec handle_info(term(), term()) -> ok.
handle_info(_Info, _State) ->
    ok.

-spec code_change(term(), term(), term()) -> term().
code_change(_OldVsn, State, _Extra) ->
    {ok, State}.

-spec terminate(term(), term()) -> ok.
terminate(_Reason, _State) ->
    ok.
