using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
namespace OgrenciOtomasyon2
{
    public partial class hocakayıt : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                SqlConnection con = new SqlConnection("Data Source=DESKTOP-OKJVKK7;Initial Catalog=otomasyon;Integrated Security=True");
                SqlCommand com = new SqlCommand("select * from bolum", con);
                con.Open();
                SqlDataAdapter da = new SqlDataAdapter(com);
                DataTable dt = new DataTable();
                da.Fill(dt);
                con.Close();
                DropDownList1.Items.Clear();
                DropDownList1.Items.Add(new ListItem("Seçiniz...", "-1"));
                foreach (DataRow dr in dt.Rows)
                {
                    DropDownList1.Items.Add(new ListItem(dr["bolumadi"].ToString(), dr["ID"].ToString()));
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           
            var name = Name.Text;
            var surname = Surname.Text;
            var nickname = TextBox3.Text;
            var email = TextBox5.Text;
            var sifre = TextBox4.Text;
            if (name == "" || surname == "" || nickname == "" || email == "" || sifre == "") return;
            if (DropDownList1.SelectedItem.Value == "-1")
            {
                msg.Text = "Lütfen Bölüm Seçiniz!";
                return;
            }

            var bolum_id = DropDownList1.SelectedItem.Value;
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-OKJVKK7;Initial Catalog=otomasyon;Integrated Security=True");
            SqlCommand com = new SqlCommand("HocaKayıt", con);
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.AddWithValue("@adi", name);
            com.Parameters.AddWithValue("@soyadi", surname);
            com.Parameters.AddWithValue("@kullaniciadi", nickname);
            com.Parameters.AddWithValue("@sifre", sifre);
            com.Parameters.AddWithValue("@email", email);
            com.Parameters.AddWithValue("@bolum_id", bolum_id);
            con.Open();
            com.ExecuteNonQuery();
            con.Close();
                        msg.Text = "Kayıt Başarılı ";
            link.Attributes.Add("style", "display:block");

        }
    }
}