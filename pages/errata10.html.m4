<h1>Bitrig 1.0 Errata</h1>

<p>
  The following patches are available in the stable/1.0 branch in our git
  repository.
</p>

<ul class="list-group">
define(`ERRATUM', `
  <li class="list-group-item">
    <b>$1</b> $2
    <a href="https://github.com/bitrig/bitrig/commit/$3.patch">patch</a>
    <br>
    $4
  </li>
')dnl
ERRATUM(`STABILITY FIX', `Jan 30, 2015', `8425294fee2c566c56940716cb05dbfa3f93b589', `
Incorrect buffer handling in WAPBL(4) causes buffers to be leaked and can thus
lead to out-of-memory conditions.
')
ERRATUM(`SECURITY FIX', `Jan 30, 2015', `cfdcb026927167badd77a345b2074ce22662f653', `
CVE-2014-6272 - potential heap overflow in libevent's buffer/bufferevent APIs
')
ERRATUM(`STABILITY FIX', `Dec 11, 2014', `dcc357b948a535cc254168aaed7aa67e874efec8', `
Calling scanf() with a format string containing a certain combination of %n and
%f leads to an incorrect return value.
')
ERRATUM(`RELIABILITY FIX', `Dec 5, 2014', `e72665eec00a00bfe4f44e2057fac95da529287f', `
A type signedness mismatch prevents correct error handling.
')
ERRATUM(`RELIABILITY FIX', `Dec 5, 2014', `c2711f886dcd8b7a5e26503002165fd692c3cd3b', `
iked: Flaws in certificate handling lead to crashes.
')
ERRATUM(`SECURITY FIX', `Dec 3, 2014', `430c74f1680d36cf8fe01e33d04087268a96b9a8', `
CVE-2014-8602 - unbound(8) can be tricked into following an endless series of
delegations.
')
ERRATUM(`RELIABILITY FIX', `Dec 3, 2014', `66782d866d747df956148d863aebd73f96cdfd6d', `
Several issues have been fixed in httpd.
')
ERRATUM(`RELIABILITY FIX', `Dec 3, 2014', `ddd5f23457555f3583ce718bb10721c6772cb1de', `
A memcpy() with overlapping arguments can lead to crashes with PPPoE.
')
ERRATUM(`RELIABILITY FIX', `Dec 3, 2014', `ee4d85b388ed2e1adb50e6b75e5d0224a0696703', `
Several bugs in pipex allowed crashes from remote.
')
ERRATUM(`RELIABILITY FIX', `Dec 3, 2014', `811a48828a52da21f829bf8bee067db31d0b0b5d', `
Calling gethostbyname() with an incorrect hostname could cause a NULL
dereference.
')
ERRATUM(`RELIABILITY FIX', `Dec 3, 2014', `0a58fbe8e122038f27e9fb6342c5f7bef842f7b4', `
relayd crashes on HTTP requests w/out version number.
')
</ul>
