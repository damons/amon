# amon
Monitor shell script for snarkOS

## Usage

```
$ ./amon.sh 10.0.1.13 15
```

Where the first argument (`10.0.1.13`) is the IP of the node and second argument,  `15` , is the number of seconds between refresh.

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
