-- MovieLens Latest Small (2018): https://grouplens.org/datasets/movielens/
-- Le serate sono una costruzione didattica, NON proiezioni reali.
-- I voti sono medie calcolate da ratings.csv; si conservano somma e numero.
-- La distribuzione del dataset derivato è soggetta alla licenza MovieLens:
-- https://files.grouplens.org/datasets/movielens/ml-latest-small-README.html
CREATE DATABASE IF NOT EXISTS cineclub;
USE cineclub;
CREATE TABLE IF NOT EXISTS film (
  id INT PRIMARY KEY,
  titolo VARCHAR(255) NOT NULL,
  genere VARCHAR(30) NOT NULL,
  serata TINYINT NOT NULL,
  numero_voti INT NOT NULL,
  somma_voti DECIMAL(10,2) NOT NULL,
  INDEX idx_serata (serata)
);
INSERT INTO film VALUES (737, 'Barb Wire (1996)', 'Action', 1, 20, 53.00);
INSERT INTO film VALUES (89492, 'Moneyball (2011)', 'Drama', 1, 26, 101.00);
INSERT INTO film VALUES (2428, 'Faculty, The (1998)', 'Sci-Fi', 1, 23, 57.00);
INSERT INTO film VALUES (3869, 'Naked Gun 2 1/2: The Smell of Fear, The (1991)', 'Comedy', 1, 26, 89.00);
INSERT INTO film VALUES (1230, 'Annie Hall (1977)', 'Comedy', 2, 58, 224.50);
INSERT INTO film VALUES (362, 'Jungle Book, The (1994)', 'Romance', 2, 34, 120.00);
INSERT INTO film VALUES (1267, 'Manchurian Candidate, The (1962)', 'Thriller', 2, 30, 127.50);
INSERT INTO film VALUES (648, 'Mission: Impossible (1996)', 'Action', 2, 162, 573.00);
INSERT INTO film VALUES (67255, 'Girl with the Dragon Tattoo, The (Män som hatar kvinnor) (2009)', 'Drama', 3, 25, 98.50);
INSERT INTO film VALUES (32, 'Twelve Monkeys (a.k.a. 12 Monkeys) (1995)', 'Sci-Fi', 3, 177, 705.00);
INSERT INTO film VALUES (2427, 'Thin Red Line, The (1998)', 'Action', 3, 35, 115.50);
INSERT INTO film VALUES (3785, 'Scary Movie (2000)', 'Comedy', 3, 50, 146.00);
INSERT INTO film VALUES (4975, 'Vanilla Sky (2001)', 'Romance', 4, 44, 150.50);
INSERT INTO film VALUES (4105, 'Evil Dead, The (1981)', 'Thriller', 4, 22, 84.00);
INSERT INTO film VALUES (4361, 'Tootsie (1982)', 'Comedy', 4, 32, 109.50);
INSERT INTO film VALUES (4448, 'Score, The (2001)', 'Action', 4, 20, 71.00);
INSERT INTO film VALUES (53000, '28 Weeks Later (2007)', 'Sci-Fi', 5, 21, 75.50);
INSERT INTO film VALUES (5445, 'Minority Report (2002)', 'Action', 5, 120, 436.50);
INSERT INTO film VALUES (39183, 'Brokeback Mountain (2005)', 'Drama', 5, 34, 121.00);
INSERT INTO film VALUES (2657, 'Rocky Horror Picture Show, The (1975)', 'Comedy', 5, 63, 210.50);
INSERT INTO film VALUES (1347, 'Nightmare on Elm Street, A (1984)', 'Thriller', 6, 27, 81.00);
INSERT INTO film VALUES (4816, 'Zoolander (2001)', 'Comedy', 6, 54, 189.50);
INSERT INTO film VALUES (595, 'Beauty and the Beast (1991)', 'Romance', 6, 146, 550.50);
INSERT INTO film VALUES (434, 'Cliffhanger (1993)', 'Action', 6, 101, 306.50);
INSERT INTO film VALUES (5903, 'Equilibrium (2002)', 'Action', 7, 44, 170.50);
INSERT INTO film VALUES (106920, 'Her (2013)', 'Drama', 7, 25, 98.00);
INSERT INTO film VALUES (3300, 'Pitch Black (2000)', 'Sci-Fi', 7, 39, 139.00);
INSERT INTO film VALUES (5617, 'Secretary (2002)', 'Comedy', 7, 25, 97.50);
INSERT INTO film VALUES (3825, 'Coyote Ugly (2000)', 'Comedy', 8, 29, 79.50);
INSERT INTO film VALUES (60069, 'WALL·E (2008)', 'Romance', 8, 104, 422.00);
INSERT INTO film VALUES (2707, 'Arlington Road (1999)', 'Thriller', 8, 22, 72.00);
INSERT INTO film VALUES (112, 'Rumble in the Bronx (Hont faan kui) (1995)', 'Action', 8, 46, 163.00);
INSERT INTO film VALUES (5971, 'My Neighbor Totoro (Tonari no Totoro) (1988)', 'Drama', 9, 37, 146.50);
INSERT INTO film VALUES (109487, 'Interstellar (2014)', 'Sci-Fi', 9, 73, 291.50);
INSERT INTO film VALUES (52722, 'Spider-Man 3 (2007)', 'Action', 9, 44, 132.00);
INSERT INTO film VALUES (471, 'Hudsucker Proxy, The (1994)', 'Comedy', 9, 40, 142.00);
INSERT INTO film VALUES (1022, 'Cinderella (1950)', 'Romance', 10, 42, 146.50);
INSERT INTO film VALUES (40815, 'Harry Potter and the Goblet of Fire (2005)', 'Thriller', 10, 71, 271.00);
INSERT INTO film VALUES (2502, 'Office Space (1999)', 'Comedy', 10, 94, 384.50);
INSERT INTO film VALUES (56174, 'I Am Legend (2007)', 'Action', 10, 62, 216.00);
INSERT INTO film VALUES (1779, 'Sphere (1998)', 'Sci-Fi', 11, 23, 63.50);
INSERT INTO film VALUES (589, 'Terminator 2: Judgment Day (1991)', 'Action', 11, 224, 889.50);
INSERT INTO film VALUES (1704, 'Good Will Hunting (1997)', 'Drama', 11, 141, 575.00);
INSERT INTO film VALUES (104, 'Happy Gilmore (1996)', 'Comedy', 11, 99, 340.50);
INSERT INTO film VALUES (3535, 'American Psycho (2000)', 'Thriller', 12, 59, 223.50);
INSERT INTO film VALUES (53121, 'Shrek the Third (2007)', 'Comedy', 12, 21, 63.50);
INSERT INTO film VALUES (31658, 'Howl''s Moving Castle (Hauru no ugoku shiro) (2004)', 'Romance', 12, 40, 163.00);
INSERT INTO film VALUES (2571, 'Matrix, The (1999)', 'Action', 12, 278, 1165.50);
