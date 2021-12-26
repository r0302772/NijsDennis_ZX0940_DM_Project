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

        private void btnBekijkRangschikking_Click(object sender, RoutedEventArgs e)
        {
            KlassementWindow klassementWindow = new KlassementWindow();
            klassementWindow.Show();
        }

        private void btnMatchUitslagen_Click(object sender, RoutedEventArgs e)
        {
            MatchenUitslagenWindow matchenUitslagenWindow = new MatchenUitslagenWindow();
            matchenUitslagenWindow.Show();
        }

        private void btnBekijkStatistieken_Click(object sender, RoutedEventArgs e)
        {
            StatistiekenWindow statistiekenWindow = new StatistiekenWindow();
            statistiekenWindow.Show();
        }

        private void btnSluiten_Click(object sender, RoutedEventArgs e)
        {
            App.Current.Shutdown();
        }


    }
}
