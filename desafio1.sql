DROP DATABASE IF EXISTS SpotifyClone;

  CREATE DATABASE IF NOT EXISTS SpotifyClone;

  USE SpotifyClone;

  CREATE TABLE SpotifyClone.contracts(
  contract_id INT PRIMARY KEY AUTO_INCREMENT,
  contract_name CHAR(25) NOT NULL,
  contract_price DECIMAL(6, 2)
  );
  INSERT INTO contracts (contract_name, contract_price)
  VALUES
    ('gratuito', 00.00),
	  ('familiar', 7.99),
    ('universitário', 5.99),
    ('pessoal', 6.99);

  CREATE TABLE SpotifyClone.users(
  user_id INT PRIMARY KEY AUTO_INCREMENT,
  user_name VARCHAR(255) NOT NULL,
  age INT NOT NULL,
  user_since DATE,
	contract_id INTEGER,
	FOREIGN KEY (contract_id) REFERENCES contracts(contract_id)
  );

   INSERT INTO users (user_name, age, user_since, contract_id)
  VALUES
    ('Chris Bumstead', '27', '2017-01-23', '2'),
    ('Arnold Schwarzenegger', '75', '2019-03-27', '2'),
    ('Ramom dino', '26', '2020-08-05', '2'),
    ('Ronnie Coleman', '55', '2018-07-23', '3'),
    ('Jay Cutler', '52', '2021-04-15', '2'),
    ('Phil Heath', '83', '2018-12-26', '3'),
    ('Eddie Hall', '42', '2027-02-23', '1'),
    ('Arcenio Aguiar', '21', '2019-11-10', '1'),
    ('Anibal', '20', '2018-04-09', '1'),
    ('Paulo Muzy', '42', '2019-07-17', '3');

   CREATE TABLE SpotifyClone.artists(
  artist_id INT PRIMARY KEY AUTO_INCREMENT,
  artist_name CHAR(255) NOT NULL
  );
  INSERT INTO artists (artist_name)
  VALUES
  ('Beyoncé'),
  ('Queen'),
  ('Elis Regina'),
  ('Baco Exu do Blues'),
  ('Blind Guardian'),
  ('Nina Simone');

  CREATE TABLE SpotifyClone.seguindo_artistas(
	user_id INT,
    artist_id INT,
    PRIMARY KEY (user_id, artist_id),
    FOREIGN KEY (userid) REFERENCES users (user_id),
    FOREIGN KEY (artist_id) REFERENCES artists (artist_id)
);
INSERT INTO seguindo_artistas (user_id, artist_id)
VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 1),
(2, 3),
(3, 2),
(4, 4),
(5, 5),
(5, 6),
(6, 6),
(6, 1),
(7, 6),
(9, 3),
(10, 2);

  CREATE TABLE SpotifyClone.albums(
  album_id INT PRIMARY KEY AUTO_INCREMENT,
	album_name CHAR(255),
  debut_year YEAR,
	artist_id INT,
	FOREIGN KEY (artist_id) REFERENCES artists (artist_id)
);
INSERT INTO albums (album_name, debut_year, artist_id)
  VALUES
  ('Renaissance', 2022, 1),
  ('Jazz', 1978, 2),
  ('Hot Space', 1982, 2),
  ('Falso Brilhante', 1998, 3),
  ('Vento de Maio', 2001, 3),
  ('QVVJFA?', 2003, 4),
  ('Somewhere Far Beyond', 2007, 5),
  ('I Put A Spell On You', 2012, 6);

  CREATE TABLE SpotifyClone.musics(
	music_id INT PRIMARY KEY AUTO_INCREMENT,
  music_name TEXT(200) NOT NULL,
  duration INT,
  artist_id INT,
	album_id INT,
  FOREIGN KEY (artist_id) REFERENCES artists (artist_id),
		FOREIGN KEY (album_id) REFERENCES albums (album_id)
  );

  INSERT INTO musics (music_name, duration, artist_id, album_id)
  VALUES
	  ('BREAK MY SOUL', 279, 1, 1),
('VIRGO’S GROOVE', 369, 1, 1),
('ALIEN SUPERSTAR', 116, 1, 1),
('Don’t Stop Me Now', 203, 2, 2),
('Under Pressure', 152, 2, 2),
('Como Nossos Pais', 105, 3, 3),
('O Medo de Amar é o Medo de Ser Livre', 207, 3, 3),
('Samba em Paris', 267, 4, 4),
('The Bard’s Song', 244, 5, 5),
('Feeling Good', 100, 6, 6);

  CREATE TABLE SpotifyClone.history(
	user_id INT,
	music_id INT,
	reproduction_date DATETIME,
	CONSTRAINT PRIMARY KEY(user_id, music_id),
		FOREIGN KEY (user_id) REFERENCES users (user_id),
      FOREIGN KEY (music_id) REFERENCES musics (music_id)
  );
  INSERT INTO history (user_id, music_id, reproductio_date)
  VALUES
   (1, 8, '2022-02-28 10:45:55'),
    (1, 2,  '2020-05-02 05:30:35'),
    (1, 10, '2020-03-06 11:22:33'),
    (2, 10, '2022-08-05 08:05:17'),
    (2, 7, '2020-01-02 07:40:33'),
    (3, 10, '2020-11-13 16:55:13'),
    (3, 2, '2020-12-05 18:38:30'),
    (4, 8, '2021-08-15 17:10:10'),
    (5, 8, '2022-01-09 01:44:33'),
    (5, 5, '2020-08-06 15:23:43'),
    (6, 7, '2017-01-24 00:31:17'),
    (6, 1, '2017-10-12 12:35:20'),
    (7, 4, '2011-12-15 22:30:49'),
    (8, 4, '2012-03-17 14:56:41'),
    (9, 9, '2022-02-24 21:14:22'),
    (10, 3, '2015-12-13 08:30:22');