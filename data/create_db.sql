BEGIN;
-- purge des tables
DROP TABLE IF EXISTS category, coffee;
-- Une table pour les catégoris
CREATE TABLE category (
    id INTEGER PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY,
    name VARCHAR(25) UNIQUE NOT NULL,
    created_at TIMESTAMPTZ  NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMPTZ
);
-- Une table pour les cafés
CREATE TABLE coffee (
    id INTEGER PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY,
    name TEXT UNIQUE NOT NULL,
    description TEXT,
    reference CHAR(9) UNIQUE NOT NULL,
    price_kg REAL NOT NULL,
    origin VARCHAR(255) NOT NULL,
    available BOOLEAN NOT NULL DEFAULT false,
    category_id INTEGER REFERENCES category(id)
);

-- Insertion d'un jeu de données (seed) dans category
INSERT INTO 
    category (name)
VALUES 
    ('Corsé'),
    ('Acide'),
    ('Fruité'),
    ('Doux'),
    ('Épicé'),
    ('Chocolaté')
;

INSERT INTO 
    coffee (name, reference, origin, price_kg, available, category_id, description)
VALUES
    ('Espresso', '100955890', 'Italie', 20.99, true, 1, 'Café fort et concentré préparé en faisant passer de l''eau chaude à travers du café finement moulu.'),
    ('Columbian', '100955894', 'Colombie', 18.75, true, 2, 'Café moyennement corsé avec une acidité vive et une saveur riche.'),
    ('Ethiopian Yirgacheffe', '105589090', 'Éthiopie', 22.50, true, 3, 'Réputé pour son arôme floral, son acidité vive et ses notes de saveur citronnée.'),
    ('Brazilian Santos', '134009550', 'Brésil', 17.80, true, 4, 'Café doux et lisse avec un profil de saveur de noisette.'),
    ('Guatemalan Antigua', '256505890', 'Guatemala', 21.25, true, 6, 'Café corsé avec des nuances chocolatées et une pointe d''épice.'),
    ('Kenyan AA', '295432730', 'Kenya', 23.70, true, 2, 'Café complexe connu pour son acidité rappelant le vin et ses saveurs fruitées.'),
    ('Sumatra Mandheling', '302932754', 'Indonésie', 19.95, true, 1, 'Café profond et terreux avec un corps lourd et une faible acidité.'),
    ('Costa Rican Tarrazu', '327302954', 'Costa Rica', 24.50, true, 2, 'Café vif et net avec une finition propre et une acidité vive.'),
    ('Vietnamese Robusta', '549549090', 'Vietnam', 16.75, true, 5, 'Café audacieux et fort avec une saveur robuste distinctive.'),
    ('Tanzanian Peaberry', '582954954', 'Tanzanie', 26.80, true, 3, 'Acidité vive avec un profil de saveur rappelant le vin et un corps moyen.'),
    ('Jamaican Blue Mountain', '589100954', 'Jamaïque', 39.25, true, 4, 'Reconnu pour sa saveur douce, son acidité vive et son absence d''amertume.'),
    ('Rwandan Bourbon', '650753915', 'Rwanda', 21.90, true, 3, 'Café avec des notes florales prononcées, une acidité vive et un corps moyen.'),
    ('Panamanian Geisha', '795501340', 'Panama', 42.00, true, 3, 'Café rare aux arômes floraux complexes, une acidité brillante et un profil de saveur distinctif.'),
    ('Peruvian Arabica', '954589100', 'Pérou', 19.40, false, 6, 'Café équilibré avec des notes de chocolat, une acidité modérée et un corps velouté.'),
    ('Hawaiian Kona', '958090105', 'Hawaï', 55.75, false, 4, 'Café rare au goût riche, une acidité douce et des nuances subtiles.'),
    ('Nicaraguan Maragogipe', '691550753', 'Nicaragua', 28.60, false, 3, 'Café avec des notes de fruits, une acidité vive et un corps plein.');
;

COMMIT;