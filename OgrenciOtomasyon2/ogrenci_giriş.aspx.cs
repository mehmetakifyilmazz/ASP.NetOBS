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
    public partial class ogrenci_giriş : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            //SqlConnection con = new SqlConnection("Data Source=DESKTOP-OKJVKK7;Initial Catalog=otomasyon;Integrated Security=True");
            //SqlCommand com = new SqlCommand("select * from bolum", con);
            //con.Open();
            //SqlDataAdapter da = new SqlDataAdapter(com);
            //DataTable dt = new DataTable();
            //da.Fill(dt);
            //con.Close();
            //DropDownList1.Items.Clear();
            //foreach (DataRow dr in dt.Rows)
            //{
            //    DropDownList1.Items.Add(new ListItem(dr["bolumadi"].ToString(), dr["ID"].ToString()));
            //}
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            var number = TextBox1.Text;
            var sifre = TextBox2.Text;



            SqlConnection con = new SqlConnection("Data Source=DESKTOP-OKJVKK7;Initial Catalog=otomasyon;Integrated Security=True");
            SqlCommand com = new SqlCommand("Select * from ogrenciler where okul_no=@p1 and sifre =@p2 ", con);
            com.Parameters.AddWithValue("@p1", number);
            com.Parameters.AddWithValue("@p2", sifre);

            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(com);
            da.Fill(dt);
            if (dt.Rows.Count != 0)
            {
                Session["og"] = dt;
                Response.Redirect("~/ogrencianasayfa.aspx");
            }
            else
            {
                msg.Text = "Hatalı Giriş Yaptınız!";
            }



            con.Open();
            com.ExecuteNonQuery();
            con.Close();

           
        }
   
    }
}



