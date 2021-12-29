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
using FantasyPremierLeague_Models;
using FantasyPremierLeague_DAL;

namespace NijsDennis_ZX0940_DM_Project
{
    /// <summary>
    /// Interaction logic for SpelerMenuWindow.xaml
    /// </summary>
    public partial class SpelerMenuWindow : Window
    {

        public SpelerMenuWindow()
        {
            InitializeComponent();
        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            dataSpelers.ItemsSource = DatabaseOperations.OphalenSpelers();
        }

        private void btnZoeken_Click(object sender, RoutedEventArgs e)
        {

        }

        private void btnSpelerAanpassen_Click(object sender, RoutedEventArgs e)
        {

        }

        private void btnSpelerToevoegen_Click(object sender, RoutedEventArgs e)
        {

        }

        private void btnSluiten_Click(object sender, RoutedEventArgs e)
        {
            App.Current.Shutdown();
        }
    }
}
