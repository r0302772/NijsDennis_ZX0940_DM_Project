﻿using System;
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
            cmbClubSpeler.ItemsSource = DatabaseOperations.OphalenAlleClubs();
            cmbZoekClub.DisplayMemberPath = "Clubnaam";
            cmbClubSpeler.DisplayMemberPath = "Clubnaam";
        }

        private void btnZoekSpeler_Click(object sender, RoutedEventArgs e)
        {
            #region ZoekSpelerCode
            if (!string.IsNullOrWhiteSpace(txtZoekSpeler.Text))
            {
                List<Spelerstatistiek> lijstSpelers = DatabaseOperations.OphalenSpelerstatistiekViaNaam(txtZoekSpeler.Text);
                if (lijstSpelers.Count() < 0)
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
            if (datagridSpelers.SelectedItem is Spelerstatistiek spelerstatistiek)
            {
                txtVoornaam.Text = spelerstatistiek.Spelers.Voornaam;
                txtAchternaam.Text = spelerstatistiek.Spelers.Achternaam;
                txtShirtnummer.Text = spelerstatistiek.Spelers.Shirtnummer;
                if (spelerstatistiek.Spelers.Positie == "D")
                {
                    rbDoelman.IsChecked = true;
                }
                else if (spelerstatistiek.Spelers.Positie == "V")
                {
                    rbVerdediger.IsChecked = true;
                }
                else if (spelerstatistiek.Spelers.Positie == "M")
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

        private void btnAnnuleren_Click(object sender, RoutedEventArgs e)
        {
            Resetten();
        }

        private void btnNieuweSpeler_Click(object sender, RoutedEventArgs e)
        {
            Resetten();
        }

        private void btnOpslaan_Click(object sender, RoutedEventArgs e)
        {
            #region OpslaanCode
            string foutmeldingen = Valideer("Voornaam");
            foutmeldingen += Valideer("Achternaam");
            foutmeldingen += Valideer("Clubnaam");
            foutmeldingen += Valideer("Shirtnummer");
            foutmeldingen += Valideer("Positie");

            if (string.IsNullOrWhiteSpace(foutmeldingen))
            {
                if (datagridSpelers.SelectedIndex == -1)
                {
                    #region NieuweSpelerToevoegen
                    Speler nieuweSpeler = new Speler();
                    nieuweSpeler.Voornaam = txtVoornaam.Text;
                    nieuweSpeler.Achternaam = txtAchternaam.Text;
                    //nieuweSpeler.Clubs.Clubnaam = cmbClubSpeler.SelectedItem.ToString();
                    nieuweSpeler.Shirtnummer = txtShirtnummer.Text;
                    if (rbAanvaller.IsChecked == true)
                    {
                        nieuweSpeler.Positie = "A";
                    }
                    else if (rbMiddenvelder.IsChecked == true)
                    {
                        nieuweSpeler.Positie = "M";
                    }
                    else if (rbVerdediger.IsChecked == true)
                    {
                        nieuweSpeler.Positie = "V";
                    }
                    else
                    {
                        nieuweSpeler.Positie = "D";
                    }
                    if (nieuweSpeler.IsGeldig())
                    {
                        int ok = DatabaseOperations.ToevoegenSpeler(nieuweSpeler);
                        if (ok > 0)
                        {
                            datagridSpelers.ItemsSource = DatabaseOperations.OphalenSpelerstatistiekViaNaam(nieuweSpeler.VolledigeNaam);
                            Resetten();
                        }
                        else
                        {
                            MessageBox.Show($"Er is iets misgelopen, {nieuweSpeler.VolledigeNaam} is niet toegevoegd.");
                        }
                    }
                    else
                    {
                        MessageBox.Show(nieuweSpeler.Error);
                    }
                    #endregion
                }

                else
                {
                    #region BestaandeSpelerAanpassen
                    Speler bestaandeSpeler = datagridSpelers.SelectedItem as Speler;
                    bestaandeSpeler.Voornaam = txtVoornaam.Text;
                    bestaandeSpeler.Achternaam = txtAchternaam.Text;
                    //bestaandeSpeler.Clubs.Clubnaam = cmbClubSpeler.SelectedItem.ToString();
                    bestaandeSpeler.Shirtnummer = txtShirtnummer.Text;
                    if (rbAanvaller.IsChecked == true)
                    {
                        bestaandeSpeler.Positie = "A";
                    }
                    else if (rbMiddenvelder.IsChecked == true)
                    {
                        bestaandeSpeler.Positie = "M";
                    }
                    else if (rbVerdediger.IsChecked == true)
                    {
                        bestaandeSpeler.Positie = "V";
                    }
                    else
                    {
                        bestaandeSpeler.Positie = "D";
                    }
                    if (bestaandeSpeler.IsGeldig())
                    {

                        int ok = DatabaseOperations.AanpassenSpeler(bestaandeSpeler);
                        if (ok > 0)
                        {
                            datagridSpelers.ItemsSource = DatabaseOperations.OphalenSpelerstatistiekViaNaam(bestaandeSpeler.VolledigeNaam);
                            Resetten();
                        }
                        else
                        {
                            MessageBox.Show($"Er is iets misgelopen, {bestaandeSpeler.VolledigeNaam} is niet aangepast");
                        }

                    }
                    else
                    {
                        MessageBox.Show(bestaandeSpeler.Error);
                    }
                    #endregion
                }

            }
            else
            {
                MessageBox.Show(foutmeldingen);
            }
            #endregion
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
            cmbClubSpeler.SelectedIndex = -1;
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
            if (columnName == "Voornaam" && string.IsNullOrWhiteSpace(txtVoornaam.Text))
            {
                return "Vul een voornaam in.\n";
            }
            if (columnName == "Achternaam" && string.IsNullOrWhiteSpace(txtAchternaam.Text))
            {
                return "Vul een achternaam in.\n";
            }
            if (columnName == "Clubs.Clubnaam" && string.IsNullOrWhiteSpace(cmbClubSpeler.SelectedItem.ToString()))
            {
                return "Vul een club in.\n";
            }
            if (columnName == "Shirtnummer" && string.IsNullOrWhiteSpace(txtShirtnummer.Text) || !int.TryParse(txtShirtnummer.Text, out int shirtnummer))
            {
                return "Shirtnummer moet een numerieke waarde zijn.\n";
            }
            if (columnName == "Positie" && rbAanvaller.IsChecked == false || rbMiddenvelder.IsChecked == false ||
                rbVerdediger.IsChecked == false || rbDoelman.IsChecked == false)
            {
                return "Duid een positie aan.";
            }
            return "";
            #endregion
        }

        private void btnVerwijderSpeler_Click(object sender, RoutedEventArgs e)
        {

        }
    }
}
