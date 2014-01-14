<h1>Roadmap</h1>

<p>
We are fighting a couple of issues as of now. A list of currently open issues
can be found on the
<a href="https://github.com/bitrig/bitrig/issues">GitHub issues page</a>.
</p>

<h2>Long Term Roadmap</h2>

<table class="roadmap">
  <thead>
    <tr>
      <th>Item</th>
      <th>Description</th>
      <th>Comments</th>
    </tr>
  </thead>

  <tbody>
    <tr>
      <td>
        <a href="http://en.wikipedia.org/wiki/Kernel-based_Virtual_Machine">KVM</a>
        support
      </td>
      <td>Add kernel and user space changes to support KVM</td>
      <td></td>
    </tr>

    <tr>
      <td>ARM support</td>
      <td>Add support for beagle and panda board</td>
      <td>
        In progress, we have a booting board that is almost compiling itself
      </td>
    </tr>

    <tr>
      <td>Fine grained MP</td>
      <td>Get rid of biglock</td>
      <td></td>
    </tr>

    <tr>
      <td><a href="http://www.netbsd.org/docs/puffs/">FUSE/puffs</a> support</td>
      <td>Add kernel and user space pieces to support FUSE functionality.</td>
      <td></td>
    </tr>

    <tr>
      <td>Support latest GNU binutils ld</td>
      <td>
        Port latest GNU binutils ld in order to get things like gold and LTO
      </td>
      <td>Basically done but we need to re-enable w^x</td>
    </tr>

    <tr>
      <td>Port <a href="http://libcxx.llvm.org">libc++</a> to Bitrig</td>
      <td>In order to remove need for libstdc++</td>
      <td>In progress.  Pending on libc xlocale port from FreeBSD</td>
    </tr>

    <tr>
      <td>
        Port
        <a href="http://code.google.com/p/address-sanitizer/">address-sanitizer</a>
        to Bitrig
      </td>
      <td>Adds additional protection for built-in compiler functions</td>
      <td>Part of compiler-rt</td>
    </tr>

    <tr>
      <td>
        <del>
          Port
          <a href="http://sourceforge.net/apps/trac/elftoolchain/">elftoolchain</a>
          to Bitrig
        </del>
      </td>
      <td><del>Replace old GNU tools</del></td>
      <td>Porting complete but not flipped yet</td>
    </tr>

    <tr>
      <td>-Wpointer-arith cleanup </td>
      <td>
        Remove all -Wpointer-arith warnings by removing pointer arith on void *
      </td>
      <td></td>
    </tr>
  </tbody>
</table>

<p>
If you are interested in hacking on an OS, please come talk to us on
<a href="/irc.html">IRC</a>. We hang out on the
<a href="http://www.oftc.net">OFTC</a> network in #bitrig on irc.oftc.net.
</p>
