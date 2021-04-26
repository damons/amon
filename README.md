# amon
Monitor shell script for snarkOS

## Dependencies

Uses `zsh`.

Also requires `jq` to query `json` structures to extract their contents.
Brew info on `jq`:

```
jq: stable 1.6 (bottled), HEAD
Lightweight and flexible command-line JSON processor
https://stedolan.github.io/jq/
```

On OS X use:
```
$ brew install jq
```

There's likely an `apt` equivalent on Linux, but I haven't tried it there.

## Usage

```
$ ./amon.sh 10.0.1.13 3030 15
```

Where the first argument (`10.0.1.13`) is the IP of the node and second argument, `3030` is the port of the Aleo RPC server, and the third argument,  `15` , is the number of seconds between refresh.

Sample output:

```
AMON - Monitoring snarkOS node: 10.0.1.89
-----------------------------------------------
PEERS:
[
  "64.225.91.43:4131"
]
NODE INFO:
{
  "is_miner": true,
  "is_syncing": false
}
CONNECTION COUNT:	1
BLOCK COUNT:		212884
```
