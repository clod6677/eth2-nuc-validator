#!/bin/sh
#
# Starts a local fast-synced geth node.

DEFAULT_NETWORK=mainnet

if [ "$NETWORK" = "" ]; then
	NETWORK=$DEFAULT_NETWORK
fi


if [ "$START_GETH" != "" ]; then
	if [ "$NETWORK" != "$DEFAULT_NETWORK" ]; then
		exec geth snapshot prune-state --goerli
	else
		exec geth snapshot prune-state  --datadir /root/.ethereum/geth --db.engine=pebble
	fi
fi
