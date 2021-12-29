using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.Entity;

namespace FantasyPremierLeague_DAL
{
    public static class DatabaseOperations
    {
        public static List<Speler> OphalenSpelers()
        {
            using (PremierLeagueEntities entities = new PremierLeagueEntities())
            {
                var query = entities.Spelers
                    .OrderBy(x => x.Achternaam)
                    .Where(x => x.SpelerID <= 10);
                return query.ToList();
            }
        }

    }
}
