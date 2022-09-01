#!/bin/sh
#
# Starts a local fast-synced geth node.

DEFAULT_NETWORK=mainnet

if [ "$NETWORK" = "" ]; then
	NETWORK=$DEFAULT_NETWORK
fi


if [ "$START_GETH" != "" ]; then
	if [ "$NETWORK" != "$DEFAULT_NETWORK" ]; then
                exec geth --authrpc.addr "0.0.0.0" --authrpc.port 8551 --authrpc.vhosts=* --authrpc.jwtsecret /root/scripts/jwtsecret --metrics --metrics.addr="0.0.0.0"
	else
		exec geth --authrpc.addr "0.0.0.0" --authrpc.port 8551 --authrpc.vhosts=* --authrpc.jwtsecret /root/scripts/jwtsecret --metrics --metrics.addr="0.0.0.0"
		#exec geth --http --http.addr "0.0.0.0" --http.vhosts=* --http.api "eth,net" --ipcdisable --metrics --metrics.addr="0.0.0.0"
	fi
fi
