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
            if (!string.IsNullOrWhiteSpace(txtZoekSpeler.Text))
            {
                List<Speler> spelersMetDeNaam = DatabaseOperations.OphalenSpelerViaNaam(txtZoekSpeler.Text);
                if (spelersMetDeNaam != null)
                {
                    //datagridSpelers.Items.Clear();
                    datagridSpelers.ItemsSource = spelersMetDeNaam;
                }
                else
                {
                    MessageBox.Show($"Er zijn geen spelers gevonden met de naam {txtZoekSpeler.Text}.");
                }
            }
            else
            {
                MessageBox.Show("Je moet iets invullen!");
            }
        }

        private void btnZoekClub_Click(object sender, RoutedEventArgs e)
        {
            if (cmbZoekClub.SelectedItem is Club club)
            {
                List<Speler> spelersVanEenClub = DatabaseOperations.OphalenSpelersViaClubID(club.ClubID);
                if (spelersVanEenClub != null)
                {
                    //datagridSpelers.Items.Clear();
                    datagridSpelers.ItemsSource = spelersVanEenClub;
                }
                else
                {
                    MessageBox.Show($"Er zijn geen spelers gevonden van {cmbZoekClub.SelectedItem}.");
                }
            }
            else
            {
                MessageBox.Show("Je moet een club selecteren!");
            }
        }

        private void datagridSpelers_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            if (datagridSpelers.SelectedItem is Speler speler)
            {
                txtVoornaam.Text = speler.Voornaam;
                txtAchternaam.Text = speler.Achternaam;
                txtClub.Text = speler.Clubs.Clubnaam;
                txtShirtnummer.Text = speler.Shirtnummer;
                if (speler.Positie == "D")
                {
                    rbDoelman.IsChecked = true;
                }
                else if (speler.Positie == "V")
                {
                    rbVerdediger.IsChecked = true;
                }
                else if (speler.Positie == "M")
                {
                    rbMiddenvelder.IsChecked = true;
                }
                else
                {
                    rbAanvaller.IsChecked = true;
                }
            }
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
