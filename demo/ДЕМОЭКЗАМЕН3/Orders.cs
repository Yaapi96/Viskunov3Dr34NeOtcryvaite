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
    public partial class OrdersForm : Form
    {
        static string connString = "Integrated Security=SSPI;Persist Security Info=False;Initial Catalog=Viskunov1;Data Source=DESKTOP-ALHNBP8\\SQLEXPRESS";
        SqlConnection SqlConnection = new SqlConnection(connString);
        public int order_role;
        public OrdersForm(int current_role)
        {
            order_role = current_role;
            InitializeComponent();
        }
        private void OrdersForm_load(object sender, EventArgs e)
        {
            //Сделал через inner Join, потому что вложенный запрос не работал, он принимал больше одного значения
            SqlCommand sqlCommand = new SqlCommand("SELECT o.OrderID, o.DeliveryData, o.CodeToGet, s.ProductArticleNumber, (SELECT PointOfIssue as pointofissue FROM dbo.PointOfIssue WHERE IssueID = PointIssue) FROM dbo.[Order] as o INNER JOIN  dbo.[OrderProduct] as s on (s.OrderID = o.OrderID)", SqlConnection);
            SqlDataAdapter dataAdapter = new SqlDataAdapter(sqlCommand);
            DataSet dataSet = new DataSet();
            dataAdapter.Fill(dataSet);
            ProductGridView.DataSource = dataSet.Tables[0];

        }
        private void button2_Click(object sender, EventArgs e)
        {
            this.Hide();
            Application.OpenForms[1].Show();
        }
    }
}
