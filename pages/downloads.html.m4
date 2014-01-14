<h1>Downloads</h1>

<h2>Currrent Version</h2>

<p>
We are in the process of getting our first public release ready. Please be
patient and check back often to see where we are at. The plan is to have
something available for public consumption soon. We currently do have
snapshots available.
</p>


<h2>Snapshots</h2>

<p>
Snapshots are currently built from master branch sources, every week on Sunday
(note that build machines are in GMT-5) and pushed to the mirrors on Mondays.
A weekly snapshot may not be available depending on issues encountered during
the scheduled build.
</p>


<h2>Mirrors</h2>

<p>
Currently, there are two mirrors serving snapshots via HTTP.
</p>

inchtml(`mirrors')

<h3>Mirror Hierarchy</h3>

<p>
All Bitrig mirrors have the same hierarchy, with <em>pub/bitrig/</em> being the
top level directory.
</p>

<div class="mirror_hierachy">
The layout is roughly as follows:<br>
<ul>
  <li>
    <em>pub/bitrig/</em> - Top level.
    <ul>
      <li><em>releases/</em> - Currently empty as no release has been made.</li>
      <li>
        <em>snapshots/</em>
        <ul>
          <li>
            <em>${ARCH}/</em> - amd64 (x86_64) / i386 / arm (Coming soon!)
            <ul>
              <li><em>${DATE}/</em> - A full binary snapshot with a packages subdirectory created on ${DATE}.</li>
              <li><em>current/</em> - The most recent snapshot - Usually a symlink to the most recent ${DATE}.</li>
            </ul>
          </li>
        </ul>
      </li>
    </ul>
  </li>
</ul>
</div>


<h2>Getting started with a snapshot</h2>

<p>
Users familiar with <a href="http://www.openbsd.org">OpenBSD</a> should
recognize the sets, but keep in mind that Bitrig only has two base system sets,
that is <em>baseXY.tgz</em> and <em>etcXY.tgz</em> along with the well known X
sets.
</p>

<p>
The most straightforward way to install Bitrig is either via PXE booting of
bsd.rd or by using the cdXY.iso.
</p>

<p>
Something that might suprise BSD users is the fact that by default, Bitrig does
not ship with a toolchain, as it has been moved into the ports system. This is
a consequence of a few factors
<p>

<ul>
  <li>
    Bitrig switched from using GCC as the system compiler to LLVM, so there has
    been a fair deal of flux in the build toolchain
  </li>

  <li>
    Managing the new dependencies introduced by using LLVM as the system
    compiler is much easier using the ports infrastructure than importing it
    into base
  </li>

  <li>
    By keeping the build toolchain outside of base it is not necessary to worry
    about the license on the toolchain components
  </li>
</ul>

<p>
For further information about the toolchain and getting started with Bitrig
development see the
<a href="https://github.com/bitrig/bitrig/issues">current issues page</a>.
</p>


<h2>Getting Source</h2>

<p>
Bitrig uses <a href="http://www.git-scm.org">git</a> as it's main version
control system. Ths source code is freely available on
<a href="https://github.com/bitrig">GitHub</a>.
Please visit our
<a href="https://github.com/bitrig/bitrig/wiki/Git-tips-and-tricks-page">
  git tips and tricks page
</a>
for more details.
</p>

<h3>Source trees</h3>

Currently Bitrig is comprised of three distinct repositories,
<ul>
  <li>bitrig.git - The base system repository.</li>
  <li>bitrig-xenocara.git - The Xorg/Xenocara respository.</li>
  <li>bitrig-ports.git - The ports respository.</li>
</ul>
