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
using FantasyPremierLeague_DAL;

namespace NijsDennis_ZX0940_DM_Project
{
    /// <summary>
    /// Interaction logic for MatchenUitslagenWindow.xaml
    /// </summary>
    public partial class MatchenUitslagenWindow : Window
    {
        public MatchenUitslagenWindow()
        {
            InitializeComponent();
        }

        int speeldag = 1;

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            datagridWedstrijdenSpeeldag.ItemsSource = DatabaseOperations.OphalenWedstrijdenSpeeldag(speeldag);
        }

        private void btnVorigeGameweek_Click(object sender, RoutedEventArgs e)
        {
            speeldag--;
            Resetten();
        }

        private void btnGameweek18_Click(object sender, RoutedEventArgs e)
        {
            speeldag = 18;
            Resetten();
        }

        private void btnVolgendeGameweek_Click(object sender, RoutedEventArgs e)
        {
            speeldag++;
            Resetten();
        }

        private void datagridWedstrijdenSpeeldag_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            if (datagridWedstrijdenSpeeldag.SelectedItem is Wedstrijd wedstrijd)
            {
                rbThuisploeg.Content = wedstrijd.ThuisClubs.Clubnaam;
                rbUitploeg.Content = wedstrijd.UitClubs.Clubnaam;

                if (rbThuisploeg.IsChecked == true)
                {
                    datagridSpelersClub.ItemsSource = DatabaseOperations.OphalenSpelersViaClubID(wedstrijd.ThuisClubID);
                    datagridSpelerWedstrijd.ItemsSource = DatabaseOperations.OphalenSpelerWedstrijdViaWedstrijdEnClub(wedstrijd.WedstrijdID, wedstrijd.ThuisClubID);
                }
                else if (rbUitploeg.IsChecked == true)
                {
                    datagridSpelersClub.ItemsSource = DatabaseOperations.OphalenSpelersViaClubID(wedstrijd.UitClubID);
                    datagridSpelerWedstrijd.ItemsSource = DatabaseOperations.OphalenSpelerWedstrijdViaWedstrijdEnClub(wedstrijd.WedstrijdID, wedstrijd.UitClubID);
                }
            }
        }

        private void rbThuisploeg_Checked(object sender, RoutedEventArgs e)
        {
            if (datagridWedstrijdenSpeeldag.SelectedItem is Wedstrijd wedstrijd)
            {
                datagridSpelersClub.ItemsSource = DatabaseOperations.OphalenSpelersViaClubID(wedstrijd.ThuisClubID);
                datagridSpelerWedstrijd.ItemsSource = DatabaseOperations.OphalenSpelerWedstrijdViaWedstrijdEnClub(wedstrijd.WedstrijdID, wedstrijd.ThuisClubID);
            }
        }

        private void rbUitploeg_Checked(object sender, RoutedEventArgs e)
        {
            if (datagridWedstrijdenSpeeldag.SelectedItem is Wedstrijd wedstrijd)
            {
                datagridSpelersClub.ItemsSource = DatabaseOperations.OphalenSpelersViaClubID(wedstrijd.UitClubID);
                datagridSpelerWedstrijd.ItemsSource = DatabaseOperations.OphalenSpelerWedstrijdViaWedstrijdEnClub(wedstrijd.WedstrijdID, wedstrijd.UitClubID);
            }
        }

        private void btnSpelerWedstrijdToevoegen_Click(object sender, RoutedEventArgs e)
        {
            //if (datagridSpelersClub.SelectedItem is Speler speler)
            //{
            //    if (!string.IsNullOrWhiteSpace(txtActies.Text))
            //    {
            //        if (speler.SpelerID != spelerWedstrijd.SpelerID)
            //        {
            //            spelerWedstrijd = new SpelerWedstrijd();

            //            if (cmbActies.SelectedItem.ToString() == "Goal(s)")
            //            {
            //                spelerWedstrijd.Doelpunt = 0;
            //            }
            //        }

            //    }
            //}
        }

        private void btnSpelerWedstrijdVerwijderen_Click(object sender, RoutedEventArgs e)
        {
            SpelerWedstrijd spelerWedstrijd = datagridSpelerWedstrijd.SelectedItem as SpelerWedstrijd;
            int wedstrijdId = spelerWedstrijd.WedstrijdID;
            int clubId = spelerWedstrijd.Spelers.ClubID;

            int ok = DatabaseOperations.VerwijderenSpelerWedstrijd(spelerWedstrijd);
            if (ok > 0)
            {
                datagridSpelerWedstrijd.ItemsSource = DatabaseOperations.OphalenSpelerWedstrijdViaWedstrijdEnClub(wedstrijdId, clubId);
            }
            else
            {
                MessageBox.Show("Speler is niet verwijderd.");
            }
        }

        private void btnSluiten_Click(object sender, RoutedEventArgs e)
        {
            this.Close();
        }

        private void Resetten()
        {
            datagridWedstrijdenSpeeldag.ItemsSource = DatabaseOperations.OphalenWedstrijdenSpeeldag(speeldag);
            datagridSpelersClub.ItemsSource = null;
            datagridSpelerWedstrijd.ItemsSource = null;
            lblHuidigeGameweek.Content = $"GAMEWEEK {speeldag}";
            rbThuisploeg.Content = "Thuisploeg";
            rbUitploeg.Content = "Uitploeg";
        }

        private string Valideer(string columnName)
        {
            if (columnName == "Speeldag" && speeldag < 1 || speeldag > 38)
            {
                return "De speeldagen gaan van 1 tot 38.";
            }
            //if (columnName == "ThuisClubScore" && )
            //{
            //    return "De score van de thuisclub kan niet onder 0.";
            //}
            //if (columnName == "UitClubScore")
            //{
            //    return "De score van de uitclub kan niet onder 0.";
            //}
            return "";
        }
    }
}
