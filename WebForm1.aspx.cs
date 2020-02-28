using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace singlePageForm
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                for (int i = 25; i <= 500; i = i + 50)
                {
                    investmentDropDown.Items.Add(i.ToString());
                }
                System.Diagnostics.Debug.WriteLine("Hello World!");
            }

        }


        protected void calculateButton_Click(object sender, EventArgs e)
        {
            //Making sure that all the validation has returned true for the fields
            if (IsValid)
            {
                int monthlyInvestment = Convert.ToInt32(investmentDropDown.SelectedValue);
                decimal yearlyInterestRate = Convert.ToDecimal(interestRateInput.Text);
                int years = Convert.ToInt32(yearsInput.Text);
                decimal futureValue = calculateFutureValue(monthlyInvestment, yearlyInterestRate, years);
                futureValueLabel.Text = futureValue.ToString("c");
            }
        }

        protected decimal calculateFutureValue(int monthlyInvestment, decimal yearlyInterestRate, int years)
        {
            int months = years * 12;
            decimal monthlyInterestRate = yearlyInterestRate / 12 / 100;
            decimal futureValue = 0;
            for (int i = 0; i < months; i++)
            {
                futureValue = (futureValue + monthlyInvestment) * (1 + monthlyInterestRate);
            }
            return futureValue;
        }

        protected void clearButton_Click(object sender, EventArgs e)
        {
            interestRateInput.Text = "";
            yearsInput.Text = "";
            futureValueLabel.Text = "";
            investmentDropDown.SelectedIndex = 0;
        }

        protected void clearButton_Click1(object sender, EventArgs e) {
            interestRateInput.Text = "";
            yearsInput.Text = "";
            futureValueLabel.Text = "";
            investmentDropDown.SelectedIndex = 0;
        }

    }
}