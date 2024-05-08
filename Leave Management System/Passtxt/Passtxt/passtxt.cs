using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Passtxt
{
    public partial class passtxt: TextBox
    {
        public passtxt()
        {
            BackColor = Color.DimGray;
            ForeColor = Color.White;
            HasLimit = true;

        }
        [Category ("Behaviour")] public bool HasLimit { get; set; }

        protected override void OnKeyPress(KeyPressEventArgs e)
        {
            if (HasLimit)
            {
                MaxLength = 10;
                PasswordChar = '*';
            }
            else
            {
                e.Handled = false;
            }
           
                
        }

    }
}
