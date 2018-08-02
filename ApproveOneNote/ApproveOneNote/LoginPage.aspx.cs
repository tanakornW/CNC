using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Security.Cryptography;
using System.Text;
using System.IO;



namespace ApproveOneNote
{
    public partial class LoginPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session.Clear();
            Page.Response.Cache.SetCacheability(HttpCacheability.NoCache);
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            Response.Cache.SetExpires(DateTime.UtcNow.AddHours(-1));
            Response.Cache.SetNoStore();
            
		
        }

        protected void ButtonLogin_Click_Login(object sender, EventArgs e)
        {
            SqlConnection objConn;
            string host = ("CNC5"+@"\"+"CNC5");
          
            String strConnString;
            strConnString = "Server="+ host + ";Uid=sa;PASSWORD=P@ssw0rd;database=USER;Max Pool Size=400;Connect Timeout=600;";
            objConn = new SqlConnection(strConnString);
            objConn.Open();
            String Uname = usernameLogin.Value;
            String Pass = Encrypt(EncodeTo64UTF8(passwordLogin.Value));
            //ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert(' Invalid username or password." + host + " ');", true);

            if (objConn.State == ConnectionState.Open)
            {
                String SQLcnn = "SELECT * FROM CNC_UsersInfomation " +
                    "WHERE Username='" + Uname + "' AND Password='" + Pass + "'";
                SqlDataAdapter sda = new SqlDataAdapter("SELECT COUNT(*) FROM CNC_UsersInfomation " +
                    "WHERE Username='" + Uname + "' AND Password='" + Pass + "'", objConn);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                if (dt.Rows[0][0].ToString() == "1")
                {
                    SqlDataAdapter ttt = new SqlDataAdapter(SQLcnn, objConn);
                    DataTable dd = new DataTable();
                    ttt.Fill(dd);
                    Session["Username"] = (string)dd.Rows[0]["Username"];
                    Session["Password"] = (string)dd.Rows[0]["Password"];
                    Session["Dept"] = (string)dd.Rows[0]["Dept"];
                   
                    Session["loginstart"] = "login";
                    Server.Transfer("HomePage.aspx");
                    objConn.Close();
                }
                else
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert(' Invalid username or password." + host + " ');", true);

                }
            }
            else
            {

                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert(' Database connection failed." + host + " ');", true); ;
            }
        }
        static readonly string PasswordHash = "P@@Sw0rd";
        static readonly string SaltKey = "S@LT&KEY";
        static readonly string VIKey = "@1B2c3D4e5F6g7H8";
         public static string EncodeTo64UTF8(string m_enc)
        {
            byte[] toEncodeAsBytes =
            System.Text.Encoding.UTF8.GetBytes(m_enc);
            string returnValue =
            System.Convert.ToBase64String(toEncodeAsBytes);
            return returnValue;
        }
        public static string Encrypt(string plainText)
        {
            byte[] plainTextBytes = Encoding.UTF8.GetBytes(plainText);

            byte[] keyBytes = new Rfc2898DeriveBytes(PasswordHash, Encoding.ASCII.GetBytes(SaltKey)).GetBytes(256 / 8);
            var symmetricKey = new RijndaelManaged() { Mode = CipherMode.CBC, Padding = PaddingMode.Zeros };
            var encryptor = symmetricKey.CreateEncryptor(keyBytes, Encoding.ASCII.GetBytes(VIKey));

            byte[] cipherTextBytes;

            using (var memoryStream = new MemoryStream())
            {
                using (var cryptoStream = new CryptoStream(memoryStream, encryptor, CryptoStreamMode.Write))
                {
                    cryptoStream.Write(plainTextBytes, 0, plainTextBytes.Length);
                    cryptoStream.FlushFinalBlock();
                    cipherTextBytes = memoryStream.ToArray();
                    cryptoStream.Close();
                }
                memoryStream.Close();
            }
            return Convert.ToBase64String(cipherTextBytes);
        }
    }
}