using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FantasyPremierLeague_DAL
{
    public partial class Speler
    {
        public string VolledigeNaam
        {
            get { return $"{Voornaam} {Achternaam}"; }
        }
    }
}
