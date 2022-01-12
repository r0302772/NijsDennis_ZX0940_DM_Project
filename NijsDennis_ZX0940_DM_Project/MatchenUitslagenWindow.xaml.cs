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
                if (datagridSpelerWedstrijd.SelectedItem is SpelerWedstrijd x)
                {
                    x = datagridSpelerWedstrijd.SelectedItem as SpelerWedstrijd;
                    int wedstrijdId = x.WedstrijdID;
                    int clubId = x.Spelers.ClubID;

                    MessageBoxResult bevestiging = MessageBox.Show($"U staat op het punt om '{x.Spelers.VolledigeNaam}' te verwijderen.", "Weet u het zeker?", MessageBoxButton.YesNo);

                    if (bevestiging == MessageBoxResult.Yes)
                    {
                        int ok = DatabaseOperations.VerwijderenSpelerWedstrijd(x);
                        if (ok > 0)
                        {
                            datagridSpelerWedstrijd.ItemsSource = DatabaseOperations.OphalenSpelerWedstrijdViaWedstrijdEnClub(wedstrijdId, clubId);

                            int ok1 = DatabaseOperations.AanpassenWedstrijd(wedstrijd);
                            if (ok1 > 0)
                            {
                                datagridWedstrijdenSpeeldag.ItemsSource = DatabaseOperations.OphalenWedstrijdenSpeeldag(wedstrijd.Speeldag);

                            }
                            else
                            {
                                MessageBox.Show($"Er is iets misgelopen '{wedstrijd.ThuisClubs.Clubnaam} - {wedstrijd.UitClubs.Clubnaam}' is niet aangepast.");

                            }
                        }
                        else
                        {
                            MessageBox.Show($"Er is iets misgelopen, '{x.Spelers.VolledigeNaam}' is niet verwijderd.");
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
            string foutmeldingen = "";

            if (datagridWedstrijdenSpeeldag.SelectedItem is Wedstrijd wedstrijd)
            {
                if (datagridSpelerWedstrijd.SelectedItem is SpelerWedstrijd x)
                {
                    foutmeldingen += Valideer("Doelpunt", x);
                    foutmeldingen += Valideer("Assist", x);
                    foutmeldingen += Valideer("GeleKaart", x);
                    foutmeldingen += Valideer("RodeKaart", x);
                    foutmeldingen += Valideer("Owngoal", x);

                    if (string.IsNullOrWhiteSpace(foutmeldingen))
                    {
                        if (x.IsGeldig())
                        {
                            int ok = DatabaseOperations.AanpassenSpelerWedstrijd(x);

                            Spelerstatistiek ss = DatabaseOperations.OphalenSpelerstatistiekViaSpelerID(x.SpelerID);

                            Clubstatistiek cs = DatabaseOperations.OphalenClubstatistiekViaClubID(x.Spelers.ClubID);

                            if (ok > 0)
                            {
                                datagridSpelerWedstrijd.ItemsSource = DatabaseOperations.OphalenSpelerWedstrijdViaWedstrijdEnClub(wedstrijd.WedstrijdID, x.Spelers.ClubID);
                                wedstrijd.ThuisClubScore = 0;
                                wedstrijd.UitClubScore = 0;

                                ss.Doelpunt += x.Doelpunt;
                                ss.Assist += x.Assist;
                                ss.GeleKaart += x.GeleKaart;
                                ss.RodeKaart += x.RodeKaart;
                                ss.Owngoal += x.Owngoal;

                                foreach (SpelerWedstrijd s in DatabaseOperations.OphalenWedstrijdSpelerWedstrijdViaWedstrijd(wedstrijd))
                                {
                                    if (s.Spelers.ClubID == wedstrijd.ThuisClubID)
                                    {
                                        wedstrijd.ThuisClubScore += s.Doelpunt;
                                        wedstrijd.UitClubScore += s.Owngoal;
                                    }
                                    else if (s.Spelers.ClubID == wedstrijd.UitClubID)
                                    {
                                        wedstrijd.UitClubScore += s.Doelpunt;
                                        wedstrijd.ThuisClubScore += s.Owngoal;
                                    }
                                }
                            }
                            else
                            {
                                MessageBox.Show($"Er is iets misgelopen '{x.Spelers.VolledigeNaam}' is niet aangepast.");
                            }

                            int ok1 = DatabaseOperations.AanpassenWedstrijd(wedstrijd);
                            if (ok1 > 0)
                            {
                                datagridWedstrijdenSpeeldag.ItemsSource = DatabaseOperations.OphalenWedstrijdenSpeeldag(wedstrijd.Speeldag);
                            }
                            else
                            {
                                MessageBox.Show($"Er is iets misgelopen '{wedstrijd.ThuisClubs.Clubnaam} - {wedstrijd.UitClubs.Clubnaam}' is niet aangepast.");
                            }

                            int ok2 = DatabaseOperations.AanpassenSpelerstats(ss);
                            int ok3 = DatabaseOperations.AanpassenRangschikking(cs);

                            if (ok2 > 0 && ok3 > 0)
                            {

                                ss.Doelpunt = 0;
                                ss.Assist = 0;
                                ss.GeleKaart = 0;
                                ss.RodeKaart = 0;
                                ss.Owngoal = 0;

                                cs.Winst = 0;
                                cs.Gelijk = 0;
                                cs.Verlies = 0;
                                cs.DoelpuntVoor = 0;
                                cs.DoelpuntTegen = 0;

                                foreach (Wedstrijd w in DatabaseOperations.OphalenWedstrijdenViaClubID(x.Spelers.ClubID))
                                {
                                    if (w.ThuisClubID == x.Spelers.ClubID)
                                    {
                                        cs.DoelpuntVoor += w.ThuisClubScore;
                                        cs.DoelpuntTegen += w.UitClubScore;
                                    }
                                    else if (w.UitClubID == x.Spelers.ClubID)
                                    {
                                        cs.DoelpuntVoor += w.UitClubScore;
                                        cs.DoelpuntTegen += w.ThuisClubScore;
                                    }
                                }
                            }
                            else if (ok2 == 0)
                            {
                                MessageBox.Show($"Er is iets misgelopen de stats van '{x.Spelers.VolledigeNaam}' zijn niet aangepast.");
                            }
                            else if (ok3 == 0)
                            {
                                MessageBox.Show($"Er is iets misgelopen de stats van '{x.Spelers.Clubs.Clubnaam}' zijn niet aangepast.");
                            }

                            datagridWedstrijdenSpeeldag.SelectedItem = wedstrijd;
                        }
                        else
                        {
                            MessageBox.Show(x.Error);
                        }

                    }
                    else
                    {
                        MessageBox.Show(foutmeldingen, x.Spelers.VolledigeNaam);
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

        private string Valideer(string columnName, SpelerWedstrijd spelerWedstrijd)
        {

            if (columnName == "Doelpunt" && spelerWedstrijd.Doelpunt < 0)
            {
                return $"Het aantal doelpunten kan niet onder 0.\n";
            }
            if (columnName == "Assist" && spelerWedstrijd.Assist < 0)
            {
                return $"Het aantal assists kan niet onder 0.\n";
            }
            if (columnName == "GeleKaart" && spelerWedstrijd.GeleKaart < 0)
            {
                return $"Het aantal gele kaarten kan niet onder 0.\n";
            }
            if (columnName == "RodeKaart" && spelerWedstrijd.RodeKaart < 0)
            {
                return $"Het aantal rode kaarten kan niet onder 0.\n";
            }
            if (columnName == "Owngoal" && spelerWedstrijd.Owngoal < 0)
            {
                return $"Het aantal owngoals kan niet onder 0.\n";
            }
            return "";
        }

    }
}
