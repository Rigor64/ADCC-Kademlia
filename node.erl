-module(node).

% modulo standard di Erlang per implementare processi server generici con un ciclo di vita definito.
-behaviour(gen_server).

%% API
-export([start_link/1, ping/1, store/2, find_node/1, find_value/1]).

%% Callbacks
%-export([init/1, handle_call/3, handle_cast/2, handle_info/2, terminate/2, code_change/3]).

%% =======================================================
%    API
%% =======================================================

% Start a gen_server process
start_link(NodeID) ->
    gen_server:start_link(?MODULE, NodeID, [])
.
% Used to verify that a node is still alive.
ping(NodeID) ->
    gen_server:call(NodeID, ping).

% Stores a (key, value) pair in one node.
store(Key, Value) ->
    ok
.

find_node(NodeID) ->
    ok
.

find_value(EntryID) ->
    ok
.


%% =======================================================
%    Callbacks
%% =======================================================
init(NodeID) ->
    {ok, #{id => NodeID, routing_table => []}}
.






% Hadle syncronous call
handle_call(ping, _From, State) ->
    {reply, pong, State};

handle_call({store, Key, Value}, _From, State) ->
    {reply, ok, State}
.
