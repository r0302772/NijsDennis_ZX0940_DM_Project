using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using FantasyPremierLeague_Models;

namespace FantasyPremierLeague_DAL
{
    public partial class Wedstrijd : BasisKlasse
    {
        public string Uitslag
        {
            get
            {
                return $"{ThuisClubScore} - {UitClubScore}";
            }
        }

        public override string this[string columnName]
        {
            get
            {
                if (columnName == "Speeldag" && Speeldag < 1 || Speeldag > 38)
                {
                    return "De speeldagen gaan van 1 tot 38.";
                }        
                if (columnName == "ThuisClubScore" && ThuisClubScore < 0)
                {
                    return "De score van de thuisclub kan niet onder 0.";
                }
                if (columnName == "UitClubScore" && UitClubScore < 0)
                {
                    return "De score van de uitclub kan niet onder 0.";
                }
                return "";
            }
        }
    }
}
