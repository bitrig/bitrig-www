define(`NAME', `<strong>$1</strong><br>')dnl
define(`URL', `<a href="$1">$1</a><br>')dnl
define(`URLS', `URL(`$1')ifelse(`$2', `', `', ` URLS(shift($@))')')dnl
define(`MIRROR', `<p>NAME(`$1') URLS(shift($@))</p>')dnl
dnl
dnl Define mirrors below.
dnl MIRROR(location, urls..)
MIRROR(`Chicago, IL, USA',
  `http://mirror2.us.bitrig.org/pub/bitrig/')
MIRROR(`Harrisonburg, VA, USA',
  `http://mirror.jmu.edu/pub/bitrig/',
  `ftp://mirror.jmu.edu/pub/bitrig/')
dnl
undefine(`NAME', `URL', `URLS', `MIRROR')dnl
