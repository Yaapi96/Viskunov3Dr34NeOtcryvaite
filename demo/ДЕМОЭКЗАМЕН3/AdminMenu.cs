using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace ДЕМОЭКЗАМЕН3
{
    public partial class AdminMenu : Form
    {
        static string connString = "Integrated Security=SSPI;Persist Security Info=False;Initial Catalog=Viskunov1;Data Source=DESKTOP-ALHNBP8\\SQLEXPRESS";
        SqlConnection SqlConnection = new SqlConnection(connString);

        public string sup;
        public string cat;
        public string maxd;
        public string curd;
        public string article;
        public AdminMenu()
        {
            InitializeComponent();
        }

        private void AddBT_Click(object sender, EventArgs e) 
        {
            //Проверка полей
            if (NameTB.Text == "" || CostTB.Text == "" || ManfTB.Text == "" 
            || StockTB.Text == "" || DescTB.Text == "" || SupCB.Text == "" || CatCB.Text == "" || DiscCB.Text == "" || CurdCB.Text == "")
            {
                MessageBox.Show("Заполните все поля!");
                return;
            }
            else
            {   
                //Создание артикула
                Random r = new Random();
                article = string.Format("{0}{1}{2}{3}{4}{5}", (char)r.Next('A', 'Z' + 1), r.Next(1, 10), r.Next(1, 10), r.Next(1, 10), (char)r.Next('A', 'Z' + 1), r.Next(1, 10));
                SqlConnection connect = new SqlConnection();
                connect.ConnectionString = connString;

                //добавление нового товара
                try
                {
                connect.Open();
                SqlCommand enter = new SqlCommand();
                enter.CommandType = CommandType.StoredProcedure;
                enter.CommandText = "addProduct";
                enter.Parameters.AddWithValue("@ProductArticleNumber", article);
                enter.Parameters.AddWithValue("@ProductName", NameTB.Text);
                enter.Parameters.AddWithValue("@UnitMeasure", "шт.");
                enter.Parameters.AddWithValue("@Cost", CostTB.Text);
                enter.Parameters.AddWithValue("@MaxDiscount", maxd);
                enter.Parameters.AddWithValue("@Manufacturer", ManfTB.Text);
                enter.Parameters.AddWithValue("@Supplier", sup );
                enter.Parameters.AddWithValue("@Category", cat);
                enter.Parameters.AddWithValue("@CurrDiscount", curd);
                enter.Parameters.AddWithValue("@QuantityStock", StockTB.Text);
                enter.Parameters.AddWithValue("@Description", DescTB.Text);
                enter.Parameters.AddWithValue("@ProductPhoto", "");
                enter.Connection = connect;
                SqlDataReader sqlReader = enter.ExecuteReader();
                sqlReader.Read();

                    MessageBox.Show("Товар добавлен!");

                }

                catch (Exception ex)
                {
                    MessageBox.Show($"Error ({ex.Message})");
                }

            }

        }

        private void AdminForm_Load(object sender, EventArgs e)
        {

        }

        //Проверка параметров
        private void SupCB_SelectedIndexChanged(object sender, EventArgs e)
        {
            switch (SupCB.SelectedIndex)
            {

                case 0:
                    sup = "Hoff";
                    break;
                case 1:
                    sup = "Стокманн";
                    break;
                    
            }
        }

        private void CatCB_SelectedIndexChanged(object sender, EventArgs e)
        {
            switch (CatCB.SelectedIndex)
            {

                case 0:
                    cat = "Ароматы для дома";
                    break;
                case 1:
                    cat = "Вазы";
                    break;
                case 2:
                    cat = "Горшки и подставки";
                    break;
                case 3:
                    cat = "Интерьерные аксессуары";
                    break;
                case 4:
                    cat = "Картины и фоторамки";
                    break;
                case 5:
                    cat = "Свечи";
                    break;
                case 6:
                    cat = "Часы";
                    break;
            }
        }

        private void DiscCB_SelectedIndexChanged(object sender, EventArgs e)
        {
            switch (DiscCB.SelectedIndex)
            {

                case 0:
                    maxd = "5";
                    break;
                case 1:
                    maxd = "10";
                    break;
                case 2:
                    maxd = "15";
                    break;
                case 3:
                    maxd = "20";
                    break;
                case 4:
                    maxd = "25";
                    break;
                case 5:
                    maxd = "30";
                    break;
            }
        }

        private void CurdCB_SelectedIndexChanged(object sender, EventArgs e)
        {
            switch (CurdCB.SelectedIndex)
            {

                case 0:
                    curd = "2";
                    break;
                case 1:
                    curd = "3";
                    break;
                case 2:
                    curd = "4";
                    break;
                case 3:
                    curd = "5";
                    break;
            }
        }

        private void button2_Click(object sender, EventArgs e)
        {
            this.Hide();
            Application.OpenForms[0].Show();
        }
    }
}
