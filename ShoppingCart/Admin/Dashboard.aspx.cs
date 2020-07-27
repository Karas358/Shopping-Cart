using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ShoppingCart.Admin
{
    public partial class Dashboard1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();
            dt.Columns.Add("Labels", typeof(string));
            dt.Columns.Add("Sales", typeof(int));

            dt.Rows.Add("Kiddies", 12);
            dt.Rows.Add("Shelves", 19);
            dt.Rows.Add("Ottomans", 30);
            dt.Rows.Add("Wall Art", 5);
            dt.Rows.Add("Bed", 2);
            setUpChart(dt);
        }

        private void setUpChart(DataTable dt)
        {

            string value = "";
            string labels = "";
            string chart = "<canvas id=\"myChartX\" style=\"width:90%\"></canvas>";
            chart += "<script>";
            chart += "var ctx = document.getElementById(\"myChartX\").getContext('2d');";
            chart += "var myChart = new Chart(ctx, {";
            chart += "type: 'bar',";
            chart += "data:";
            chart += "{";
            chart += "labels: [";
                    for (int x = 0; x < dt.Rows.Count; x++)
                    {
                        labels += "\"" +  dt.Rows[x]["Labels"] + "\"" + ",";
                    }
            labels = labels.Substring(0, labels.Length - 1);
            chart += labels;

                //"\"Kiddies\", \"Shelves & Desks\", \"Ottoman & Shoeboxes\", \"Tables\", \"Wall Art & Screens\"" +

            chart += "],";
            chart += "datasets: [{" +
                        "label: 'Sales by dept.'," +
                        "data: [";
                    for(int x = 0; x < dt.Rows.Count; x++)
                    {
                        value += dt.Rows[x]["Sales"].ToString() + ",";
                    }
                    value = value.Substring(0, value.Length - 1);
            chart += value;
            chart += "], " +
                        "backgroundColor: [" +
                            "'rgba(255, 99, 132, 0.2)'," +
                            "'rgba(54, 162, 235, 0.2)'," +
                            "'rgba(255, 206, 86, 0.2)'," +
                            "'rgba(75, 192, 192, 0.2)'," +
                            "'rgba(153, 102, 255, 0.2)'" +
                        "]," +
                        "borderColor: [" +
                            "'rgba(255,99,132,1)'," +
                            "'rgba(54, 162, 235, 1)'," +
                            "'rgba(255, 206, 86, 1)', " +
                            "'rgba(75, 192, 192, 1)'," +
                            "'rgba(153, 102, 255, 1)'" +
                        "]," +
                        "borderWidth: 0.8" +
                "}]" +
            "}," +
            "options:" +
                    "{" +
                    "responsive: true," +
                    "scales:" +
                            "{" +
                            "xAxes: [{" +
                                "ticks:" +
                                    "{" +
                                    "maxRotation: 00," +
                                    "minRotation: 00" +
                                "}" +
                                "}]," +
                            "yAxes: [{" +
                                    "ticks:" +
                                        "{" +
                                        "beginAtZero: true" +
                                    "}" +
                                    "}]" +
                        "}" +
                    "}" +
                "});";
            chart += "</script>";
            litChart.Text = chart;
        }
    }
}