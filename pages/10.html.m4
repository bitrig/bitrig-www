<h1>Bitrig 1.0</h1>

<div class="alert alert-success" style="color: #222222;">
  The Bitrig team is pleased to announce the availability of the Bitrig 1.0
  release. This is the first release of the Bitrig operating system and has
  many great changes since our initial fork from OpenBSD. This includes changes
  from OpenBSD up to their 5.6 release.
</div>

<h2>Key Features</h2>

<table class="table table-striped table-condensed">
  <tbody>
define(`O', `<tr><td><span>&#x25CF;</span> $1</td></tr>')dnl
O(`LLVM/Clang 3.4 in base, replacing the outdated GNU GCC 4.2.1 to improve performance and C/C++ compatibility')
O(`libc++ and libc++abi replaces GNU libstdc++')
O(`FFS2 is the default file system and it has journal support (WAPBL) and booting capability')
O(`tmpfs replaces mfs and includes new features such as snapshots and tmpfsrd(4) ramdisk')
O(`Unlimited sized bsd.rd using the new tmpfsrd(4) driver')
O(`Thread-local storage (TLS) support')
O(`Support for UUIDs and xlocales in libc')
O(`Support for using GPT partitioned storage with an fdisk-like tool')
O(`Usability improvements in fdisk')
O(`Flashable USB boot image for amd64')
O(`ARM EABI + hard-float and improved armv7 SoC support')
O(`Fair kernel mutexes implemented using C11 atomic operations')
O(`ps(1): improved posix compliance &amp; hierarchical output')
O(`Only one GNU tool in base (texinfo)')
O(`Single snapshot target for src and xenocara')
O(`Source code hosted on Github')
O(`Comprehensive collection of ports and packages')
O(`And most importantly: Hacker style console with green text on black background')
  </tbody>
</table>
