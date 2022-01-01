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
using System.Windows.Navigation;
using System.Windows.Shapes;
using FantasyPremierLeague_Models;
using FantasyPremierLeague_DAL;

namespace NijsDennis_ZX0940_DM_Project
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            datagridRangschikking.ItemsSource = DatabaseOperations.OphalenRangschikking();
        }

        private void dataRangschikking_LoadingRow(object sender, DataGridRowEventArgs e)
        {
            int rijnummer = e.Row.GetIndex() + 1;

            e.Row.Header = rijnummer.ToString();

            if (rijnummer == 1)
            {
                e.Row.Background = Brushes.Gold;
            }

            if (rijnummer > 17)
            {
                e.Row.Background = Brushes.Red;
            }

            //https://stackoverflow.com/questions/4661998/simple-way-to-display-row-numbers-on-wpf-datagrid
        }

        private void btnRefresh_Click(object sender, RoutedEventArgs e)
        {
            datagridRangschikking.ItemsSource = DatabaseOperations.OphalenRangschikking();
        }

        private void btnMatchUitslagen_Click(object sender, RoutedEventArgs e)
        {
            MatchenUitslagenWindow matchenUitslagenWindow = new MatchenUitslagenWindow();
            matchenUitslagenWindow.Show();
        }

        private void btnBeheerSpelersEnTeams_Click(object sender, RoutedEventArgs e)
        {
            SpelerMenuWindow spelerMenuWindow = new SpelerMenuWindow();
            spelerMenuWindow.Show();
        }

        private void btnSluiten_Click(object sender, RoutedEventArgs e)
        {
            App.Current.Shutdown();
        }


    }
}
