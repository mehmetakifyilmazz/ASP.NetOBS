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
    public partial class hocaanasayfa : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


            if (Session["user"] == null)
            {
                Response.Redirect("~/hoca_giriş.aspx");
                return;
            }

            if (IsPostBack == false)
            {
                DataTable user = Session["user"] as DataTable;
                SqlConnection con = new SqlConnection("Data Source=DESKTOP-OKJVKK7;Initial Catalog=otomasyon;Integrated Security=True");
                SqlCommand com = new SqlCommand("select * from nw_hoca_dersler where hoca_id="+user.Rows[0]["ID"], con);
                con.Open();
                SqlDataAdapter da = new SqlDataAdapter(com);
                DataTable dt = new DataTable();
                da.Fill(dt);
                con.Close();
             
                DropDownList2.Items.Clear();
                foreach (DataRow dr in dt.Rows)
                {
                    
                    DropDownList2.Items.Add(new ListItem(dr["dersadi"].ToString(), dr["ID"].ToString()));

                }

                
                repater.Visible = false;
            }
            

        }

        protected void ogrenciGöster_Click(object sender, EventArgs e)
        {
            repeatLoad();
        }
        void repeatLoad()
        {
            
            DataTable user = Session["user"] as DataTable;
     
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-OKJVKK7;Initial Catalog=otomasyon;Integrated Security=True");
            SqlCommand com = new SqlCommand(@"select dbo.ort(vize,final,but) as ortalama ,
dbo.harfNotu(vize,final,but) as harf,
dbo.gecmeDurumu(vize,final,but) as gecme,

* from nw_ogrenci_dersler where ogrders_id=@p1", con);
            com.Parameters.AddWithValue("@p1", DropDownList2.SelectedItem.Value);

            con.Open();
            SqlDataAdapter da = new SqlDataAdapter(com);
            DataTable dt = new DataTable();
            da.Fill(dt);
            con.Close();
            repater.DataSource = dt;
            repater.DataBind();
            repater.Visible = true;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            var vize = TextBox1.Text;
            var final = TextBox2.Text;
            var büt = TextBox3.Text;
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-OKJVKK7;Initial Catalog=otomasyon;Integrated Security=True");
            SqlCommand com = new SqlCommand("ogrenciNot1", con);
            com.CommandType = CommandType.StoredProcedure;

            com.Parameters.AddWithValue("@vize", string.IsNullOrWhiteSpace(vize) ? (object)DBNull.Value : vize);
            com.Parameters.AddWithValue("@final", string.IsNullOrWhiteSpace(final) ? (object)DBNull.Value : final);
            com.Parameters.AddWithValue("@büt", string.IsNullOrWhiteSpace(büt) ? (object)DBNull.Value : büt);

           
            com.Parameters.AddWithValue("@ogrders_id", DropDownList2.SelectedItem.Value);
            com.Parameters.AddWithValue("@ogr_id", ogr_id.Value);
            con.Open();
            com.ExecuteNonQuery();
            con.Close();
            repeatLoad();




        }

     
    }
    }
