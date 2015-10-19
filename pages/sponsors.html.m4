<h1>Sponsors</h1>

<div class="alert alert-success" style="color: #222222;">
  The following is a list of our sponsors.
  Thank you very much for your support.
</div>

<h2>Companies</h2>

<div class="row vertical-center">
define(`C', `
  <div class="col-xs-4 col-md-3">
    <a href="$2" class="thumbnail">
      <img src="$3" alt="$1">
    </a>
  </div>
')dnl
C(`AMD', `http://www.amd.com/', `/img/vendors/amd.png')
C(`Company 0', `http://www.companyzero.com/', `/img/vendors/companyzero.png')
C(`Gateworks', `http://www.gateworks.com/', `/img/vendors/gateworks.png')
C(`PC Engines', `http://www.pcengines.ch/', `/img/vendors/pcengines.gif')
C(`Rikomagic', `http://www.rikomagic.com', `/img/vendors/rikomagic.jpg')
C(`Scaleway', `http://www.scaleway.com/', `/img/vendors/scaleway.png')
C(`SolidRun', `http://www.solid-run.com/', `/img/vendors/solidrun.png')
</div>

<h2>Contributors</h2>

<table class="table table-striped table-condensed">
  <tbody>
define(`P', `
    <tr>
      <td>$1</td>
      <td>$2</td>
    </tr>
')dnl
P(`Christer Solskogen', `Compulab Utilite Pro')
P(`Christer Solskogen', `Nvidia Shield')
  </tbody>
</table>

<style type="text/css">
/* Kludge to make flex wrap properly. */
.col-xs-4 {
  width: 33%;
}
@media (min-width: 992px) {
  .col-md-3 {
    width: 24%;
  }
}
.vertical-center {
  display: -ms-flexbox; /* IE 10 */
  display: -webkit-flex; /* Safari and iOS */
  display: flex;
  -webkit-align-items: center;
  align-items: center;
  -webkit-flex-wrap: wrap;
  flex-wrap: wrap;
}
</style>
