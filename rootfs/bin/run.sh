mkdir -p /dev/net
if [ ! -c /dev/net/tun ]; then
    mknod /dev/net/tun c 10 200
fi

SERVER="$(jq --raw-output '.server' /data/options.json)"
PORT="$(jq --raw-output '.port' /data/options.json)"
NS_CERT_TYPE="$(jq --raw-output '.ns_cert_type' /data/options.json)"
EXTRA_CONFIG="$(jq --raw-output '.extra_config' /data/options.json)"

sed -i '' -e 's@##SERVER##@'"$SERVER"'@' /etc/openvpn/openvpn.conf
sed -i '' -e 's@##PORT##@'"$PORT"'@' /etc/openvpn/openvpn.conf
sed -i '' -e 's@##NS_CERT_TYPE##@'"$NS_CERT_TYPE"'@' /etc/openvpn/openvpn.conf
echo "$EXTRA_CONFIG" >> /etc/openvpn/openvpn.conf

openvpn /etc/openvpn/openvpn.conf