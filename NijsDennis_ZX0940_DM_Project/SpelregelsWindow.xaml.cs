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
    /// Interaction logic for SpelregelsWindow.xaml
    /// </summary>
    public partial class SpelregelsWindow : Window
    {
        public SpelregelsWindow()
        {
            InitializeComponent();
        }

        private void btnTeamKiezen_Click(object sender, RoutedEventArgs e)
        {
            lblSpelregelsTitel.Content = "TEAM KIEZEN";
            SrWindow.Height = 520;
            #region groupboxContent
            lblSpelregelsContent.Content =
                "Selectie:\n" +
                "Je selectie moet uit minstens 11 spelers bestaan.\n\n" +

                "Je opstelling moet bestaan uit minstens:\n" +
                "Minstens 1 DOELMAN\n" +
                "Minstens 3 VERDEDIGERS (V)\n" +
                "Minstens 2 MIDDENVELDERS (M)\n" +
                "Minstens 1 AANVALLER (A)\n\n" +

                "Je hebt dus keuze uit deze verschillende opstellingen (V-M-A):\n" +
                "5-4-1  \t   5-3-2  \t   5-2-3\n" +
                "4-4-2  \t   4-3-3\n" +
                "3-4-3\n\n" +

                "Kapitaal:\n" +
                "Om je ploeg te beginnen krijg je 100 miljoen euro.";
            #endregion
        }

        private void btnTransfers_Click(object sender, RoutedEventArgs e)
        {
            lblSpelregelsTitel.Content = "TRANSFERS";
            SrWindow.Height = 375;
            #region groupboxContent
            lblSpelregelsContent.Content =
                "Transfers:\n" +
                "Je mag elke week 1 gratis transfer doen.\n" +
                "Deze kan je sparen naar maximum 2 gratis transfers.\n\n" +

                "Wil je er meer doen?\n" +
                "Per extra transfer gaan er 4 punten af van je score.\n" +
                "Uiteraard kan je niet buiten je budget gaan.";
            #endregion
        }

        private void btnDeadlines_Click(object sender, RoutedEventArgs e)
        {
            lblSpelregelsTitel.Content = "DEADLINES";
            SrWindow.Height = 375;
            #region groupboxContent
            lblSpelregelsContent.Content = 
                "Alle wijzigingen en transfers in je team moeten gedaan zijn vóór de deadline.\n" +
                "Deze deadline is,\n" +
                "90 minuten vóór de aftrap,\n" +
                "van de eerste wedstrijd,\n" +
                "van de eerstvolgende speeldag.\n\n" +
                "WEES DUS ZEKER OP TIJD!";
            #endregion
        }

        private void btnPunten_Click(object sender, RoutedEventArgs e)
        {
            lblSpelregelsTitel.Content = "PUNTEN";
            SrWindow.Height = 485;
            #region groupboxContent
            lblSpelregelsContent.Content = 
                "Er bestaan verschillende manieren om punten te verdienen namelijk:\n\n" +
                "Een doelpunt = 6\n" +
                "Een assist = 3\n" +
                "Een doelman/verdediger behaalt een clean sheet = 4\n" +
                "Een doelman redt een penalty = 5\n\n" +
                "LET OP, er kunnen ook minpunten verdient worden door:\n\n" +
                "Een gele kaart = -1\n" +
                "Een rode kaart = -3\n" +
                "Een doelman/verdediger krijgt 3 of meer doelpunten tegen = -1\n" +
                "*(Bij 1 of 2 doelpunten tegen krijgt hij 0 punten)*";
            #endregion
        }

        private void btnSluiten_Click(object sender, RoutedEventArgs e)
        {
            this.Close();
        }

    }
}
