{% extends 'layouts/main.swig' %}

{% block pagetitle %}Change Notes{% endblock %}

{% block content %}
<h1>Change Notes</h1>

{% for change in changes %}
    <h3><a name="{{ change.publishdate|replace('/') }}" href="#{{ change.publishdate|replace('/') }}">{{ change.publishdate }} - {{ change.title }}</a></h3>
    <p>{{ change.summary }}</p>
    {% if change.commands %}
    <!-- @todo this is messy - sort it -->
        <pre>
{{ change.commands|join('<br />')|safe }}
        </pre>
    {% endif %}
{% endfor %}

<!--
note(2014,03,26,`rmail(8) and uucpd(8) moved to ports')
<p>
/bin/rmail and uucpd(8) have been removed from the base system and added to the
ports tree. As a result, the old binaries and manual pages should be removed:
</p>
<pre>
    rm -f /bin/rmail
    rm -f /usr/share/man/man8/rmail.8
    rm -f /usr/libexec/uucpd
    rm -f /usr/share/man/man8/uucpd.8
</pre>
<p>
Users of these programs should install the rmail and uucpd packages instead.
</p>

note(2014,03,24,`tcpwrappers removed')
<p>
libwrap and tcpd have been removed. The leftover remnants must be purged.
The entries in /etc/host.{allow,deny} can be converted into filtering rules
in /etc/pf.conf.
</p>
<pre>
    rm -f /usr/lib/libwrap{,_p}.*
    rm -f /usr/libexec/tcpd
    rm -f /usr/include/tcpd.h
    rm -f /usr/sbin/tcpd{chk,match}
    rm -f /usr/share/man/man3/hosts_access.3
    rm -f /usr/share/man/man5/hosts.{allow,deny}.5
    rm -f /usr/share/man/man5/hosts_{access,options}.5
    rm -f /usr/share/man/man8/tcpd{,chk,match}.8
    rm -f /etc/hosts.{allow,deny}
</pre>

note(2014,03,23,`mount(2) changes for NFS, mfs, msdosfs, and ntfs')
<p>
Changes to the mount(2) API/ABI means that NFS servers must rebuild mountd(8)
against the updated headers and restart it after rebooting to the new kernel.
Similarly, the mount_mfs(8), mount_msdos(8), and mount_ntfs(8) must be
recompiled and reinstalled. Installing a new snapshot is as always recommended.
</p>

note(2014,03,23,`Miscellaneous functions removed')
<p>
Miscellaneous functions have been removed from libc. The corresponding header
files must be deleted.
</p>
<pre>
    rm -f /usr/include/bm.h
    rm -f /usr/include/md4.h
</pre>

note(2014,03,19,`rcp(1) removed')
<p>
rcp(1) has been removed. As a result, the binary and manual page should be
removed:
</p>
<pre>
    rm -f /bin/rcp /usr/share/man/man1/rcp.1
</pre>

note(2014,03,17,`userland ppp(8) and pppoe(8) implementations removed')
<p>
The userland ppp(8) daemon and its associated PPPoE helper, pppoe(8), have been
removed. As a result, the old binaries and manual pages should be removed:
</p>
<pre>
    rm -f /etc/ppp/ppp.{conf,linkdown,linkup,secret}.sample
    rm -f /usr/sbin/ppp /usr/share/man/man8/ppp.8
    rm -f /usr/sbin/pppctl /usr/share/man/man8/pppctl.8
    rm -f /usr/sbin/pppoe /usr/share/man/man8/pppoe.8
</pre>
<p>
Many users will be able to migrate to the kernel implementations: pppoe(4)
(for PPPoE), ppp(4) and its associated control program pppd(8) (for modems,
mobile data, and some use with userland programs via a pipe).  Another option
for some users is npppd(8) which supports L2TP, PPTP and PPPoE (currently
server-side, IPv4 only).
</p>

note(2014,03,17,`userland agp(4) interfaces removed')
<p>
With the introduction of KMS, userland access to agp(4) is no longer needed.
Since these interfaces provided low-level access to the hardware, they have
been removed. You should remove the associated header file:
</p>
<pre>
    rm -f /usr/include/sys/agpio.h
</pre>

note(2014,03,17,`ftpd(8) disallows uid < 1000 by default')
<p>
ftpd(8) now defaults to denying access to user accounts with uid below 1000.
See the -m option if you need to change this.
</p>

note(2014,03,16,`[ports] unbound(8) moved to base')
<p>
Unbound has moved to the base OS.
If the package is installed, remove it before upgrading to avoid a conflict
in /etc/rc.d/unbound, and edit rc.conf.local to remove "unbound" from
"pkg_scripts=..." lines, and add "unbound_flags=" instead.
</p>
<pre>
    pkg_delete unbound
    vi /etc/rc.conf.local
</pre>
<p>
The following applies only to those updating from source, or updating
from a snapshot without using sysmerge: The _unbound user should be
added using vipw (or the UID should be modified if you were previously
using Unbound from ports).
</p>
<pre>
    _unbound:*:53:53::0:0:Unbound Daemon:/var/unbound:/sbin/nologin
</pre>
<p>
And _unbound group.
</p>
<pre>
    _unbound:*:53:
</pre>
<p>
On or before March 19, sysmerge(8) was unable to do the /etc/group
crossing automatically if updating from source. Manual intervention
will be required in those situations.
</p>

note(2014,03,13,`_smtpq user added')
<p>
A new _smtpq user and group have been added to support privilege separation
in smtpd. Add the following passwd line using vipw.
</p>
<pre>
    _smtpq:*:103:103::0:0:SMTP Daemon:/var/empty:/sbin/nologin
</pre>
<p>
Add the following line to /etc/group.
</p>
<pre>
    _smtpq:*:103:
</pre>
<p>
If you have previously started smtpd, you will need to change the owner of
the queue subdirectories.
</p>
<pre>
    cd /var/spool/smtpd
    chown -R _smtpq corrupt incoming purge queue temporary
</pre>

note(2014,03,12,`spray removed')
<p>
/usr/sbin/spray and the associated rpc daemon have been removed.
</p>
<pre>
    rm -f /usr/sbin/spray
    rm -f /usr/libexec/rpc.sprayd
    rm -f /usr/share/man/man8/{,rpc.}spray{,d}.8
    vi /etc/inetd.conf
</pre>

note(2014,03,01,`[src] special ftp directory needs removal in git checkout')
<p>
Previously a small ftp(1) for the ramdisk, without SSL support, was built in the
distrib/special directory. We replaced it with the full ftp(1) binary, to be
able to use HTTPS with all its benefits. An obj directory, which contains
compiled objects, might block git from removing the directory. To properly run
builds, this directory has to be manually removed:
</p>
<pre>
    rm -rf /usr/src/distrib/special/ftp
</pre>

note(2014,01,20,`amd64/i386 installboot')
<p>
The amd64 and i386 architectures have switched to the new installboot(8). As a
result, the old binary and manual should be removed:
</p>
<pre>
    rm -f /usr/mdec/installboot
    rm -f /usr/share/man/man8/{amd64,i386}/installboot.8
</pre>

note(2014,01,12,`freetype updated')
<p>
Freetype in Xenocara was updated to 2.5.2. This update moves the headers files
around. Old headers need to be manually removed:
</p>
<pre>
    rm -rf /usr/X11R6/include/freetype2/freetype
    rm -f /usr/X11R6/include/ft2build.h
</pre>
-->
{% endblock %}
