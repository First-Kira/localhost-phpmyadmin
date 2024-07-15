CREATE TABLE deck (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    imageUrl TEXT NOT NULL,
    count INT NOT NULL
);

INSERT INTO deck (name, imageUrl, count) VALUES
('Destiny HERO - Plasma', 'https://static.wikia.nocookie.net/yugioh/images/0/00/DestinyHEROPlasma-SGX1-EN-C-1E.png/revision/latest?cb=20220410014702', 3),
('Destiny HERO - Dogma', 'https://ms.yugipedia.com//9/90/DestinyHERODogma-SGX1-EN-C-1E.png?download', 3),
('Dark Drill', 'https://ms.yugipedia.com//e/ec/DestinyHERODrawhand-MP20-EN-C-1E.png', 3),
('Destiny HERO - Drawhand', 'https://ms.yugipedia.com//e/ec/DestinyHERODrawhand-MP20-EN-C-1E.png', 3),
('Break the Destiny', 'https://ms.yugipedia.com//thumb/c/cd/BreaktheDestiny-BODE-EN-C-1E.png/450px-BreaktheDestiny-BODE-EN-C-1E.png', 2),
('D - Tactics', 'https://static.wikia.nocookie.net/yugioh/images/d/d7/DTactics-DANE-EN-R-1E.png/revision/latest?cb=20190503164804', 2),
('Polymerization', 'https://static.wikia.nocookie.net/yugioh/images/7/73/Polymerization-SBC1-EN-C-1E.png/revision/latest?cb=20230918234835', 3),
('Destiny HERO - Dasher', 'https://static.wikia.nocookie.net/yugioh/images/5/53/DestinyHERODasher-SGX1-EN-C-1E.png/revision/latest?cb=20220410014951', 3),
('Destiny HERO - Diamond Dude', 'https://static.wikia.nocookie.net/yugioh/images/b/bf/DestinyHERODiamondDude-SGX1-EN-C-1E.png/revision/latest?cb=20220410014839', 3),
('Destiny Fusion', 'https://ms.yugipedia.com//d/dc/FusionDestiny-BLC1-EN-C-1E.png', 2),
('Future Fusion', 'https://static.wikia.nocookie.net/yugioh/images/b/b7/FutureFusion-SGX1-EN-C-1E.png/revision/latest?cb=20220419174251', 2),
('Necro Fusion', 'https://static.wikia.nocookie.net/yugioh/images/e/eb/NecroFusion-SDAZ-EN-C-1E.png/revision/latest/scale-to-width-down/300?cb=20220506020833', 2),
('Raigeki', 'https://ms.yugipedia.com//1/1d/Raigeki-LOB-EN-SR-UE-25thAnniversaryEdition.png', 2),
('Lightning Storm', 'https://static.wikia.nocookie.net/yugioh/images/6/61/LightningStorm-MAMA-EN-UR-1E.png/revision/latest?cb=20221203232338', 1),
('Monster Reborn', 'https://static.wikia.nocookie.net/yugioh/images/4/40/MonsterReborn-EGO1-EN-C-1E.png/revision/latest?cb=20210920164521', 1),
('Destiny HERO - Disk Commander', 'https://static.wikia.nocookie.net/yugioh/images/e/e0/DestinyHERODiskCommander-LEHD-EN-UR-1E.png/revision/latest?cb=20181012170703', 1),
('Destiny Draw', 'https://ms.yugipedia.com//2/29/DestinyDraw-LEHD-EN-C-1E.png', 3),
('Destiny HERO - Malicious', 'https://ms.yugipedia.com//thumb/b/b3/DestinyHEROMalicious-BLC1-EN-UR-1E.png/450px-DestinyHEROMalicious-BLC1-EN-UR-1E.png', 2),
('Destiny HERO - Dreamer', 'https://static.wikia.nocookie.net/yugioh/images/e/ef/DestinyHERODreamer-LEHD-EN-C-1E.png/revision/latest?cb=20181012170856', 2),
('Destiny HERO - Dark Angel', 'https://static.wikia.nocookie.net/yugioh/images/e/ea/DestinyHERODarkAngel-SGX1-EN-C-1E.png/revision/latest?cb=20220410015314', 2);
