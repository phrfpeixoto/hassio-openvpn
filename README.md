Forked from [TheSkorm/hassio-openvpn](https://github.com/TheSkorm/hassio-openvpn)

Thi is the OpenVPN client addon for [Hass.io](https://www.home-assistant.io/hassio/)

I decided to dingle with VPNs on my Hass.io setup because I wanted to have it externally accessible and secured with HTTPS, but without having to tweak with port numbers on it's config, so the idea was to connect it to my existing OpenVPN structure, and proxy it with nginx.


My Setup is a standard OpenVPN install using easyRSA certificates as described [here](https://openvpn.net/community-resources/how-to/)

To use this addon:
1. Install it
2. Create the share/openvpn folders on your Hass.io inscante (The easiest way is by usint the Samba addon).
3. Put your certificates inside share/openvpn:
  * share/openvpn/ca.crt
  * share/openvpn/client.crt
  * share/openvpn/client.key
4. Configure your server hostname and port through the hass.io web-ui
5. Start the addon

Once I have the setup complete I'll post my server config, as well as nginx's vhost files.
