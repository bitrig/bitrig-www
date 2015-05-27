<h1>Donations</h1>

<p>
  The following is a list of our donors and their donations. Thank you very
  much for your support.
</p>

<table class="table table-striped table-condensed">
  <tbody>
define(`O', `
    <tr>
      <td>
        ifelse($3, `', `', `<a href="$3">')
          ifelse($4, `', `$1', `<img src="$4" alt="$1" height=24>')
        ifelse($3, `', `', `</a>')
      </td>
      <td>
        $2
      </td>
    </tr>
')dnl
O(`Gateworks', `Ventana GW5520', `http://www.gateworks.com/', `img/vendors/gateworks.png')
O(`PC Engines', `APU1D4', `http://www.pcengines.ch/', `img/vendors/pcengines.gif')
O(`Scaleway', `C1 server development kit', `http://www.scaleway.com/', `img/vendors/scaleway.png')
  </tbody>
</table>
