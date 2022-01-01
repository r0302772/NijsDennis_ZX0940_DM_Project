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
        public static List<SpelerWedstrijd> OphalenSpelerWedstrijd(int wedstrijdId, int clubId)
        {
            using (PremierLeagueEntities entities = new PremierLeagueEntities())
            {
                var query = entities.SpelerWedstrijd
                    .Include(x => x.Spelers)
                    .Include(x => x.Wedstrijden)
                    .Where(x => x.WedstrijdID == wedstrijdId)
                    .Where(x => x.Spelers.ClubID == clubId)
                    .OrderByDescending(x => x.Doelpunt)
                    .ThenByDescending(x => x.Assist);
                return query.ToList();
            }
        }

        public static int AanpassenSpelerWedstrijd(SpelerWedstrijd spelerWedstrijd)
        {
            try
            {
                using (PremierLeagueEntities entities = new PremierLeagueEntities())
                {
                    entities.Entry(spelerWedstrijd).State = EntityState.Modified;
                    return entities.SaveChanges();
                }
            }
            catch (Exception ex)
            {
                FileOperations.FoutLoggen(ex);
                return 0;
            }
        }

        public static int VerwijderenSpelerWedstrijd(SpelerWedstrijd spelerWedstrijd)
        {
            try
            {
                using (PremierLeagueEntities entities = new PremierLeagueEntities())
                {
                    entities.Entry(spelerWedstrijd).State = EntityState.Deleted;
                    return entities.SaveChanges();
                }
            }
            catch (Exception ex)
            {
                FileOperations.FoutLoggen(ex);
                return 0;
            }
        }

        public static List<Club> OphalenAlleClubs()
        {
            using (PremierLeagueEntities entities = new PremierLeagueEntities())
            {
                var query = entities.Clubs
                    .OrderBy(x => x.Clubnaam);
                return query.ToList();
            }
        }

        public static List<Spelerstatistiek> OphalenSpelerViaNaam(string naam)
        {
            using (PremierLeagueEntities entities = new PremierLeagueEntities())
            {
                var query = entities.Spelerstats
                    .Include(x => x.Spelers)
                //.Where(x => x.Spelers.VolledigeNaam.Contains(naam));
                .Where(x => x.Spelers.Voornaam.Contains(naam) || x.Spelers.Achternaam.Contains(naam));
                return query.ToList();
            }
        }

        public static List<Spelerstatistiek> OphalenSpelersViaClubID(int clubId)
        {
            using (PremierLeagueEntities entities = new PremierLeagueEntities())
            {
                var query = entities.Spelerstats
                    .Include(x => x.Spelers)
                    .Where(x => x.Spelers.ClubID == clubId)
                    .OrderBy(x => x.Spelers.Achternaam);
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
