using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using FantasyPremierLeague_Models;

namespace FantasyPremierLeague_DAL
{
    public partial class Spelerstatistiek:BasisKlasse
    {
        public override string this[string columnName]
        {
            get
            {
                if (columnName == "Doelpunt" && Doelpunt < 0)
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
}
