using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using CapaVistaSeguridadHSC;
using CapaVista;
using CapaVistaReporte;

namespace CapaVistaCompras
{
    public partial class Area_Compras : Form
    {        

        public Area_Compras()
        {
            InitializeComponent();
        }

        private void Area_Compras_Load(object sender, EventArgs e)
        {
            this.Hide();
            frmLoginHSC form = new frmLoginHSC();
            if (form.ShowDialog() == DialogResult.OK)
            {
                txtusuario.Text = form.usuario();
                this.Show();
            }
            else
            {
                this.Close();
            }
        }

        private void cerrarSesiónToolStripMenuItem_Click(object sender, EventArgs e)
        {
            this.Hide();
            frmLoginHSC form = new frmLoginHSC();
            if (form.ShowDialog() == DialogResult.OK)
            {
                txtusuario.Text = form.usuario();
                this.Show();
            }
            else
            { this.Close();
                txtusuario.Text = "";
                this.Close();
            }

        }

        private void salirToolStripMenuItem_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void consultasInteligentesToolStripMenuItem_Click(object sender, EventArgs e)
        {
            menuconsultas formulario = new menuconsultas();
            formulario.Show();
        }

        private void reporteadorToolStripMenuItem_Click(object sender, EventArgs e)
        {
            ReporteadorAdmin formulario = new ReporteadorAdmin();
            formulario.MdiParent = this;
            formulario.Show();
        }

        private void moduloDeSeguridadToolStripMenuItem_Click(object sender, EventArgs e)
        {
            frmMIDSeguridad formulario = new frmMIDSeguridad();
            formulario.Show();
        }

        private void tipoDeMovimientoToolStripMenuItem_Click(object sender, EventArgs e)
        {
            MantenimientoTipo2030 formulario = new MantenimientoTipo2030();
            formulario.MdiParent = this;
            formulario.Show();
            formulario.funActualizarUsuario(txtusuario.Text);
        }

        private void cuentaContableToolStripMenuItem_Click(object sender, EventArgs e)
        {
            MantenimientoConta2020 formulario = new MantenimientoConta2020();
            formulario.MdiParent = this;
            formulario.Show();
            formulario.funActualizarUsuario(txtusuario.Text);

        }

        private void cuentaBancariaToolStripMenuItem_Click(object sender, EventArgs e)
        {
            MantenimientoBanco2025 formulario = new MantenimientoBanco2025();
            formulario.MdiParent = this;
            formulario.Show();
            formulario.funActualizarUsuario(txtusuario.Text);

        }

        private void movimientoToolStripMenuItem_Click(object sender, EventArgs e)
        {
            MovimientosBancarios2035 formulario = new MovimientosBancarios2035();
            formulario.MdiParent = this;
            formulario.Show();
            formulario.funActualizarUsuario(txtusuario.Text);
        }
    }
}
