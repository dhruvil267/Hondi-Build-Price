using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MidTerm
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            finalInfo.Visible = false;
            priceResume.Visible = false;
            if (!Page.IsPostBack)
            {
                lblContactNo.Visible = txtPhone.Visible = false;

                cboModel.Items.Add(new ListItem("Civoc(+$25000)", "25000"));
                cboModel.Items.Add(new ListItem("DR - V(+$30000)", "30000"));
                cboModel.Items.Add(new ListItem("Appord(+$33000)", "33000"));
                cboModel.Items.Add(new ListItem("Cilot(+$45000)", "45000"));
                cboModel.Items.Add(new ListItem("Odyrrey(+$54000)", "54000"));

                lstColor.Items.Add(new ListItem("White", "0"));
                lstColor.Items.Add(new ListItem("Dark(+$300)", "300"));
                lstColor.Items.Add(new ListItem("Pearl(+$900)", "900"));

                lstColor.SelectedIndex = 0;

                chklstAccessories.Items.Add(new ListItem("Aero Kit(+$1300)", "1300"));
                chklstAccessories.Items.Add(new ListItem("Film(+$600)", "600"));
                chklstAccessories.Items.Add(new ListItem("Cold Weather(+$900)", "900"));
                chklstAccessories.Items.Add(new ListItem("Hondi Emblem(+$150)", "150"));
                chklstAccessories.Items.Add(new ListItem("Snow Tire Package(+$1800)", "1800"));

                rdlstWarrenty.Items.Add(new ListItem("3Years(included)", "0"));
                rdlstWarrenty.Items.Add(new ListItem("5Years(+$1000)", "1000"));
                rdlstWarrenty.Items.Add(new ListItem("7Years(+$1500)", "1500"));

                rdlstWarrenty.SelectedIndex = 0;

                
            }
            if (cboModel.SelectedIndex > 0)
            {

                CalculatePrice();

            }

        }

        private void CalculatePrice()
        {
            decimal carPrice = 0, intColorPrice = 0, accPrice = 0, warrPrice = 0, woTaxPrice = 0, wTaxPrice = 0;
            carPrice = Convert.ToDecimal(cboModel.SelectedItem.Value);
            litPricing.Text = "<br>Car Price: $" + carPrice + "</br>";
            intColorPrice = Convert.ToDecimal(lstColor.SelectedItem.Value);
            litPricing.Text += "<br>Interior Color: $" + intColorPrice + "</br>";
            foreach (ListItem item in chklstAccessories.Items)
            {
                accPrice += (item.Selected) ? Convert.ToDecimal(item.Value) : 0;

            }
            litPricing.Text += "<br>Accessories: $" + accPrice + "</br>";
            warrPrice = Convert.ToDecimal(rdlstWarrenty.SelectedItem.Value);
            litPricing.Text += "<br>Warrenty: $" + warrPrice + "</br><br>";
            woTaxPrice = carPrice + intColorPrice + accPrice + warrPrice;
            litPricing.Text += "<br>Total without Taxes: $" + woTaxPrice + "</br>";
            wTaxPrice = Math.Round((woTaxPrice * Convert.ToDecimal(1.15)), 2);
            litPricing.Text += "<br>Total with Taxes(15%): $" + wTaxPrice + "</br>";
            priceResume.Visible = true;

        }
    

        protected void cboModel_SelectedIndexChanged(object sender, EventArgs e)
        {
        }

        protected void btnConclude_Click(object sender, EventArgs e)
        {
            finalInfo.Visible = true;
            litInfo.Text = "Congratulations in obtain your new Hondi " + cboModel.SelectedItem + " in " + txtCity.Text + ", " + txtZip.Text+
                ".<br>Your car comes with ";
            foreach (ListItem item in chklstAccessories.Items)
            {
                litInfo.Text += (item.Selected) ? item.Text+", " : "";

            }
            litInfo.Text += " Accessories.<br>You choosed " + rdlstWarrenty.SelectedItem + " of warranty";
            litInfo.Text += chkContact.Checked? " and our dealer will contact you by phone number " + txtPhone.Text+".":".";

        
        }

        protected void chkContact_CheckedChanged(object sender, EventArgs e)
        {
            lblContactNo.Visible = txtPhone.Visible = chkContact.Checked;
        }
    }
}