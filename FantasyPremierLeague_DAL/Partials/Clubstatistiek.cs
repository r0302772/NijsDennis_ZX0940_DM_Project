using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FantasyPremierLeague_DAL
{
    public partial class Clubstatistiek
    {
        public Nullable<int> Doelpuntensaldo
        {
            get {return DoelpuntVoor - DoelpuntTegen; }

        }
    }
}
