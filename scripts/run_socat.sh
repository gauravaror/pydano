dir=$(pwd)
echo $dir/testnet/node.socket
echo $dir/mainnet/node.socket
export CARDANO_NODE_SOCKET_PATH=$dir/testnet/node.socket
socat UNIX-LISTEN:$dir/testnet/node.socket,fork,reuseaddr,unlink-early, TCP:52.63.196.75:8080&
socat UNIX-LISTEN:$dir/mainnet/node.socket,fork,reuseaddr,unlink-early, TCP:52.63.196.75:80&
disown %1
disown %2
