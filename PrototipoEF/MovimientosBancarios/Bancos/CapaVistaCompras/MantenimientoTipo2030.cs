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
    public partial class MantenimientoTipo2030 : Form
    {
        public MantenimientoTipo2030()
        {
            InitializeComponent();
            TextBox[] alias = navegador1.funAsignandoTexts(this);
            navegador1.funAsignarAliasVista(alias, "tipomovimiento", "prototipoef");
            navegador1.funAsignarSalidadVista(this);
            navegador1.campoEstado = "estado";
            navegador1.idAplicacion = "2030";
            navegador1.tablaAyuda = "aplicacion";
            navegador1.campoAyuda = "pkId";
            navegador1.pideGrid(dataGridView1);
            navegador1.llenaTabla();
            navegador1.pedirRef(this);
        }

        public void funActualizarUsuario(string user)
        {
            navegador1.usuario = user;
            navegador1.aplicacion = "MantenimientoTipo2030";
            navegador1.funActualizarPermisos();
            navegador1.idmodulo = "2";
            navegador1.funReportesVista("ruta", "idAplicacion", "Reporte");
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

        private void MantenimientoTipo2030_Load(object sender, EventArgs e)
        {

        }
    }
}
