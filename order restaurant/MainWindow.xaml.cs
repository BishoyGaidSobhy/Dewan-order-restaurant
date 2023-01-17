using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace order_restaurant
{
    public partial class MainWindow : Window
    {
        List<Item> OrderList = new List<Item> { };
        double sumtotalprice=0;
        public MainWindow()
        {
            InitializeComponent();
        }
        public class Item {
            public string?  ItemName { get; set; }
            public int Qty { get; set; }
            public double Price { get; set; }
            public double TotalPrice { get; set; }
        }
     
       
        private void Grid_Loaded(object sender, RoutedEventArgs e)
        {
            
        }

        private void btn_GeneratRecipt_Click(object sender, RoutedEventArgs e)
        {
            Item Temp = new Item() ;
           
            Temp.Price =double.Parse(PricePerItemText.Text);
            Temp.ItemName = ItemText.Text;
            Temp.Qty =int.Parse(QtyText.Text);
            Temp.TotalPrice = Temp.Price * Temp.Qty;

            OrderList.Add(Temp);



            for (int i = 0; i < OrderList.Count; i++)
            {

                sumtotalprice = sumtotalprice + OrderList[i].TotalPrice;
                OrderTotalPriceText.Content = sumtotalprice.ToString();

            }

            Order.Items.Add(Temp); 
           

            ItemText.Text = "";
            QtyText.Text = "";
            PricePerItemText.Text = "";

        }
        private void GetOrder_Click(object sender, RoutedEventArgs e)
        {

            DateTimeOrder.DisplayDate = DateTime.Now;
            DateTimeOrder.Text = DateTime.Now.ToString();

            MessageBoxResult result = MessageBox.Show($"CustomerName: {CustomerNameText.Text}" +
             $"\r\n Number Of Item: {OrderList.Count}" +

             $"\r\n Time Order: {DateTimeOrder.DisplayDate}" +

             $"\r\n Total order price : {sumtotalprice}", "OrderDetails", MessageBoxButton.OKCancel);

            if (result == MessageBoxResult.OK)
            {

                Order.Items.Clear();
                OrderList.Clear();
                sumtotalprice = 0;

            }

        }

    }
}
