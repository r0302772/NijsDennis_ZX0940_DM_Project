using System;
using System.Collections.Generic;
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
using System.Windows.Shapes;

namespace NijsDennis_ZX0940_DM_Project
{
    /// <summary>
    /// Interaction logic for StatistiekenWindow.xaml
    /// </summary>
    public partial class StatistiekenWindow : Window
    {
        public StatistiekenWindow()
        {
            InitializeComponent();
        }

        private void btnZoeken_Click(object sender, RoutedEventArgs e)
        {

        }

        private void btnSluiten_Click(object sender, RoutedEventArgs e)
        {
            this.Close();
        }
    }
}
