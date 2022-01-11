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
        public static int AanpassenWedstrijd(Wedstrijd wedstrijd)
        {
            try
            {
                using (PremierLeagueEntities entities = new PremierLeagueEntities())
                {
                    entities.Entry(wedstrijd).State = EntityState.Modified;
                    return entities.SaveChanges();
                }
            }
            catch (Exception ex)
            {
                FileOperations.FoutLoggen(ex);
                return 0;
            }

        }

        public static int AanpassenRangschikking(Clubstatistiek clubstatistiek)
        {
            try
            {
                using (PremierLeagueEntities entities = new PremierLeagueEntities())
                {
                    entities.Entry(clubstatistiek).State = EntityState.Modified;
                    return entities.SaveChanges();
                }
            }
            catch (Exception ex)
            {
                FileOperations.FoutLoggen(ex);
                return 0;
            }
        }

        public static int AanpassenSpelerstats(Spelerstatistiek spelerstatistiek)
        {
            try
            {
                using (PremierLeagueEntities entities = new PremierLeagueEntities())
                {
                    entities.Entry(spelerstatistiek).State = EntityState.Modified;
                    return entities.SaveChanges();
                }
            }
            catch (Exception ex)
            {
                FileOperations.FoutLoggen(ex);
                return 0;
            }
        }

        public static List<SpelerWedstrijd> OphalenSpelerWedstrijdViaWedstrijdEnClub(int wedstrijdId, int clubId)
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

        public static SpelerWedstrijd OphalenSpelerWedstrijdViaWedstrijdEnSpeler(int wedstrijdId, int spelerId)
        {
            using (PremierLeagueEntities entities = new PremierLeagueEntities())
            {
                var query = entities.SpelerWedstrijd
                    .Where(x => x.WedstrijdID == wedstrijdId)
                    .Where(x => x.SpelerID == spelerId);
                return query.SingleOrDefault();
            }
        }

        public static int SpelerZoekenInSpelerWedstrijd(int wedstrijdId, int spelerId)
        {
            try
            {
                using (PremierLeagueEntities entities = new PremierLeagueEntities())
                {
                    var query = entities.SpelerWedstrijd
                    .Where(x => x.WedstrijdID == wedstrijdId)
                    .Where(x => x.SpelerID == spelerId);
                    return query.Count();
                }
            }
            catch (Exception ex)
            {
                FileOperations.FoutLoggen(ex);
                return 0;
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

        public static List<Spelerstatistiek> OphalenSpelerstatistiekViaNaam(string naam)
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

        public static List<Speler> OphalenSpelersViaClubID(int clubId)
        {
            using (PremierLeagueEntities entities = new PremierLeagueEntities())
            {
                var query = entities.Spelers
                    .Where(x => x.ClubID == clubId)
                    .OrderBy(x => x.Achternaam);
                return query.ToList();
            }
        }

        public static List<Spelerstatistiek> OphalenSpelerstatistiekViaClubID(int clubId)
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

        public static List<SpelerWedstrijd> OphalenSpelerWedstrijdMetSlechteWaardes()
        {
            using (PremierLeagueEntities entities = new PremierLeagueEntities())
            {
                var query = entities.SpelerWedstrijd
                .Where(x => x.Doelpunt <= 0 && x.Assist <= 0 && x.GeleKaart <= 0 && x.RodeKaart <= 0 && x.Owngoal <= 0);
                return query.ToList();
            }
        }

        public static List<SpelerWedstrijd> OphalenSpelerWedstrijdViaWedstrijd(Wedstrijd wedstrijd)
        {
            using (PremierLeagueEntities entities = new PremierLeagueEntities())
            {
                var query = entities.SpelerWedstrijd
                .Where(x => x.WedstrijdID == wedstrijd.WedstrijdID);
                return query.ToList();
            }
        }

        public static List<SpelerWedstrijd> OphalenWedstrijdSpelerWedstrijdViaWedstrijd(Wedstrijd wedstrijd)
        {
            using (PremierLeagueEntities entities = new PremierLeagueEntities())
            {
                var query = entities.SpelerWedstrijd
                    .Include(x => x.Spelers.Clubs)
                    .Include(x => x.Spelers.Spelerstat)
                .Where(x => x.WedstrijdID == wedstrijd.WedstrijdID);
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

        public static int ToevoegenSpelerWedstrijd(SpelerWedstrijd spelerWedstrijd)
        {
            try
            {
                using (PremierLeagueEntities entities = new PremierLeagueEntities())
                {
                    entities.SpelerWedstrijd.Add(spelerWedstrijd);
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
