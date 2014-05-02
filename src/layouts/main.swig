<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Bitrig - {% block pagetitle %}{% endblock %}</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width">

    <link rel="stylesheet" href="css/normalize.min.css">
    <link rel="stylesheet" href="css/main.css">
  </head>
  <body>
    <div id="container">
      <div id="sidebar">
        <img id="logo" src="img/logo.png" alt="[Bitrig]" width=170 height=90>
        <ul id="navigation">
          <li><a href="index.html">About</a></li>
          <li><a href="downloads.html">Downloads</a></li>
          <li><a href="{{wikiurl}}Roadmap">Roadmap</a></li>
          <li><a href="{{wikiurl}}Faq">FAQ</a></li>
          <li><a href="changes.html">Change Notes</a></li>
          <li><a href="https://github.com/bitrig/">GitHub</a></li>
          <li><a href="https://twitter.com/bitrig">Twitter</a></li>
        </ul>
      </div>
      <div id="content">
        {% block content %}{% endblock %}
      </div>
      <div id="footer">Copyright &copy; {{footerdate}} Bitrig</div>
    </div>
  </body>
</html>
