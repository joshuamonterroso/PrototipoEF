
namespace CapaVistaCompras
{
    partial class MovimientosBancarios2035
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.dataGridView1 = new System.Windows.Forms.DataGridView();
            this.navegador1 = new DLL.nav.navegador();
            this.txtid = new System.Windows.Forms.TextBox();
            this.txtconcepto = new System.Windows.Forms.TextBox();
            this.txttipo = new System.Windows.Forms.TextBox();
            this.txtcargo = new System.Windows.Forms.TextBox();
            this.txtabono = new System.Windows.Forms.TextBox();
            this.txtmoneda = new System.Windows.Forms.TextBox();
            this.txtbanco = new System.Windows.Forms.TextBox();
            this.txtestado = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.label6 = new System.Windows.Forms.Label();
            this.label7 = new System.Windows.Forms.Label();
            this.label8 = new System.Windows.Forms.Label();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.rdbinactivo = new System.Windows.Forms.RadioButton();
            this.rdbactivo = new System.Windows.Forms.RadioButton();
            this.label9 = new System.Windows.Forms.Label();
            this.cmbtipo = new System.Windows.Forms.ComboBox();
            this.cmbmoneda = new System.Windows.Forms.ComboBox();
            this.cmbbanco = new System.Windows.Forms.ComboBox();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).BeginInit();
            this.groupBox1.SuspendLayout();
            this.SuspendLayout();
            // 
            // dataGridView1
            // 
            this.dataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView1.Location = new System.Drawing.Point(435, 152);
            this.dataGridView1.Name = "dataGridView1";
            this.dataGridView1.ReadOnly = true;
            this.dataGridView1.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.dataGridView1.Size = new System.Drawing.Size(610, 171);
            this.dataGridView1.TabIndex = 0;
            // 
            // navegador1
            // 
            this.navegador1.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(248)))), ((int)(((byte)(248)))), ((int)(((byte)(248)))));
            this.navegador1.Location = new System.Drawing.Point(0, 0);
            this.navegador1.Name = "navegador1";
            this.navegador1.Size = new System.Drawing.Size(1189, 87);
            this.navegador1.TabIndex = 1;
            // 
            // txtid
            // 
            this.txtid.Location = new System.Drawing.Point(118, 138);
            this.txtid.Name = "txtid";
            this.txtid.Size = new System.Drawing.Size(100, 20);
            this.txtid.TabIndex = 2;
            this.txtid.Tag = "idmovimiento";
            // 
            // txtconcepto
            // 
            this.txtconcepto.Location = new System.Drawing.Point(118, 191);
            this.txtconcepto.Name = "txtconcepto";
            this.txtconcepto.Size = new System.Drawing.Size(100, 20);
            this.txtconcepto.TabIndex = 3;
            this.txtconcepto.Tag = "concepto";
            // 
            // txttipo
            // 
            this.txttipo.Location = new System.Drawing.Point(269, 244);
            this.txttipo.Name = "txttipo";
            this.txttipo.Size = new System.Drawing.Size(100, 20);
            this.txttipo.TabIndex = 4;
            this.txttipo.Tag = "idtipo";
            this.txttipo.TextChanged += new System.EventHandler(this.txttipo_TextChanged);
            // 
            // txtcargo
            // 
            this.txtcargo.Location = new System.Drawing.Point(118, 296);
            this.txtcargo.Name = "txtcargo";
            this.txtcargo.Size = new System.Drawing.Size(100, 20);
            this.txtcargo.TabIndex = 5;
            this.txtcargo.Tag = "cargo";
            // 
            // txtabono
            // 
            this.txtabono.Location = new System.Drawing.Point(118, 353);
            this.txtabono.Name = "txtabono";
            this.txtabono.Size = new System.Drawing.Size(100, 20);
            this.txtabono.TabIndex = 6;
            this.txtabono.Tag = "abono";
            // 
            // txtmoneda
            // 
            this.txtmoneda.Location = new System.Drawing.Point(269, 404);
            this.txtmoneda.Name = "txtmoneda";
            this.txtmoneda.Size = new System.Drawing.Size(100, 20);
            this.txtmoneda.TabIndex = 7;
            this.txtmoneda.Tag = "Pkid";
            this.txtmoneda.TextChanged += new System.EventHandler(this.txtmoneda_TextChanged);
            // 
            // txtbanco
            // 
            this.txtbanco.Location = new System.Drawing.Point(269, 455);
            this.txtbanco.Name = "txtbanco";
            this.txtbanco.Size = new System.Drawing.Size(100, 20);
            this.txtbanco.TabIndex = 8;
            this.txtbanco.Tag = "IdCuenta";
            this.txtbanco.TextChanged += new System.EventHandler(this.txtbanco_TextChanged);
            // 
            // txtestado
            // 
            this.txtestado.Location = new System.Drawing.Point(269, 500);
            this.txtestado.Name = "txtestado";
            this.txtestado.Size = new System.Drawing.Size(100, 20);
            this.txtestado.TabIndex = 9;
            this.txtestado.Tag = "estado";
            this.txtestado.TextChanged += new System.EventHandler(this.txtestado_TextChanged);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(12, 145);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(73, 13);
            this.label1.TabIndex = 10;
            this.label1.Text = "Id Movimiento";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(12, 198);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(53, 13);
            this.label2.TabIndex = 11;
            this.label2.Text = "Concepto";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(12, 251);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(78, 13);
            this.label3.TabIndex = 12;
            this.label3.Text = "Tipo operacion";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(12, 303);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(35, 13);
            this.label4.TabIndex = 13;
            this.label4.Text = "Cargo";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(12, 360);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(38, 13);
            this.label5.TabIndex = 14;
            this.label5.Text = "Abono";
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(12, 411);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(46, 13);
            this.label6.TabIndex = 15;
            this.label6.Text = "Moneda";
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Location = new System.Drawing.Point(12, 462);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(89, 13);
            this.label7.TabIndex = 16;
            this.label7.Text = "Cuenta de banco";
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Location = new System.Drawing.Point(12, 507);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(40, 13);
            this.label8.TabIndex = 17;
            this.label8.Text = "Estado";
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.rdbinactivo);
            this.groupBox1.Controls.Add(this.rdbactivo);
            this.groupBox1.Location = new System.Drawing.Point(118, 500);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(100, 63);
            this.groupBox1.TabIndex = 18;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Estado";
            // 
            // rdbinactivo
            // 
            this.rdbinactivo.AutoSize = true;
            this.rdbinactivo.Location = new System.Drawing.Point(3, 39);
            this.rdbinactivo.Name = "rdbinactivo";
            this.rdbinactivo.Size = new System.Drawing.Size(63, 17);
            this.rdbinactivo.TabIndex = 1;
            this.rdbinactivo.TabStop = true;
            this.rdbinactivo.Text = "Inactivo";
            this.rdbinactivo.UseVisualStyleBackColor = true;
            this.rdbinactivo.CheckedChanged += new System.EventHandler(this.rdbinactivo_CheckedChanged);
            // 
            // rdbactivo
            // 
            this.rdbactivo.AutoSize = true;
            this.rdbactivo.Location = new System.Drawing.Point(3, 16);
            this.rdbactivo.Name = "rdbactivo";
            this.rdbactivo.Size = new System.Drawing.Size(55, 17);
            this.rdbactivo.TabIndex = 0;
            this.rdbactivo.TabStop = true;
            this.rdbactivo.Text = "Activo";
            this.rdbactivo.UseVisualStyleBackColor = true;
            this.rdbactivo.CheckedChanged += new System.EventHandler(this.rdbactivo_CheckedChanged);
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label9.Location = new System.Drawing.Point(474, 99);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(225, 24);
            this.label9.TabIndex = 19;
            this.label9.Text = "Movimientos Bancarios";
            // 
            // cmbtipo
            // 
            this.cmbtipo.FormattingEnabled = true;
            this.cmbtipo.Location = new System.Drawing.Point(118, 243);
            this.cmbtipo.Name = "cmbtipo";
            this.cmbtipo.Size = new System.Drawing.Size(100, 21);
            this.cmbtipo.TabIndex = 20;
            this.cmbtipo.SelectedIndexChanged += new System.EventHandler(this.cmbtipo_SelectedIndexChanged);
            // 
            // cmbmoneda
            // 
            this.cmbmoneda.FormattingEnabled = true;
            this.cmbmoneda.Location = new System.Drawing.Point(118, 404);
            this.cmbmoneda.Name = "cmbmoneda";
            this.cmbmoneda.Size = new System.Drawing.Size(100, 21);
            this.cmbmoneda.TabIndex = 21;
            this.cmbmoneda.SelectedIndexChanged += new System.EventHandler(this.cmbmoneda_SelectedIndexChanged);
            // 
            // cmbbanco
            // 
            this.cmbbanco.FormattingEnabled = true;
            this.cmbbanco.Location = new System.Drawing.Point(121, 454);
            this.cmbbanco.Name = "cmbbanco";
            this.cmbbanco.Size = new System.Drawing.Size(100, 21);
            this.cmbbanco.TabIndex = 22;
            this.cmbbanco.SelectedIndexChanged += new System.EventHandler(this.cmbbanco_SelectedIndexChanged);
            // 
            // MovimientosBancarios2035
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1192, 565);
            this.Controls.Add(this.cmbbanco);
            this.Controls.Add(this.cmbmoneda);
            this.Controls.Add(this.cmbtipo);
            this.Controls.Add(this.label9);
            this.Controls.Add(this.groupBox1);
            this.Controls.Add(this.label8);
            this.Controls.Add(this.label7);
            this.Controls.Add(this.label6);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.txtestado);
            this.Controls.Add(this.txtbanco);
            this.Controls.Add(this.txtmoneda);
            this.Controls.Add(this.txtabono);
            this.Controls.Add(this.txtcargo);
            this.Controls.Add(this.txttipo);
            this.Controls.Add(this.txtconcepto);
            this.Controls.Add(this.txtid);
            this.Controls.Add(this.navegador1);
            this.Controls.Add(this.dataGridView1);
            this.Name = "MovimientosBancarios2035";
            this.Text = "MovimientosBancarios2035";
            this.Load += new System.EventHandler(this.MovimientosBancarios2035_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).EndInit();
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.DataGridView dataGridView1;
        private DLL.nav.navegador navegador1;
        private System.Windows.Forms.TextBox txtid;
        private System.Windows.Forms.TextBox txtconcepto;
        private System.Windows.Forms.TextBox txttipo;
        private System.Windows.Forms.TextBox txtcargo;
        private System.Windows.Forms.TextBox txtabono;
        private System.Windows.Forms.TextBox txtmoneda;
        private System.Windows.Forms.TextBox txtbanco;
        private System.Windows.Forms.TextBox txtestado;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.RadioButton rdbinactivo;
        private System.Windows.Forms.RadioButton rdbactivo;
        private System.Windows.Forms.Label label9;
        private System.Windows.Forms.ComboBox cmbtipo;
        private System.Windows.Forms.ComboBox cmbmoneda;
        private System.Windows.Forms.ComboBox cmbbanco;
    }
}