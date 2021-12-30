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
        public static List<Speler> OphalenAlleSpelers(int clubId)
        {
            using (PremierLeagueEntities entities = new PremierLeagueEntities())
            {
                var query = entities.Spelers
                    .Include(x => x.Clubs)
                    .Where(x => x.ClubID == clubId)
                    .OrderByDescending(x => x.Achternaam)
                    .ThenByDescending(x => "Clubnaam");
                return query.ToList();
            }
        }

        public static List<Club> OphalenAlleClubs()
        {
            using (PremierLeagueEntities entities = new PremierLeagueEntities())
            {
                var query = entities.Clubs
                    .OrderByDescending(x => "Clubnaam");
                return query.ToList();
            }
        }

        public static List<Speler> OphalenSpelerViaNaam(string naam)
        {
            using (PremierLeagueEntities entities = new PremierLeagueEntities())
            {
                var query = entities.Spelers
                    .Include(x => x.Spelerstat)
                    .Where(x => x.VolledigeNaam.Contains(naam));
                return query.ToList();
            }
        }

        public static List<Speler> OphalenSpelersViaClubID(int clubId)
        {
            using (PremierLeagueEntities entities = new PremierLeagueEntities())
            {
                var query = entities.Spelers
                    .Include(x => x.Clubs)
                    .Include(x => x.Spelerstat)
                    .Where(x => x.ClubID == clubId)
                    .OrderBy(x => x.Achternaam);
                return query.ToList();
            }
        }

        public static List<Clubstatistiek> OphalenRangschikking()
        {
            using (PremierLeagueEntities entities = new PremierLeagueEntities())
            {
                var query = entities.Clubstats
                    .Include(x => x.Clubs)
                    .OrderByDescending(x => x.Punten)
                    .ThenByDescending(x => x.Winst)
                    .ThenByDescending(x => "Doelpuntensaldo");
                return query.ToList();
            }
        }

    }
}
