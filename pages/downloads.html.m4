<h1>Mirrors</h1>

esyscmd(`./bin/gen-mirrors-html data/mirrors')

<div class="well">

  <p>
    You can use signify(1) to verify the integrity and authenticity of the
    downloaded files:
    <br>
    <tt>
$ signify -C -p <a href="/bitrig-10-base.pub">/etc/signify/bitrig-10-base.pub</a> -x SHA256.sig cd10.iso
    </tt>
  </p>

  <span class="pull-right">
    inchtml(`twitter-button')
  </span>

  <p>
    If you plan to help us working on the next version of Bitrig, grab a
    <a href="wiki(`Snapshots')">snapshot</a> from one of our mirrors. See the
    <a href="https://github.com/bitrig/bitrig/blob/master/UPDATING">Change Notes</a>
    for upgrade instructions.
  </p>
</div>
