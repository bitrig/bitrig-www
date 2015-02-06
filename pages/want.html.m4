<h1>Donate Hardware</h1>

<p>
  If you're interested in supporting us by donating hardware, these are the
  things our developers are looking for. You can either approach us on
  <a href="wiki(`Irc')">IRC</a> or shoot a mail to name@bitrig.org.
</p>

<ul class="list-group">
define(`DONATE', `
  <li class="list-group-item">
    <b>$1</b> $2
    <br>
    $3
  </li>
')dnl
DONATE(`ARMv8 development board', `patrick@ (Germany), drahn@ (US)', `
ARMv8 is the architecture of the future. Every ARM-based device to be
released will be based on it. To help port Bitrig, we would love to gain
access to a development board.
')
DONATE(`SSDs', `all (Europe/US), contact patrick@', `
To help run our build and test machines we would like to supply those with
SSDs. For build machines, especially ports, bigger SSDs would be better.
On the test machines every disk is appreciated, no matter the size.
')
</ul>
