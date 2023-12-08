using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace ДЕМОЭКЗАМЕН3
{
    public partial class Trash : Form
    {   //Подключение
        static string connString = "Integrated Security=SSPI;Persist Security Info=False;Initial Catalog=Viskunov1;Data Source=DESKTOP-ALHNBP8\\SQLEXPRESS";
        SqlConnection SqlConnection = new SqlConnection(connString);

        public Trash()
        {
            InitializeComponent();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            this.Hide();
            Application.OpenForms[1].Show();
        }
    }
}
