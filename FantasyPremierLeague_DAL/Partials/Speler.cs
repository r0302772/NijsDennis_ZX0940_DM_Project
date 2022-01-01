using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using FantasyPremierLeague_Models;

namespace FantasyPremierLeague_DAL
{
    public partial class Speler : BasisKlasse
    {
        public string VolledigeNaam
        {
            get { return $"{Voornaam} {Achternaam}"; }
        }

        public override string this[string columnName]
        {
            get
            {
                if (columnName == "Voornaam" && Voornaam == "")
                {
                    return "Vul een voornaam in.\n";
                }
                if (columnName == "Achternaam" && Achternaam == "")
                {
                    return "Vul een achternaam in.\n";
                }
                if (columnName == "Clubs.Clubnaam" && Clubs.Clubnaam == "")
                {
                    return "Vul een club in.\n";
                }
                if (columnName == "Shirtnummer" && Shirtnummer == "" || !int.TryParse(Shirtnummer, out int shirtnummer) || int.Parse(Shirtnummer) > 100)
                {
                    return "Shirtnummer moet een numerieke waarde zijn lager dan 100.\n";
                }
                if (columnName == "Positie" && Positie != "A" || Positie != "M" ||
                    Positie != "V" || Positie != "D")
                {
                    return "Duid een positie aan.";
                }
                return ""; ;
            }
        }
    }
}