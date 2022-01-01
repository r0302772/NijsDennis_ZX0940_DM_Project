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
                    .ThenByDescending(x => x.Clubs.Clubnaam);
                return query.ToList();
            }
        }

        public static List<SpelerWedstrijd> OphalenSpelerWedstrijd(int wedstrijdId)
        {
            using (PremierLeagueEntities entities = new PremierLeagueEntities())
            {
                var query = entities.SpelerWedstrijd
                    .Include(x => x.Spelers)
                    .Include(x => x.Wedstrijden.ThuisClubs)
                    .Include(x => x.Wedstrijden.UitClubs)
                    .Where(x => x.WedstrijdID == wedstrijdId)
                    .OrderByDescending(x => x.Doelpunt)
                    .ThenByDescending(x => x.Assist);
                return query.ToList();
            }
        }

        public static List<Club> OphalenAlleClubs()
        {
            using (PremierLeagueEntities entities = new PremierLeagueEntities())
            {
                var query = entities.Clubs
                    .OrderByDescending(x => x.Clubnaam);
                return query.ToList();
            }
        }

        public static List<Speler> OphalenSpelerViaNaam(string naam)
        {
            using (PremierLeagueEntities entities = new PremierLeagueEntities())
            {
                var query = entities.Spelers
                    //.Where(x => x.VolledigeNaam.Contains(naam));
                    .Where(x => x.Voornaam.Contains(naam) || x.Achternaam.Contains(naam));
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

        public static int ToevoegenSpeler(Speler speler)
        {
            try
            {
                using (PremierLeagueEntities entities = new PremierLeagueEntities())
                {
                    entities.Spelers.Add(speler);
                    return entities.SaveChanges();
                }
            }
            catch (Exception ex)
            {
                FileOperations.FoutLoggen(ex);
                return 0;
            }
        }

        public static int AanpassenSpeler(Speler speler)
        {
            try
            {
                using (PremierLeagueEntities entities = new PremierLeagueEntities())
                {
                    entities.Entry(speler).State = EntityState.Modified;
                    return entities.SaveChanges();
                }

            }
            catch (Exception ex)
            {
                FileOperations.FoutLoggen(ex);
                return 0;
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
                    //ThenByDescending(x => x.Doelpuntensaldo)
                    .ThenByDescending(x => x.DoelpuntVoor - x.DoelpuntTegen);
                return query.ToList();
            }
        }

        public static List<Wedstrijd> OphalenWedstrijdenSpeeldag(int speeldag)
        {
            using (PremierLeagueEntities entities = new PremierLeagueEntities())
            {
                var query = entities.Wedstrijden
                    .Include(x => x.ThuisClubs)
                    .Include(x => x.UitClubs)
                    .Where(x => x.Speeldag == speeldag);
                return query.ToList();
            }
        }
    }
}
