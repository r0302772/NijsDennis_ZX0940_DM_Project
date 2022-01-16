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
            cmbZoekClub.ItemsSource = DatabaseOperations.OphalenAlleClubs();
            cmbZoekClub.DisplayMemberPath = "Clubnaam";
        }

        private void btnZoekSpeler_Click(object sender, RoutedEventArgs e)
        {
            #region ZoekSpelerCode
            if (!string.IsNullOrWhiteSpace(txtZoekSpeler.Text))
            {
                List<Spelerstatistiek> lijstSpelers = DatabaseOperations.OphalenSpelerstatistiekViaNaam(txtZoekSpeler.Text);
                if (lijstSpelers != null)
                {
                    datagridSpelers.ItemsSource = lijstSpelers;
                }
                else
                {
                    MessageBox.Show($"Er zijn geen spelers gevonden met de naam '{txtZoekSpeler.Text}.'");
                }
            }
            else
            {
                MessageBox.Show("Je moet iets invullen!");
            }
            #endregion
        }

        private void btnZoekClub_Click(object sender, RoutedEventArgs e)
        {
            #region ZoekClubCode
            if (cmbZoekClub.SelectedItem is Club club)
            {
                List<Spelerstatistiek> lijstSpelers = DatabaseOperations.OphalenSpelerstatistiekViaClubID(club.ClubID);
                if (lijstSpelers != null)
                {
                    datagridSpelers.ItemsSource = lijstSpelers;
                }
                else
                {
                    MessageBox.Show($"Er zijn geen spelers gevonden van '{cmbZoekClub.SelectedItem}'.");
                }
            }
            else
            {
                MessageBox.Show("Je moet een club selecteren!");
            }
            #endregion
        }

        private void datagridSpelers_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            #region SelectionChangedCode
            if (datagridSpelers.SelectedItem is Spelerstatistiek x)
            {
                txtVoornaam.Text = x.Spelers.Voornaam;
                txtAchternaam.Text = x.Spelers.Achternaam;
                txtShirtnummer.Text = x.Spelers.Shirtnummer;
                txtClub.Text = x.Spelers.Clubs.Clubnaam;

                if (x.Spelers.Positie == "D")
                {
                    rbDoelman.IsChecked = true;
                }
                else if (x.Spelers.Positie == "V")
                {
                    rbVerdediger.IsChecked = true;
                }
                else if (x.Spelers.Positie == "M")
                {
                    rbMiddenvelder.IsChecked = true;
                }
                else
                {
                    rbAanvaller.IsChecked = true;
                }
            }
            #endregion
        }

        private void btnCreateSpeler_Click(object sender, RoutedEventArgs e)
        {
            string foutmeldingen = Valideer("Voornaam");
            foutmeldingen += Valideer("Achternaam");
            foutmeldingen += Valideer("Clubs");
            foutmeldingen += Valideer("Shirtnummer");
            foutmeldingen += Valideer("Positie");

            if (string.IsNullOrWhiteSpace(foutmeldingen))
            {
                #region NieuweSpelerToevoegen
                Speler x = new Speler();
                Spelerstatistiek y = new Spelerstatistiek();

                y.SpelerID = x.SpelerID;
                y.Doelpunt = 0;
                y.Assist = 0;
                y.GeleKaart = 0;
                y.RodeKaart = 0;
                y.Owngoal = 0;

                x.Voornaam = txtVoornaam.Text;
                x.Achternaam = txtAchternaam.Text;
                x.Clubs.Clubnaam = txtClub.Text; // Ik krijg deze foutmelding niet weggewerkt, een create van SpelerWedstrijd in de MatchenUitslagenWindow lukt wel
                //Club c = txtClub.Text as Club;
                //x.Clubs.ClubID = c.ClubID;
                x.Shirtnummer = txtShirtnummer.Text;

                if (rbAanvaller.IsChecked == true)
                {
                    x.Positie = "A";
                }
                else if (rbMiddenvelder.IsChecked == true)
                {
                    x.Positie = "M";
                }
                else if (rbVerdediger.IsChecked == true)
                {
                    x.Positie = "V";
                }
                else
                {
                    x.Positie = "D";
                }
                if (x.IsGeldig())
                {
                    int ok = DatabaseOperations.ToevoegenSpeler(x);
                    int ok1 = DatabaseOperations.ToevoegenSpelerstat(y);
                    if (ok > 0 && ok1 > 0)
                    {
                        datagridSpelers.ItemsSource = DatabaseOperations.OphalenSpelerstatistiekViaNaam(x.VolledigeNaam);
                        Resetten();
                    }
                    else
                    {
                        MessageBox.Show($"Er is iets misgelopen, '{x.VolledigeNaam}' is niet toegevoegd.");
                    }
                }
                else
                {
                    MessageBox.Show(x.Error);
                }
                #endregion
            }
            else
            {
                MessageBox.Show(foutmeldingen);
            }
        }

        private void btnUpdateSpeler_Click(object sender, RoutedEventArgs e)
        {
            if (datagridSpelers.SelectedItem is Spelerstatistiek x)
            {
                string foutmeldingen = Valideer("Voornaam");
                foutmeldingen += Valideer("Achternaam");
                foutmeldingen += Valideer("Clubs");
                foutmeldingen += Valideer("Shirtnummer");
                foutmeldingen += Valideer("Positie");

                if (string.IsNullOrWhiteSpace(foutmeldingen))
                {
                    #region BestaandeSpelerAanpassen
                    x.Spelers.Voornaam = txtVoornaam.Text;
                    x.Spelers.Achternaam = txtAchternaam.Text;
                    x.Spelers.Clubs.Clubnaam = txtClub.Text;

                    x.Spelers.Shirtnummer = txtShirtnummer.Text;
                    if (rbAanvaller.IsChecked == true)
                    {
                        x.Spelers.Positie = "A";
                    }
                    else if (rbMiddenvelder.IsChecked == true)
                    {
                        x.Spelers.Positie = "M";
                    }
                    else if (rbVerdediger.IsChecked == true)
                    {
                        x.Spelers.Positie = "V";
                    }
                    else
                    {
                        x.Spelers.Positie = "D";
                    }
                    if (x.IsGeldig())
                    {

                        int ok = DatabaseOperations.AanpassenSpeler(x.Spelers);
                        if (ok > 0)
                        {
                            datagridSpelers.ItemsSource = DatabaseOperations.OphalenSpelerstatistiekViaClubID(x.Spelers.ClubID);
                            datagridSpelers.SelectedItem = x;
                        }
                        else
                        {
                            MessageBox.Show($"Er is iets misgelopen, {x.Spelers.VolledigeNaam} is niet aangepast.");
                        }
                    }
                    else
                    {
                        MessageBox.Show(x.Error);
                    }
                    #endregion
                }
                else
                {
                    MessageBox.Show(foutmeldingen);
                }

            }
            else
            {
                MessageBox.Show("Selecteer een speler.");
            }

        }

        private void btnDeleteSpeler_Click(object sender, RoutedEventArgs e)
        {
            if (datagridSpelers.SelectedItem is Spelerstatistiek x)
            {
                MessageBoxResult bevestiging = MessageBox.Show($"U staat op het punt om '{x.Spelers.VolledigeNaam}' te verwijderen.", "Weet u het zeker?", MessageBoxButton.YesNo);

                if (bevestiging == MessageBoxResult.Yes)
                {
                    int ok = DatabaseOperations.VerwijderenSpelerEnSpelerstatistiek(x.Spelers, x);
                    if (ok > 0)
                    {
                        datagridSpelers.ItemsSource = null;
                        MessageBox.Show($"Gelukt, '{x.Spelers.VolledigeNaam}' is verwijderd!");
                    }
                    else
                    {
                        MessageBox.Show($"Er is iets misgelopen, '{x.Spelers.VolledigeNaam}' is niet verwijderd.");
                    }
                }
            }
            else
            {
                MessageBox.Show("Selecteer een speler.");
            }
        }

        private void btnClear_Click(object sender, RoutedEventArgs e)
        {
            Resetten();
            datagridSpelers.ItemsSource = null;
        }

        private void btnSluiten_Click(object sender, RoutedEventArgs e)
        {
            this.Close();
        }

        private void Resetten()
        {
            #region ResetCode
            datagridSpelers.SelectedIndex = -1;
            txtVoornaam.Clear();
            txtAchternaam.Clear();
            txtClub.Clear();
            cmbZoekClub.SelectedIndex = -1;
            txtShirtnummer.Clear();
            txtZoekSpeler.Clear();
            rbAanvaller.IsChecked = false;
            rbMiddenvelder.IsChecked = false;
            rbVerdediger.IsChecked = false;
            rbDoelman.IsChecked = false;
            #endregion
        }

        private string Valideer(string columnName)
        {
            #region ValideerCode
            if (columnName == "Achternaam" && string.IsNullOrWhiteSpace(txtAchternaam.Text))
            {
                return "Vul een achternaam in.\n";
            }
            if (columnName == "Clubs" && string.IsNullOrWhiteSpace(txtClub.Text) && DatabaseOperations.OphalenClubViaClubnaam(txtClub.Text) != null)
            {
                return "Vul een correcte club.\n";
            }
            if (columnName == "Shirtnummer" && !int.TryParse(txtShirtnummer.Text, out int shirtnummer))
            {
                return "Shirtnummer moet een numerieke waarde zijn.\n";
            }
            if (columnName == "Spelers.Positie" && rbAanvaller.IsChecked == false && rbMiddenvelder.IsChecked == false &&
                rbVerdediger.IsChecked == false && rbDoelman.IsChecked == false)
            {
                return "Duid een positie aan.";
            }
            return "";
            #endregion
        }
    }
}
