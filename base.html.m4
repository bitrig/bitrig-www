define(`inchtml', `include(`./incs/$1.html.m4')')dnl
define(`wiki', ``https://github.com/bitrig/bitrig/wiki/$1'')dnl
dnl
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Bitrig</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width">

    <link rel="stylesheet" href="css/normalize.min.css">
    <link rel="stylesheet" href="css/main.css">
  </head>
  <body>
    <div id="container">
      <div id="sidebar">
        <img id="logo" src="/img/logo.png" alt="[Bitrig]" width=170 height=90>
        <ul id="navigation">
          <li><a href="/index.html">About</a></li>
          <li><a href="/downloads.html">Downloads</a></li>
          <li><a href="wiki(`Roadmap')">Roadmap</a></li>
          <li><a href="wiki(`Faq')">FAQ</a></li>
          <li><a href="/changes.html">Change Notes</a></li>
          <li><a href="https://github.com/bitrig/">GitHub</a></li>
          <li><a href="https://twitter.com/bitrig">Twitter</a></li>
        </ul>
      </div>
      <div id="content">
        include(CONTENT)
      </div>
      <div id="footer">Copyright &copy; esyscmd(`date +%Y') Bitrig</div>
    </div>
  </body>
</html>
dnl
undefine(`inchtml')dnl
undefine(`wiki')dnl
