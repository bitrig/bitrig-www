define(`inchtml', `include(`./incs/$1.html.m4')')dnl
define(`wiki', ``https://github.com/bitrig/bitrig/wiki/$1'')dnl
dnl
<!DOCTYPE html>
<html lang=en>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bitrig</title>

    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/main.css">
  </head>
  <body>

    <nav class="navbar navbar-bitrig" role="navigation">
      <div class="container-fluid">

        <div class="navbar-header">
          <a class="navbar-brand" href="/">
            <img src="/img/logo.png" alt="[Bitrig]">
          </a>
        </div>

        <ul class="nav navbar-nav">
          <li><a href="/downloads.html">Downloads</a></li>
          <li><a href="/10.html">Release</a></li>
          <li><a href="/errata10.html">Errata</a></li>
          <li><a href="wiki(`Roadmap')">Roadmap</a></li>
          <li><a href="wiki(`Faq')">FAQ</a></li>
          <li><a href="https://github.com/bitrig/bitrig/blob/master/UPDATING">
            Change Notes</a></li>
          <li><a href="https://github.com/bitrig/">GitHub</a></li>
          <li><a href="/want.html">Donate Hardware</a></li>
        </ul>
      </div>
    </nav>

    <div class="container">
      <div class="row">
        <div class="col-md-12">
          include(CONTENT)
        </div>
      </div>

      <div id="footer">
        Copyright &copy; esyscmd(`date +%Y') Bitrig
      </div>
    </div>

    inchtml(`github-ribbon')

  </body>
</html>
dnl
undefine(`inchtml')dnl
undefine(`wiki')dnl
