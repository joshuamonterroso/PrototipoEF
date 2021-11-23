using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace CapaVistaCompras
{
    public partial class MovimientosBancarios2035 : Form
    {
        public MovimientosBancarios2035()
        {
            InitializeComponent();
            TextBox[] alias = navegador1.funAsignandoTexts(this);
            navegador1.funAsignarAliasVista(alias, "movimientobanco", "prototipoef");
            navegador1.funAsignarSalidadVista(this);
            navegador1.campoEstado = "estado";
            navegador1.idAplicacion = "2035";
            navegador1.tablaAyuda = "aplicacion";
            navegador1.campoAyuda = "pkId";
            navegador1.pideGrid(dataGridView1);
            navegador1.llenaTabla();
            navegador1.pedirRef(this);
            navegador1.funLlenarComboControl(cmbbanco, "cuentasBancos", "IdCuenta", "nombreCuentaB", "EstadoCuentaB");
            navegador1.funLlenarComboControl(cmbmoneda, "moneda", "Pkid", "nombreMoneda", "estadoMoneda");
            navegador1.funLlenarComboControl(cmbtipo, "tipomovimiento", "idtipo", "nombre", "estado");
        }

        public void funActualizarUsuario(string user)
        {
            navegador1.usuario = user;
            navegador1.aplicacion = "MovimientosBancarios2035";
            navegador1.funActualizarPermisos();
            navegador1.idmodulo = "2";
            navegador1.funReportesVista("ruta", "idAplicacion", "Reporte");
        }

        private void MovimientosBancarios2035_Load(object sender, EventArgs e)
        {

        }

        private void rdbactivo_CheckedChanged(object sender, EventArgs e)
        {
            if (rdbactivo.Checked == true)
            {
                txtestado.Text = "A";
            }
        }

        private void rdbinactivo_CheckedChanged(object sender, EventArgs e)
        {
            if (rdbinactivo.Checked == true)
            {
                txtestado.Text = "I";
            }
        }

        private void dataGridView1_SelectionChanged(object sender, EventArgs e)
        {
            navegador1.funSeleccionarDTVista(dataGridView1);
        }

        private void txtestado_TextChanged(object sender, EventArgs e)
        {
            navegador1.funSetearRBVista(rdbactivo, rdbinactivo, txtestado);

        }

        private void txttipo_TextChanged(object sender, EventArgs e)
        {
            navegador1.funTextboxComboVista(cmbtipo, txttipo);
        }

        private void cmbtipo_SelectedIndexChanged(object sender, EventArgs e)
        {
            navegador1.funComboTextboxVista(cmbtipo, txttipo);
        }

        private void txtmoneda_TextChanged(object sender, EventArgs e)
        {
            navegador1.funTextboxComboVista(cmbmoneda, txtmoneda);
        }

        private void txtbanco_TextChanged(object sender, EventArgs e)
        {
            navegador1.funTextboxComboVista(cmbbanco, txtbanco);
        }

        private void cmbmoneda_SelectedIndexChanged(object sender, EventArgs e)
        {
            navegador1.funComboTextboxVista(cmbmoneda, txtmoneda);
        }

        private void cmbbanco_SelectedIndexChanged(object sender, EventArgs e)
        {
            navegador1.funComboTextboxVista(cmbbanco, txtbanco);
        }
    }
}
