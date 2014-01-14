<h1>IRC</h1>

<p>
Bitrig discussion is available on the <a href="http://www.oftc.net">OFTC</a>
IRC network.<br />
We hang out in channel #bitrig and handle all sorts of queries there.
</p>

<p>
Please see <a href="http://www.oftc.net/NickServ/CertFP/">NickServ</a> for
registering your nick and using a certificate to authenticate if you wish.
</p>

<p>
If you require SSL verification, you can get the certificate from the
<a href="http://www.oftc.net">OFTC</a> website.
</p>


<h2>Sample IRSSI configuration</h2>

<pre>
servers = (
  {
    address = "irc.oftc.net";
    chatnet = "oftc";
    port = "6697";
    use_ssl = "yes";
    ssl_verify = "yes";
    ssl_cafile = "~/.irssi/certs/spi-cacert.crt";
    autoconnect = "yes";
  }
);

chatnets = {
  oftc = {
    type = "IRC";
  };
};

channels = (
  { name = "#bitrig"; chatnet = "oftc"; autojoin = "yes"; }
);
</pre>
