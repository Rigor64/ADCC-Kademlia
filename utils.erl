-module(utils).

-export([calculateDistance/2]).

calculateDistance(NodeID1, NodeID2) ->
    % Calculate the xor distance between the nodes
    <<Distance>> = binary:match(NodeID1, NodeID2, 'xor'),
    Distance
.