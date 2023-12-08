using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.Common;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace ДЕМОЭКЗАМЕН3
{
    public partial class ClientMenu : Form
    {
        static string connString = "Integrated Security=SSPI;Persist Security Info=False;Initial Catalog=Viskunov1;Data Source=DESKTOP-ALHNBP8\\SQLEXPRESS";
        SqlConnection SqlConnection = new SqlConnection(connString);

        
        public int menu_role;
        public ClientMenu(int current_role)
        {
            menu_role = current_role;
            InitializeComponent();
        }

        private void Menu_load(object sender, EventArgs e)
        {
            //Заполнение таблицы с товарами
            SqlCommand sqlCommand = new SqlCommand("select ProductArticleNumber, ProductName, MaxDiscount, CurrDiscount, Cost from Product", SqlConnection);
            SqlDataAdapter dataAdapter = new SqlDataAdapter(sqlCommand);
            DataSet dataSet = new DataSet();
            dataAdapter.Fill(dataSet);
            ProductGridView.DataSource = dataSet.Tables[0];

        }
        private void filterTB_TextChanged(object sender, EventArgs e)
        {   //поиск
            (ProductGridView.DataSource as DataTable).DefaultView.RowFilter = $"ProductName LIKE '%{filterTB.Text}'";
            
        }

        private void button1_Click(object sender, EventArgs e)
        {

        }   
            //фильтр
        private void comboBox1_Select(object sender, EventArgs e)
        {  

            switch (comboBox1.SelectedIndex)
            {

                case 0:
                    (ProductGridView.DataSource as DataTable).DefaultView.RowFilter = $"MaxDiscount <10";
                    break;
                case 1:
                    (ProductGridView.DataSource as DataTable).DefaultView.RowFilter = $"MaxDiscount >=10 and MaxDiscount <=15";
                    break;
                case 2:
                    (ProductGridView.DataSource as DataTable).DefaultView.RowFilter = $"MaxDiscount >15";
                    break;

            }
        }
        private void ProductListView_Select(object sender, EventArgs e)
        {

        }


        private void productGridView_MouseDown(object sender, MouseEventArgs e)
        {
            if (e.Button == MouseButtons.Right)
            {
                var hit = ProductGridView.HitTest(e.X, e.Y);
                if (hit.RowIndex >=0)
                {
                    ProductGridView.ClearSelection();
                    ProductGridView.Rows[hit.RowIndex].Selected = true ;
                    contextMenuStrip1.Show(ProductGridView, e.Location);
                }
            }
        }

        private void OrderBT_Click (object sender, EventArgs e)
        {
            this.Hide();
            OrdersForm form = new OrdersForm(menu_role);
            form.Show();
        }
        private void BasketBT_Click(object sender, EventArgs e)
        {
            this.Hide();
            Trash form = new Trash();
            form.Show();
        }

        private void panel1_Paint(object sender, PaintEventArgs e)
        {

        }

     
        private void order_Click(object sender, EventArgs e)
        { 
        }
    }
}
