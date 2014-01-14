define(`Q', `<strong>$1</strong>')dnl
dnl
<h1>Frequently Asked Questions</h1>

<h2>General</h2>

Q(What is Bitrig's goal?)

<p>
Bitrig wants to foster an open source community with the goal of creating an
operating system that is free and fun to work on. We want to leverage other
open source projects while being an active participant those communities.
</p>

<ul>
  <li>
    Target actively developing hardware only. Legacy platforms are fun to hack
    on however we are trying to go along with new trends.
  </li>

  <li>
    Make the base system as small as possible in order to be able to run on
    embedded systems.
  </li>

  <li>
    Use social networks to disseminate information and news.
  </li>

  <li>
    Become an incubator for students who wish to contribute via GSoC and
    internships.
  </li>

  <li>
    Be a commercially friendly code base by using BSD or ISC licenses where
    possible.
  </li>

  <li>
    We are aiming to have long lived releases and paid for maintenance (this
    process is still being defined).
  </li>

  <li>
    Do a major release every year with a quarterly RC (Release Candidate).
    Snapshots will be provided throughout the year as well.
  </li>
</ul>


Q(`Do you have a roadmap?')

<p>
Yes we do! Please see our <a href="/roadmap.html">roadmap</a> page.
</p>

Q(`Where is Bitrig located?')

<p>
Bitrig's foundation is based out of Iceland. Work is currently underway to
create a non-profit organization that can accept charitable donations in the
USA as well.
</p>

Q(`How do I contribute to Bitrig?')

<p>
We are always looking for developers who can help moving the project
forward.<br>
There are several ways one can contribute to Bitrig.
</p>

<ul>
  <li>
    Code, there are large todo items on our <a href="/roadmap.html">roadmap</a>
    and smaller ones (including bugs) on the
    <a href="https://github.com/bitrig/bitrig/issues">issues page</a>.
  </li>

  <li>
    Ports, we are still fighting plenty of ports issues due to the tuple
    change. Additionally we are looking for original ports as well.
  </li>

  <li>
    Artwork, we are always looking for more logos, icons etc.
  </li>
  <li>
    Advocacy, feel free to say nice things about us :-)
  </li>
</ul>

Q(`Is there a tips & tricks page?')

<p>
<a href="https://github.com/bitrig/bitrig/wiki/Tips-and-Tricks">Yes there is!</a>
</p>

Q(`Where did Bitrig come from?')

<p>
Bitrig was forked from <a href="http://www.openbsd.org/">OpenBSD</a>.
</p>

Q(`Why did you fork OpenBSD?')

<p>
OpenBSD is an amazing project and has some of the best code around but some of
us are of the opinion that it could use a bit of modernization. OpenBSD is a
very security conscious project and, correspondingly, has to be more
conservative with features. We want to be less restrictive with the codebase
when it comes to experimenting with features.
</p>

Q(`What is different from OpenBSD?')

<ol>
  <li>
    Architectures. Bitrig only supports current architectures, specifically,
    i386 and amd64. Support is planned for arm devices. We are not opposed to
    supporting other architectures, but our development efforts are directed
    towards modernization, not supporting old hardware.
  </li>

  <li>
    Compiler + toolchain. Bitrig is currently based on LLVM's clang 3.1, which
    provides performance gains over gcc 4.2 for both C and C++ code, and the
    latest GNU toolchain.
  </li>

  <li>
    New features planned, such as support for virtualization and journaling. As
    computers scale up in processor power and disk size, these technologies are
    increasingly useful.
  </li>
</ol>

Q(`How is Bitrig organized?')

<p>
Please see our <a href="/organization.html">organization</a> page.
</p>

Q(` Do you have mailing lists?')

<p>
  <em>src@lists.bitrig.org</em> - source changes, to subscribe email
  src+subscribe@lists.bitrig.org<br>
  <em>tech@lists.bitrig.org</em> - technical discussion / patch submission, to
  subscribe email tech+subscribe@lists.bitrig.org
</p>

Q(`Why is the project named Bitrig?')

<p>
The name Bitrig is derived from the Latin <em>Bitrigus</em>, the name of the
software used by the Romans to conquer Europe. Sadly, not having zero among its
numerals made traditional computer science difficult for the Romans and the
project was put on hold indefinitely. Bitrigus faded into obscurity until it
was recently rediscovered at a Viking archaeological site in the modern day
country of Iceland.
</p>

<p>
The Roman emperor Hadrian is rumored to have sent Bitrigus as far west as a
boat could carry it to keep it from the then growing threat of religious
fanaticism within the Roman Empire.
</p>

<h2>Ports</h2>

<p>
The current plan is to keep the OpenBSD ports tree, however, this plan may
change in the near future.
</p>

<p>
Developers are currently working on implementing the OS name change from
OpenBSD to Bitrig in ports. This is surprisingly non-trivial and the initial
focus is on ports that are widely used, e.g. mozilla-firefox, libreoffice.
</p>

<h2>Virtualization</h2>

<p>
In the coming months there will be infrastructure changes to facilitate
virtualization at close to native speeds. A particular approach has not been
selected so far and our goal will be to make virtualization possible with the
least negative impact to OS security.
</p>

<p>
We understand that the ability to virtualize guest OSes is often a trade-off
between utility and security. Expect this section to be updated as progress
occurs on the virtualization front.
</p>
dnl
undefine(`Q')dnl
