using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using FantasyPremierLeague_Models;

namespace FantasyPremierLeague_DAL
{
    public partial class Clubstatistiek : BasisKlasse
    {
        public Nullable<int> Doelpuntensaldo
        {
            get { return DoelpuntVoor - DoelpuntTegen; }
        }

        public override string this[string columnName]
        {
            get
            {
                if (columnName == "Winst" && Winst < 0)
                {
                    return "Het aantal overwinningen kan niet onder 0.";
                }
                if (columnName == "Gelijk" && Gelijk < 0)
                {
                    return "Het aantal gelijkspelen kan niet onder 0.";
                }
                if (columnName == "Verlies" && Verlies < 0)
                {
                    return "Het aantal nederlagen kan niet onder 0.";
                }
                if (columnName == "DoelpuntVoor" && DoelpuntVoor < 0)
                {
                    return "Het aantal gescoorde doelpunten kan niet onder 0.";
                }
                if (columnName == "DoelpuntTegen" && DoelpuntTegen < 0)
                {
                    return "Het aantal tegendoelpunten kan niet onder 0.";
                }
                return "";
            }
        }
    }
}
