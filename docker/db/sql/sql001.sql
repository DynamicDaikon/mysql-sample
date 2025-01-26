DROP TABLE IF EXISTS `countries`;

CREATE TABLE IF NOT EXISTS `countries` (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50),
    ranking INT,
    group_name VARCHAR(1)
);

DROP TABLE IF EXITSTS `players`;

CREATE TABLE IF NOT EXISTS `players` (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    country_id INT,
    uniform_num INT,
    position VARCHAR(2),
    name VARCHAR(50),
    club VARCHAR(50),
    birth DATE,
    height INT,
    weight INT FOREIGN KEY (country_id) REFERENCES countries (id) ON DELETE CASCADE
);

DROP TABLE IF EXISTS `pairings`;

CREATE TABLE IF NOT EXISTS `pairings` (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    kickoff datetime,
    my_country_id INT,
    enemy_country_id INT FOREIGN KEY (my_country_id, enemy_country_id) REFERENCES countries (id, id) ON DELETE CASCADE,
);

DROP TABLE IF EXISTS `goals`;

CREATE TABLE IF NOT EXISTS `goals` (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    pariring_id INT,
    player_id INT,
    goal_time VARCHAR(10) FOREIGN KEY (pairing_id) REFERENCES pairings (id) ON DELETE CASCADE,
    FOREIGN KEY (player_id) REFERENCES players (id) ON DELETE CASCADE
);
