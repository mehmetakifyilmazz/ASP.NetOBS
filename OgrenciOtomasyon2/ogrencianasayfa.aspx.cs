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
    public partial class ogrencianasayfa : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["og"] == null)
            {
                Response.Redirect("~/ogrenci_giriş.aspx");
                return;
            }

            if (IsPostBack == false)
            {
                DataTable user = Session["og"] as DataTable;
                SqlConnection con = new SqlConnection("Data Source=DESKTOP-OKJVKK7;Initial Catalog=otomasyon;Integrated Security=True");
                SqlCommand com = new SqlCommand("select * from nw_ogrenci_dersler where ogr_id="+user.Rows[0]["ID"], con);
                con.Open();
                SqlDataAdapter da = new SqlDataAdapter(com);
                DataTable dt = new DataTable();
                da.Fill(dt);
                con.Close();

                DropDownList1.Items.Clear();
                foreach (DataRow dr in dt.Rows)
                { DropDownList1.Items.Add(new ListItem(dr["dersadi"].ToString(), dr["ID"].ToString()));

                }
                  repater.Visible = false;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
               
            DataTable user = Session["og"] as DataTable;
            var ogr_id = user.Rows[0]["ID"].ToString();
                     
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-OKJVKK7;Initial Catalog=otomasyon;Integrated Security=True");
            SqlCommand com = new SqlCommand(@"select dbo.ort(vize,final,but) as ortalama ,
dbo.harfNotu(vize, final, but) as harf,
dbo.gecmeDurumu(vize, final, but) as gecme,

*from nw_ogrenci_dersler where ogrders_id=@p1 and ogr_id= @p2", con);
 
            com.Parameters.AddWithValue("@p1", DropDownList1.SelectedItem.Value);
            com.Parameters.AddWithValue("@p2", user.Rows[0]["ID"]);
            con.Open();
            SqlDataAdapter da = new SqlDataAdapter(com);
            DataTable dt = new DataTable();
            da.Fill(dt);
            con.Close();
            repater.DataSource = dt;
            repater.DataBind();
            repater.Visible = true;
            


        }
        void CSharpDataProcess()
        {

            DataTable user = Session["og"] as DataTable;

            var ogr_id = user.Rows[0]["ID"].ToString();

            SqlConnection con = new SqlConnection("Data Source=DESKTOP-OKJVKK7;Initial Catalog=otomasyon;Integrated Security=True");
            SqlCommand com = new SqlCommand(@"select * from nw_ogrenci_dersler where ogrders_id=@p1 and ogr_id= @p2", con);

            com.Parameters.AddWithValue("@p1", DropDownList1.SelectedItem.Value);
            com.Parameters.AddWithValue("@p2", user.Rows[0]["ID"]);



            con.Open();
            SqlDataAdapter da = new SqlDataAdapter(com);
            DataTable dt = new DataTable();
            da.Fill(dt);

            dt.Columns.Add("ortalama");
            dt.Columns.Add("harf");
            dt.Columns.Add("gecme");

            foreach(DataRow dr in dt.Rows)
            {
                int but = dr["but"] == DBNull.Value ? -1 : Convert.ToInt32(dr["but"]);
                    int ort=ortalamaHesapla(Convert.ToInt32(dr["vize"]), Convert.ToInt32(dr["final"]), but);
                dr["ortalama"] = ort;
                dr["harf"] = harfNotu(ort);
                dr["gecme"] = kalma(ort);
            }


            con.Close();
            repater.DataSource = dt;
            repater.DataBind();
            repater.Visible = true;
        }
        int ortalamaHesapla(int not1,int not2,int not3)
        {
            if (not3 == -1)
            {
                return Convert.ToInt32( (not1 + not2) / 2);
            }
            return Convert.ToInt32((not1 + not2+not3) / 3);
        }
        string harfNotu(int ort)
        {
            if (ort < 50) return "FF";
            else if (ort > 50 && ort < 60) return "CC";
            else if (ort > 70 && ort < 80) return "DD";
            else if (ort > 80 && ort < 90) return "BB";
            else return "AA";

        }
        string kalma(int ort) => ort < 50 ? "KALDI" : "GEÇTİ";
    }
}