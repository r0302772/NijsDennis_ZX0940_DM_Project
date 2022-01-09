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
            if (datagridWedstrijdenSpeeldag.SelectedItem is Wedstrijd wedstrijd)
            {
                if (datagridSpelersClub.SelectedItem is Speler speler)
                {
                    int ok = DatabaseOperations.SpelerZoekenInSpelerWedstrijd(wedstrijd.WedstrijdID, speler.SpelerID);
                    if (ok > 0)
                    {
                        MessageBox.Show("Deze speler zit al in de wedstrijdstats.");
                    }
                    else
                    {
                        SpelerWedstrijd spelerWedstrijd = new SpelerWedstrijd();
                        spelerWedstrijd.SpelerID = speler.SpelerID;
                        spelerWedstrijd.WedstrijdID = wedstrijd.WedstrijdID;
                        spelerWedstrijd.Doelpunt = 0;
                        spelerWedstrijd.Assist = 0;
                        spelerWedstrijd.GeleKaart = 0;
                        spelerWedstrijd.RodeKaart = 0;
                        spelerWedstrijd.Owngoal = 0;

                        int ok2 = DatabaseOperations.ToevoegenSpelerWedstrijd(spelerWedstrijd);
                        if (ok2 > 0)
                        {
                            datagridSpelerWedstrijd.ItemsSource = DatabaseOperations.OphalenSpelerWedstrijdViaWedstrijdEnClub(wedstrijd.WedstrijdID, speler.ClubID);
                        }
                        else
                        {
                            MessageBox.Show($"Er is iets misgelopen bij het toevoegen van '{spelerWedstrijd.Spelers.VolledigeNaam}'");
                        }
                    }
                }
                else
                {
                    MessageBox.Show("Selecteer een speler uit de club.");
                }
            }
            else
            {
                MessageBox.Show("Selecteer een wedstrijd.");
            }
        }

        private void btnSpelerWedstrijdVerwijderen_Click(object sender, RoutedEventArgs e)
        {
            if (datagridWedstrijdenSpeeldag.SelectedItem is Wedstrijd wedstrijd)
            {
                if (datagridSpelerWedstrijd.SelectedItem is SpelerWedstrijd spelerWedstrijd)
                {
                    spelerWedstrijd = datagridSpelerWedstrijd.SelectedItem as SpelerWedstrijd;
                    int wedstrijdId = spelerWedstrijd.WedstrijdID;
                    int clubId = spelerWedstrijd.Spelers.ClubID;

                    MessageBoxResult bevestiging = MessageBox.Show($"U staat op het punt om '{spelerWedstrijd.Spelers.VolledigeNaam}' te verwijderen.", "Weet u het zeker?", MessageBoxButton.YesNo);

                    if (bevestiging == MessageBoxResult.Yes)
                    {
                        int ok = DatabaseOperations.VerwijderenSpelerWedstrijd(spelerWedstrijd);
                        if (ok > 0)
                        {
                            datagridSpelerWedstrijd.ItemsSource = DatabaseOperations.OphalenSpelerWedstrijdViaWedstrijdEnClub(wedstrijdId, clubId);
                        }
                        else
                        {
                            MessageBox.Show($"Er is iets misgelopen, '{spelerWedstrijd.Spelers.VolledigeNaam}' is niet verwijderd.");
                        }
                    }
                }
                else
                {
                    MessageBox.Show("Selecteer een speler uit de rechtertabel.");
                }
            }
            else
            {
                MessageBox.Show("Selecteer een wedstrijd.");
            }
        }

        private void btnOpslaan_Click(object sender, RoutedEventArgs e)
        {
            string foutmeldingen = Valideer("Doelpunt");
            foutmeldingen += Valideer("Assist");
            foutmeldingen += Valideer("GeleKaart");
            foutmeldingen += Valideer("RodeKaart");
            foutmeldingen += Valideer("Owngoal");

            if (string.IsNullOrWhiteSpace(foutmeldingen))
            {

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
            if (columnName == "Doelpunt" && datagridSpelerWedstrijd.CurrentColumn)
            {
                return "Het aantal doelpunten kan niet onder 0.\n";
            }
            if (columnName == "Assist" && Assist < 0)
            {
                return "Het aantal assists kan niet onder 0.\n";
            }
            if (columnName == "GeleKaart" && GeleKaart < 0)
            {
                return "Het aantal gele kaarten kan niet onder 0.\n";
            }
            if (columnName == "RodeKaart" && RodeKaart < 0)
            {
                return "Het aantal rode kaarten kan niet onder 0.\n";
            }
            if (columnName == "Owngoal" && Owngoal < 0)
            {
                return "Het aantal owngoals kan niet onder 0.\n";
            }
            return "";
        }
    }
}
