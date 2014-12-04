<h1>Bitrig 1.0 key features</h1>

<div class="alert alert-success" style="color: #222222;">
    The Bitrig team is pleased to announce the availability of the Bitrig 1.0
    release. This is the first release of the Bitrig operating system and has
    many great changes since our initial fork from OpenBSD. This includes changes
    from OpenBSD up to their 5.6 release.
</div>

<table class="table table-striped table-condensed">
  <tbody>
define(`O', `<tr><td><span>&#x25CF;</span> $1</td></tr>')dnl
O(`LLVM/Clang 3.4 replacing the outdated GNU GCC 4.6.2, and improving performance')
O(`libc++ and libc++abi replaces GNU libstdc++')
O(`FF2 now the default file system instead of FFS, with journaling support (WAPBL)')
O(`tmpfs replaces mfs and includes new features such as snapshots and tmpfsrd ramdisk')
O(`Unlimited size bsd.rd using the new tmpfsrd')
O(`Thread-local storage')
O(`Support for UUID')
O(`Support for using GPT partitioned storage with an fdisk-like tool (no boot support yet)')
O(`Usability improvements in fdisk')
O(`Flashable USB boot image for amd64')
O(`ARM EABI + hard-float and improved armv7 SoC support')
O(`ps(1): improved posix compliance &amp; hierarchical output')
O(`Version control using git')
O(`Support for xlocale from FreeBSD')
O(`All major software available in packages based on OpenBSD ports version 5.6')
  </tbody>
</table>
