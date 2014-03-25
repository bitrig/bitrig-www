define(`mirror', `http://mirror2.us.bitrig.org/pub/bitrig/$1')dnl
dnl
<h1>Downloads</h1>

<p>
We are in the process of getting our first public release ready. Please be
patient and check back often to see where we are at. The plan is to have
something available for public consumption soon.
</p>

<p>
We have <a href="wiki(`Snapshots')">snapshots</a> available for following
platforms:
</p>

<div class="downloads">
    <a href="mirror(`snapshots/amd64/current/')">amd64</a>
    <!-- <a href="mirror(`snapshots/i386/')">i386</a> -->
    <a href="mirror(`snapshots/armv7/current/')">armv7</a>
</div>
dnl
undefine(`arch')dnl
