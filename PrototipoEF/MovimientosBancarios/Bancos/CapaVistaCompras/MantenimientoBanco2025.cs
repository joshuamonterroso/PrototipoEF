﻿using System;
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
    public partial class MantenimientoBanco2025 : Form
    {
        public MantenimientoBanco2025()
        {
            InitializeComponent();
            TextBox[] alias = navegador1.funAsignandoTexts(this);
            navegador1.funAsignarAliasVista(alias, "cuentasBancos", "prototipoef");
            navegador1.funAsignarSalidadVista(this);
            navegador1.campoEstado = "EstadoCuentaB";
            navegador1.idAplicacion = "2025";
            navegador1.tablaAyuda = "aplicacion";
            navegador1.campoAyuda = "pkId";
            navegador1.pideGrid(dataGridView1);
            navegador1.llenaTabla();
            navegador1.pedirRef(this);
            navegador1.funLlenarComboControl(cmbbanco, "banco", "IdBanco", "nombreBanco", "estado");
        }

        public void funActualizarUsuario(string user)
        {
            navegador1.usuario = user;
            navegador1.aplicacion = "MantenimientoBanco2025";
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

        private void txtbanco_TextChanged(object sender, EventArgs e)
        {
            navegador1.funTextboxComboVista(cmbbanco, txtbanco);
        }

        private void cmbbanco_SelectedIndexChanged(object sender, EventArgs e)
        {
            navegador1.funComboTextboxVista(cmbbanco, txtbanco);
        }
    }
}
