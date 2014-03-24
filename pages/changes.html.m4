define(`note', `<h3><a name="$1$2$3" href="#$1$2$3">$1/$2/$3 - $4</a></h3>')dnl
dnl
<h1>Change Notes</h1>

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
