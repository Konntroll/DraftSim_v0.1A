CREATE DATABASE magic;
USE magic;
CREATE TABLE btz (
	number INT(3) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	name VARCHAR(64),
	rarity CHAR(1),
	color CHAR(1),
	manacost VARCHAR(5),
	concost TINYINT(2) UNSIGNED,
	archetype CHAR(1),
	pwr TINYINT(2) UNSIGNED,
	tgh TINYINT(2) UNSIGNED,
	LSV TINYINT(2) UNSIGNED) ENGINE MyISAM;
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, pwr, tgh, LSV) VALUES ('Bane of Bala Ged', 'U', 'N', '7', '7', 'C', '7', '5', '25');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, pwr, tgh, LSV) VALUES ('Blight Herder', 'R', 'N', '5', '5', 'C', '4', '5', '30');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, pwr, tgh, LSV) VALUES ('Breaker of Armies', 'U', 'N', '8', '8', 'C', '10', '8', '20');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, pwr, tgh, LSV) VALUES ('Conduit of Ruin', 'R', 'N', '6', '6', 'C', '5', '5', '35');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, pwr, tgh, LSV) VALUES ('Deathless Behemoth', 'U', 'N', '6', '6', 'C', '6', '6', '30');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, pwr, tgh, LSV) VALUES ('Desolation Twin', 'R', 'N', '10', '10', 'C', '10', '10', '10');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, pwr, tgh, LSV) VALUES ('Eldrazi Devastator', 'C', 'N', '8', '8', 'C', '8', '9', '15');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, pwr, tgh, LSV) VALUES ('Endless One', 'R', 'N', 'X', '0', 'C', '0', '0', '40');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, LSV) VALUES ('Gruesome Slaughter', 'R', 'N', '6', '6', 'S', '20');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, pwr, tgh, LSV) VALUES ('Kozilek\'s Channeler', 'C', 'N', '5', '5', 'C', '4', '4', '30');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, pwr, tgh, LSV) VALUES ('Oblivion Sower', 'M', 'N', '6', '6', 'C', '5', '8', '35');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, pwr, tgh, LSV) VALUES ('Ruin Processor', 'C', 'N', '7', '7', 'C', '7', '8', '15');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, LSV) VALUES ('Scour from Existence', 'C', 'N', '7', '7', 'I', '5');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, LSV) VALUES ('Titan\'s Presence', 'U', 'N', '3', '3', 'I', '15');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, pwr, tgh, LSV) VALUES ('Ulamog, the Ceaseless Hunger', 'M', 'N', '10', '10', 'C', '10', '10', '20');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, pwr, tgh, LSV) VALUES ('Ulamog\'s Despoiler', 'U', 'N', '6', '6', 'C', '5', '5', '20');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, pwr, tgh, LSV) VALUES ('Void Winnower', 'M', 'N', '9', '9', 'C', '11', '9', '15');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, pwr, tgh, LSV) VALUES ('Angel of Renewal', 'U', 'W', '5W', '6', 'C', '4', '4', '35');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, LSV) VALUES ('Angelic Gift', 'C', 'W', '1W', '2', 'E', '20');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, pwr, tgh, LSV) VALUES ('Cliffside Lookout', 'C', 'W', 'W', '1', 'C', '1', '1', '25');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, pwr, tgh, LSV) VALUES ('Courier Griffin', 'C', 'W', '3W', '4', 'C', '2', '3', '30');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, pwr, tgh, LSV) VALUES ('Emeria Shepherd', 'R', 'W', '5WW', '7', 'C', '4', '4', '35');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, LSV) VALUES ('Encircling Fissure', 'U', 'W', '2W', '3', 'I', '30');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, pwr, tgh, LSV) VALUES ('Expedition Envoy', 'U', 'W', 'W', '1', 'C', '2', '1', '25');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, pwr, tgh, LSV) VALUES ('Felidar Cub', 'C', 'W', '1W', '2', 'C', '2', '2', '25');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, pwr, tgh, LSV) VALUES ('Felidar Sovereign', 'R', 'W', '4WW', '6', 'C', '4', '6', '35');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, pwr, tgh, LSV) VALUES ('Fortified Rampart', 'C', 'W', '1W', '2', 'C', '0', '6', '20');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, pwr, tgh, LSV) VALUES ('Ghostly Sentinel', 'C', 'W', '4W', '5', 'C', '3', '3', '30');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, LSV) VALUES ('Gideon, Ally of Zendikar', 'M', 'W', '4', '2WW', 'P', '50');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, LSV) VALUES ('Gideon\'s Reproach', 'C', 'W', '1W', '2', 'I', '30');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, pwr, tgh, LSV) VALUES ('Hero of Goma Fada', 'R', 'W', '4W', '5', 'C', '4', '3', '35');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, LSV) VALUES ('Inspired Charge', 'C', 'W', '2WW', '4', 'I', '15');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, pwr, tgh, LSV) VALUES ('Kitesail Scout', 'C', 'W', 'W', '1', 'C', '1', '1', '0');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, pwr, tgh, LSV) VALUES ('Kor Bladewhirl', 'U', 'W', '1W', '2', 'C', '2', '2', '30');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, pwr, tgh, LSV) VALUES ('Kor Castigator', 'C', 'W', '1W', '2', 'C', '3', '1', '30');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, pwr, tgh, LSV) VALUES ('Kor Entanglers', 'U', 'W', '4W', '5', 'C', '3', '4', '20');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, pwr, tgh, LSV) VALUES ('Lantern Scout', 'R', 'W', '2W', '3', 'C', '3', '2', '35');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, LSV) VALUES ('Lithomancer\s Focus', 'C', 'W', 'W', '1', 'I', '30');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, pwr, tgh, LSV) VALUES ('Makindi Patrol', 'C', 'W', '2W', '3', 'C', '2', '3', '15');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, pwr, tgh, LSV) VALUES ('Ondu Greathorn', 'C', 'W', '3W', '4', 'C', '2', '3', '30');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, LSV) VALUES ('Ondu Rising', 'U', 'W', '1W', '2', 'S', '35');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, LSV) VALUES ('Planar Outburst', 'R', 'W', '3WW', '5', 'S', '45');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, LSV) VALUES ('Quarantine Field', 'M', 'W', 'XXWW', '2', 'E', '50');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, LSV) VALUES ('Retreat to Emeria', 'U', 'W', '3W', '4', 'E', '40');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, LSV) VALUES ('Roil\'s Retribution', 'U', 'W', '3WW', '5', 'I', '15');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, pwr, tgh, LSV) VALUES ('Serene Steward', 'U', 'W', '1W', '2', 'C', '2', '2', '30');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, pwr, tgh, LSV) VALUES ('Shadow Glider', 'C', 'W', '2W', '3', 'C', '2', '2', '25');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, LSV) VALUES ('Sheer Drop', 'C', 'W', '2W', '3', 'I', '25');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, LSV) VALUES ('Smite the Monstrous', 'C', 'W', '3W', '4', 'I', '30');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, LSV) VALUES ('Stasis Snare', 'U', 'W', '1WW', '3', 'E', '40');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, pwr, tgh, LSV) VALUES ('Stone Haven Medic', 'C', 'W', '1W', '2', 'C', '1', '3', '20');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, LSV) VALUES ('Tandem Tactics', 'C', 'W', '1W', '2', 'I', '30');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, LSV) VALUES ('Unified Front', 'U', 'W', '3W', '4', 'S', '20');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, LSV) VALUES ('Adverse Considtions', 'U', 'U', '3U', '4', 'I', '20');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, pwr, tgh, LSV) VALUES ('Benthic Infiltrator', 'C', 'U', '2U', '3', 'C', '1', '4', '35');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, pwr, tgh, LSV) VALUES ('Cryptic Cruiser', 'U', 'U', '3U', '4', 'C', '3', '3', '25');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, pwr, tgh, LSV) VALUES ('Drowner of Hope', 'R', 'U', '5U', '6', 'C', '5', '5', '40');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, pwr, tgh, LSV) VALUES ('Eldrazi Skyspawner', 'C', 'U', '2U', '3', 'C', '2', '1', '35');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, LSV) VALUES ('Horribly Awry', 'U', 'U', '1U', '2', 'I', '25');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, pwr, tgh, LSV) VALUES ('Incubator Drone', 'C', 'U', '3U', '4', 'C', '2', '3', '30');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, pwr, tgh, LSV) VALUES ('Mist Intruder', 'C', 'U', '1U', '2', 'C', '1', '2', '25');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, pwr, tgh, LSV) VALUES ('Murk Strider', 'C', 'U', '3U', '4', 'C', '3', '2', '15');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, pwr, tgh, LSV) VALUES ('Oracle of Dust', 'C', 'U', '4U', '5', 'C', '3', '5', '25');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, pwr, tgh, LSV) VALUES ('Ruination Guide', 'U', 'U', '2U', '3', 'C', '3', '2', '30');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, pwr, tgh, LSV) VALUES ('Salvage Drone', 'C', 'U', 'U', '1', 'C', '1', '1', '15');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, LSV) VALUES ('Spell Shrivel', 'C', 'U', '2U', '3', 'I', '15');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, pwr, tgh, LSV) VALUES ('Tide Drifter', 'U', 'U', '1U', '2', 'C', '0', '5', '30');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, pwr, tgh, LSV) VALUES ('Ulamog\'s Reclaimer', 'U', 'U', '4U', '5', 'C', '2', '5', '20');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, LSV) VALUES ('Anticipate', 'C', 'U', '1U', '2', 'I', '25');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, LSV) VALUES ('Brilliant Spectrum', 'C', 'U', '3U', '4', 'S', '10');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, pwr, tgh, LSV) VALUES ('Cloud Manta', 'C', 'U', '3U', '4', 'C', '3', '2', '25');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, LSV) VALUES ('Clutch of Currents', 'C', 'U', 'U', '1', 'S', '35');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, LSV) VALUES ('Coastal Discovery', 'U', 'U', '3U', '4', 'S', '30');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, pwr, tgh, LSV) VALUES ('Coralhelm Guide', 'C', 'U', '1U', '2', 'C', '2', '1', '15');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, LSV) VALUES ('Dampening Pulse', 'U', 'U', '3U', '4', 'E', '35');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, LSV) VALUES ('Dispel', 'C', 'U', 'U', '1', 'I', '5');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, LSV) VALUES ('Exert Influence', 'R', 'U', '4U', '5', 'S', '35');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, pwr, tgh, LSV) VALUES ('Guardian of Tazeem', 'R', 'U', '3UU', '5', 'C', '4', '5', '45');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, pwr, tgh, LSV) VALUES ('Halimar Tidecaller', 'U', 'U', '2U', '3', 'C', '2', '3', '35');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, LSV) VALUES ('Part the Waterveil', 'M', 'U', '4UU', '6', 'S', '20');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, LSV) VALUES ('Prism Array', 'R', 'U', '4U', '5', 'E', '5');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, LSV) VALUES ('Retreat to Coralhelm', 'U', 'U', '2U', '3', 'E', '10');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, LSV) VALUES ('Roilmage\'s Trick', 'C', 'U', '3U', '4', 'I', '20');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, LSV) VALUES ('Rush of Ice', 'C', 'U', 'U', '1', 'S', '15');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, LSV) VALUES ('Scatter to the Winds', 'R', 'U', '1UU', '3', 'I', '30');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, LSV) VALUES ('Tightening Coils', 'C', 'U', '1U', '2', 'E', '25');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, LSV) VALUES ('Ugin\'s Insight', 'R', 'U', '3UU', '5', 'S', '35');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, pwr, tgh, LSV) VALUES ('Wave-Wing Elemental', 'C', 'U', '5U', '6', 'C', '3', '4', '20');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, pwr, tgh, LSV) VALUES ('Windrider Patrol', 'U', 'U', '3UU', '5', 'C', '4', '3', '35');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, LSV) VALUES ('Complete Disregard', 'C', 'B', '2B', '3', 'I', '30');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, pwr, tgh, LSV) VALUES ('Culling Drone', 'C', 'B', '1B', '2', 'C', '2', '2', '20');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, pwr, tgh, LSV) VALUES ('Dominator Drone', 'C', 'B', '2B', '3', 'C', '3', '2', '15');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, LSV) VALUES ('Grave Birthing', 'C', 'B', '2B', '3', 'I', '25');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, LSV) VALUES ('Grip of Desolation', 'U', 'B', '4BB', '6', 'I', '45');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, pwr, tgh, LSV) VALUES ('Mind Raker', 'C', 'B', '3B', '4', 'C', '3', '3', '15');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, pwr, tgh, LSV) VALUES ('Silent Skimmer', 'C', 'B', '3B', '4', 'C', '0', '4', '20');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, pwr, tgh, LSV) VALUES ('Skitterskin', 'U', 'B', '3B', '4', 'C', '4', '3', '20');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, pwr, tgh, LSV) VALUES ('Sludge Crawler', 'C', 'B', 'B', '1', 'C', '1', '1', '30');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, pwr, tgh, LSV) VALUES ('Smothering Abomination', 'R', 'B', '2BB', '4', 'C', '4', '3', '40');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, LSV) VALUES ('Swarm Surge', 'C', 'B', '2B', '3', 'S', '10');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, LSV) VALUES ('Transgress the Mind', 'U', 'B', '1B', '2', 'S', '30');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, pwr, tgh, LSV) VALUES ('Wasteland Strangler', 'R', 'B', '2B', '3', 'C', '3', '2', '35');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, LSV) VALUES ('Altar\'s Reap', 'C', 'B', '1B', '2', 'I', '15');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, pwr, tgh, LSV) VALUES ('Bloodbond Vampire', 'U', 'B', '2BB', '4', 'C', '3', '3', '30');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, LSV) VALUES ('Bone Splinters', 'C', 'B', 'B', '1', 'S', '15');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, pwr, tgh, LSV) VALUES ('Carrier Thrall', 'U', 'B', '1B', '2', 'C', '2', '1', '20');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, pwr, tgh, LSV) VALUES ('Defiant Bloodlord', 'R', 'B', '5BB', '7', 'C', '4', '5', '15');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, LSV) VALUES ('Demon\'s Grasp', 'C', 'B', '4B', '5', 'S', '15');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, pwr, tgh, LSV) VALUES ('Drana, Liberator of Malakir', 'M', 'B', '1BB', '3', 'C', '2', '3', '45');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, LSV) VALUES ('Dutiful Return', 'C', 'B', '3B', '4', 'S', '10');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, pwr, tgh, LSV) VALUES ('Geyeserfield Stalker', 'C', 'B', '4B', '5', 'C', '3', '2', '15');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, pwr, tgh, LSV) VALUES ('Guul Draz Overseer', 'R', 'B', '4BB', '6', 'C', '3', '4', '25');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, pwr, tgh, LSV) VALUES ('Hagra Sharpshooter', 'U', 'B', '2B', '3', 'C', '2', '2', '20');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, pwr, tgh, LSV) VALUES ('Kalastria Healer', 'C', 'B', '1B', '2', 'C', '1', '2', '30');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, pwr, tgh, LSV) VALUES ('Kalastria Nightwatch', 'C', 'B', '4B', '5', 'C', '4', '5', '25');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, pwr, tgh, LSV) VALUES ('Malakir Familiar', 'U', 'B', '2B', '3', 'C', '2', '1', '30');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, LSV) VALUES ('Mire\'s Malice', 'C', 'B', '3B', '4', 'S', '25');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, pwr, tgh, LSV) VALUES ('Nirkana Assassin', 'C', 'B', '2B', '3', 'C', '2', '3', '10');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, LSV) VALUES ('Ob Nixilis Reignited', 'M', 'B', '3BB', '5', 'P', '40');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, LSV) VALUES ('Painful Truths', 'R', 'B', '2B', '3', 'S', '30');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, LSV) VALUES ('Retreat to Hagra', 'U', 'B', '2B', '3', 'E', '20');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, LSV) VALUES ('Rising Miasma', 'U', 'B', '3B', '4', 'S', '20');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, LSV) VALUES ('Ruinous Path', 'R', 'B', '1BB', '3', 'S', '45');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, LSV) VALUES ('Vampiric Rites', 'U', 'B', 'B', '1', 'E', '15');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, pwr, tgh, LSV) VALUES ('Voracious Null', 'C', 'B', '2B', '3', 'C', '2', '2', '15');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, pwr, tgh, LSV) VALUES ('Zulaport Cutthroat', 'U', 'B', '1B', '2', 'C', '1', '1', '30');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, pwr, tgh, LSV) VALUES ('Barrage Tyrant', 'R', 'R', '4R', '5', 'C', '5', '3', '35');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, LSV) VALUES ('Crumble to Dust', 'U', 'R', '3R', '4', 'S', '0');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, pwr, tgh, LSV) VALUES ('Kozilek\'s Sentinel', 'C', 'R', '1R', '2', 'C', '1', '4', '25');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, LSV) VALUES ('Molten Nursery', 'U', 'R', '2R', '3', 'E', '15');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, pwr, tgh, LSV) VALUES ('Nettle Drone', 'C', 'R', '2R', '3', 'C', '3', '1', '35');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, LSV) VALUES ('Processor Assault', 'U', 'R', '1R', '2', 'S', '15');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, LSV) VALUES ('Serpentine Spike', 'R', 'R', '5RR', '7', 'S', '40');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, LSV) VALUES ('Touch of the Void', 'C', 'R', '2R', '3', 'S', '30');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, LSV) VALUES ('Turn Against', 'U', 'R', '4R', '5', 'I', '20');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, pwr, tgh, LSV) VALUES ('Vestige of Emrakul', 'C', 'R', '3R', '4', 'C', '3', '4', '30');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, pwr, tgh, LSV) VALUES ('Vile Aggregate', 'U', 'R', '2R', '3', 'C', '0', '5', '40');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, pwr, tgh, LSV) VALUES ('Akoum Firebird', 'M', 'R', '2RR', '4', 'C', '3', '3', '40');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, pwr, tgh, LSV) VALUES ('Akoum Hellkite', 'R', 'R', '4RR', '6', 'C', '4', '4', '35');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, pwr, tgh, LSV) VALUES ('Akoum Stonewaker', 'U', 'R', '1R', '2', 'C', '2', '1', '25');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, pwr, tgh, LSV) VALUES ('Belligerent Whiptail', 'C', 'R', '3R', '4', 'C', '4', '2', '15');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, LSV) VALUES ('Boiling Earth', 'C', 'R', '1R', '2', 'S', '25');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, pwr, tgh, LSV) VALUES ('Chasm Guide', 'U', 'R', '3R', '4', 'C', '3', '2', '20');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, pwr, tgh, LSV) VALUES ('Dragonmaster Outcast', 'M', 'R', 'R', '1', 'C', '1', '1', '40');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, pwr, tgh, LSV) VALUES ('Firemantle Mage', 'U', 'R', '2R', '3', 'C', '2', '2', '30');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, LSV) VALUES ('Goblin Warpaint', 'C', 'R', '1R', '2', 'E', '5');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, pwr, tgh, LSV) VALUES ('Lavastep Raider', 'C', 'R', 'R', '1', 'C', '1', '2', '5');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, pwr, tgh, LSV) VALUES ('Makindi Sliderunner', 'C', 'R', '1R', '2', 'C', '2', '1', '25');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, pwr, tgh, LSV) VALUES ('Ondu Champion', 'C', 'R', '2RR', '4', 'C', '4', '3', '30');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, LSV) VALUES ('Outnumber', 'C', 'R', 'R', '1', 'I', '25');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, LSV) VALUES ('Radiant Flames', 'R', 'R', '2R', '3', 'S', '35');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, pwr, tgh, LSV) VALUES ('Reckless Cohort', 'C', 'R', '1R', '2', 'C', '2', '2', '20');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, LSV) VALUES ('Retreat to Valakut', 'U', 'R', '2R', '3', 'E', '20');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, LSV) VALUES ('Rolling Thunder', 'U', 'R', 'XRR', '2', 'S', '40');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, pwr, tgh, LSV) VALUES ('Shutterskull Recruit', 'C', 'R', '3RR', '5', 'C', '4', '4', '25');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, LSV) VALUES ('Stonefury', 'C', 'R', '3RR', '5', 'I', '30');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, LSV) VALUES ('Sure Strike', 'C', 'R', '1R', '2', 'I', '20');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, pwr, tgh, LSV) VALUES ('Tunneling Geopede', 'U', 'R', '2R', '3', 'C', '3', '2', '25');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, pwr, tgh, LSV) VALUES ('Valakut Invoker', 'C', 'R', '2R', '3', 'C', '2', '3', '20');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, pwr, tgh, LSV) VALUES ('Valakut Predator', 'C', 'R', '2R', '3', 'C', '2', '2', '30');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, LSV) VALUES ('Volcanic Upheaval', 'C', 'R', '3R', '4', 'I', '5');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, pwr, tgh, LSV) VALUES ('Zada, Hedron Grinder', 'R', 'R', '3R', '4', 'C', '3', '3', '20');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, pwr, tgh, LSV) VALUES ('Blisterpod', 'C', 'G', 'G', '1', 'C', '1', '1', '20');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, pwr, tgh, LSV) VALUES ('Brood Monitor', 'U', 'G', '4GG', '6', 'C', '3', '3', '35');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, LSV) VALUES ('Call the Scions', 'C', 'G', '2G', '3', 'S', '20');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, pwr, tgh, LSV) VALUES ('Eyeless Watcher', 'C', 'G', '3G', '4', 'C', '1', '1', '30');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, LSV) VALUES ('From Beyond', 'R', 'G', '3G', '4', 'E', '35');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, LSV) VALUES ('Unnatural Aggression', 'C', 'G', '2G', '3', 'I', '30');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, pwr, tgh, LSV) VALUES ('Void Attendant', 'U', 'G', '2G', '3', 'C', '2', '3', '20');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, pwr, tgh, LSV) VALUES ('Beastcaller Savant', 'R', 'G', '1G', '2', 'C', '1', '1', '30');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, pwr, tgh, LSV) VALUES ('Broodhunter Wurm', 'C', 'G', '3G', '4', 'C', '4', '3', '30');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, LSV) VALUES ('Earthen Arms', 'C', 'G', '1G', '2', 'S', '10');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, pwr, tgh, LSV) VALUES ('Giant Mantis', 'C', 'G', '3G', '4', 'C', '2', '4', '30');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, pwr, tgh, LSV) VALUES ('Greenwarden of Murasa', 'M', 'G', '4GG', '6', 'C', '5', '4', '40');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, LSV) VALUES ('Infuse with the Elements', 'U', 'G', '3G', '4', 'I', '20');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, pwr, tgh, LSV) VALUES ('Jaddi Offshoot', 'U', 'G', 'G', '1', 'C', '0', '3', '5');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, pwr, tgh, LSV) VALUES ('Lifespring Druid', 'C', 'G', '2G', '3', 'C', '2', '1', '30');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, pwr, tgh, LSV) VALUES ('Murasa Ranger', 'U', 'G', '3G', '4', 'C', '3', '3', '30');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, LSV) VALUES ('Natural Connection', 'C', 'G', '2G', '3', 'I', '10');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, LSV) VALUES ('Nissa\'s Renewal', 'R', 'G', '5G', '6', 'S', '15');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, pwr, tgh, LSV) VALUES ('Oran-Rief Hydra', 'R', 'G', '4GG', '6', 'C', '5', '5', '35');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, pwr, tgh, LSV) VALUES ('Oran-Rief Invoker', 'C', 'G', '1G', '2', 'C', '2', '2', '25');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, pwr, tgh, LSV) VALUES ('Plated Crusher', 'U', 'G', '4GGG', '7', 'C', '7', '6', '25');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, LSV) VALUES ('Plummet', 'C', 'G', '1G', '2', 'I', '5');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, LSV) VALUES ('Reclaiming Vines', 'C', 'G', '2GG', '4', 'S', '10');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, LSV) VALUES ('Retreat to Kazandu', 'U', 'G', '2G', '3', 'E', '10');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, pwr, tgh, LSV) VALUES ('Rot Shambler', 'U', 'G', '1G', '2', 'C', '1', '1', '25');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, pwr, tgh, LSV) VALUES ('Scythe Leopard', 'U', 'G', 'G', '1', 'C', '1', '1', '20');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, LSV) VALUES ('Seek the Wilds', 'C', 'G', '1G', '2', 'S', '15');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, pwr, tgh, LSV) VALUES ('Snapping Gnarlid', 'C', 'G', '1G', '2', 'C', '2', '2', '30');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, LSV) VALUES ('Swell of Growth', 'C', 'G', '1G', '2', 'I', '15');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, LSV) VALUES ('Sylvan Scrying', 'U', 'G', '1G', '2', 'S', '5');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, pwr, tgh, LSV) VALUES ('Tajuru Beastmaster', 'C', 'G', '5G', '6', 'C', '5', '5', '15');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, pwr, tgh, LSV) VALUES ('Tajuru Stalwart', 'C', 'G', '2G', '3', 'C', '0', '1', '20');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, pwr, tgh, LSV) VALUES ('Tajuru Warcaller', 'U', 'G', '3GG', '5', 'C', '2', '1', '35');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, pwr, tgh, LSV) VALUES ('Territorial Baloth', 'C', 'G', '4G', '5', 'C', '4', '4', '30');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, pwr, tgh, LSV) VALUES ('Undergrowth Champion', 'M', 'G', '1GG', '3', 'C', '2', '2', '35');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, pwr, tgh, LSV) VALUES ('Woodland Wanderer', 'R', 'G', '3G', '4', 'C', '2', '2', '40');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, pwr, tgh, LSV) VALUES ('Brood Butcher', 'R', 'M', '3BG', '5', 'C', '3', '3', '40');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, LSV) VALUES ('Brutal Expulsion', 'R', 'M', '2UR', '4', 'I', '35');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, pwr, tgh, LSV) VALUES ('Catacomb Sifter', 'U', 'M', '1BG', '3', 'C', '2', '3', '35');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, pwr, tgh, LSV) VALUES ('Dust Stalker', 'R', 'M', '2BR', '4', 'C', '5', '3', '30');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, pwr, tgh, LSV) VALUES ('Fathom Feeder', 'R', 'M', 'UB', '2', 'C', '1', '1', '35');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, pwr, tgh, LSV) VALUES ('Forerunner of Slaughter', 'U', 'M', 'BR', '2', 'C', '3', '2', '30');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, pwr, tgh, LSV) VALUES ('Herald of Kozilek', 'U', 'M', '1UR', '3', 'C', '2', '4', '35');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, pwr, tgh, LSV) VALUES ('Sire of Stagnation', 'M', 'M', '4UB', '6', 'C', '5', '7', '35');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, pwr, tgh, LSV) VALUES ('Ulamog\'s Nullifier', 'U', 'M', '2UB', '4', 'C', '2', '3', '35');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, pwr, tgh, LSV) VALUES ('Angelic Captain', 'R', 'M', '3RW', '5', 'C', '4', '3', '35');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, LSV) VALUES ('Bring to Light', 'R', 'M', '3GU', '5', 'S', '10');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, pwr, tgh, LSV) VALUES ('Drana\'s Emissary', 'U', 'M', '1WB', '3', 'C', '2', '2', '35');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, pwr, tgh, LSV) VALUES ('Grove Rumbler', 'U', 'M', '2RG', '3', 'C', '3', '3', '35');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, pwr, tgh, LSV) VALUES ('Grovetender Druids', 'U', 'M', '2GW', '4', 'C', '3', '3', '30');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, LSV) VALUES ('Kiora, Maste of the Deapths', 'M', 'M', '2GU', '4', 'P', '40');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, LSV) VALUES ('March from the Tomb', 'R', 'M', '3WB', '5', 'S', '30');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, pwr, tgh, LSV) VALUES ('Munda, Ambush Leader', 'R', 'M', '2RW', '4', 'C', '3', '4', '40');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, pwr, tgh, LSV) VALUES ('Noyan Dar, Roil Shaper', 'R', 'M', '3WU', '5', 'C', '4', '4', '40');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, pwr, tgh, LSV) VALUES ('Omnath, Locus Rage', 'M', 'M', '3RRGG', '7', 'C', '5', '5', '45');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, pwr, tgh, LSV) VALUES ('Resolute Blademaster', 'U', 'M', '3RW', '5', 'C', '2', '2', '30');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, LSV) VALUES ('Roil Spout', 'U', 'M', '1WU', '3', 'S', '35');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, pwr, tgh, LSV) VALUES ('Skyrider Elf', 'U', 'M', 'XGU', '2', 'C', '0', '0', '35');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, pwr, tgh, LSV) VALUES ('Veteran Warleader', 'R', 'M', '1GW', '3', 'C', '0', '0', '25');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, LSV) VALUES ('Aligned Hedron Network', 'R', 'N', '4', '4', 'A', '15');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, LSV) VALUES ('Hedron Archive', 'U', 'N', '4', '4', 'A', '25');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, LSV) VALUES ('Hedron Blade', 'C', 'N', '1', '1', 'A', '5');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, LSV) VALUES ('Pathway Arrows', 'U', 'N', '1', '1', 'A', '10');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, pwr, tgh, LSV) VALUES ('Pilgrim\'s Eye', 'U', 'N', '3', '3', 'C', '1', '1', '30');
INSERT INTO btz (name, rarity, color, manacost, concost, archetype, LSV) VALUES ('Slab Hammer', 'U', 'N', '2', '2', 'A', '10');
INSERT INTO btz (name, rarity, color, archetype, LSV) VALUES ('Ally Encampment', 'R', 'N', 'L', '20');
INSERT INTO btz (name, rarity, color, archetype, LSV) VALUES ('Blighted Cataract', 'U', 'N', 'L', '35');
INSERT INTO btz (name, rarity, color, archetype, LSV) VALUES ('Blighted Fen', 'U', 'N', 'L', '35');
INSERT INTO btz (name, rarity, color, archetype, LSV) VALUES ('Blighted Gorge', 'U', 'N', 'L', '35');
INSERT INTO btz (name, rarity, color, archetype, LSV) VALUES ('Blighted Steppe', 'U', 'N', 'L', '25');
INSERT INTO btz (name, rarity, color, archetype, LSV) VALUES ('Blighted Woodland', 'U', 'N', 'L', '25');
INSERT INTO btz (name, rarity, color, archetype, LSV) VALUES ('Canopy Vista', 'R', 'N', 'L', '30');
INSERT INTO btz (name, rarity, color, archetype, LSV) VALUES ('Cinder Glade', 'R', 'N', 'L', '30');
INSERT INTO btz (name, rarity, color, archetype, LSV) VALUES ('Evolving Wilds', 'C', 'N', 'L', '30');
INSERT INTO btz (name, rarity, color, archetype, LSV) VALUES ('Fertile Thicket', 'C', 'N', 'L', '30');
INSERT INTO btz (name, rarity, color, archetype, LSV) VALUES ('Looming Spires', 'C', 'N', 'L', '30');
INSERT INTO btz (name, rarity, color, archetype, LSV) VALUES ('Lumbering Falls', 'R', 'N', 'L', '35');
INSERT INTO btz (name, rarity, color, archetype, LSV) VALUES ('Mortuary Mire', 'C', 'N', 'L', '30');
INSERT INTO btz (name, rarity, color, archetype, LSV) VALUES ('Prairie Stream', 'R', 'N', 'L', '30');
INSERT INTO btz (name, rarity, color, archetype, LSV) VALUES ('Sanctum of Ugin', 'R', 'N', 'L', '25');
INSERT INTO btz (name, rarity, color, archetype, LSV) VALUES ('Sandstone Bridge', 'C', 'N', 'L', '30');
INSERT INTO btz (name, rarity, color, archetype, LSV) VALUES ('Shambling Vent', 'R', 'N', 'L', '35');
INSERT INTO btz (name, rarity, color, archetype, LSV) VALUES ('Shrine of the Forsaken Gods', 'R', 'N', 'L', '30');
INSERT INTO btz (name, rarity, color, archetype, LSV) VALUES ('Skyline Cascade', 'C', 'N', 'L', '30');
INSERT INTO btz (name, rarity, color, archetype, LSV) VALUES ('Smoldering Marsh', 'R', 'N', 'L', '30');
INSERT INTO btz (name, rarity, color, archetype, LSV) VALUES ('Spawning Bed', 'U', 'N', 'L', '35');
INSERT INTO btz (name, rarity, color, archetype, LSV) VALUES ('Sunken Hollow', 'R', 'N', 'L', '30');
INSERT INTO btz (name, rarity, color, archetype, LSV) VALUES ('Plains', 'BL', 'N', 'L', '0');
INSERT INTO btz (name, rarity, color, archetype, LSV) VALUES ('Plains', 'BL', 'N', 'L', '0');
INSERT INTO btz (name, rarity, color, archetype, LSV) VALUES ('Plains', 'BL', 'N', 'L', '0');
INSERT INTO btz (name, rarity, color, archetype, LSV) VALUES ('Plains', 'BL', 'N', 'L', '0');
INSERT INTO btz (name, rarity, color, archetype, LSV) VALUES ('Plains', 'BL', 'N', 'L', '0');
INSERT INTO btz (name, rarity, color, archetype, LSV) VALUES ('Island', 'BL', 'N', 'L', '0');
INSERT INTO btz (name, rarity, color, archetype, LSV) VALUES ('Island', 'BL', 'N', 'L', '0');
INSERT INTO btz (name, rarity, color, archetype, LSV) VALUES ('Island', 'BL', 'N', 'L', '0');
INSERT INTO btz (name, rarity, color, archetype, LSV) VALUES ('Island', 'BL', 'N', 'L', '0');
INSERT INTO btz (name, rarity, color, archetype, LSV) VALUES ('Island', 'BL', 'N', 'L', '0');
INSERT INTO btz (name, rarity, color, archetype, LSV) VALUES ('Swamp', 'BL', 'N', 'L', '0');
INSERT INTO btz (name, rarity, color, archetype, LSV) VALUES ('Swamp', 'BL', 'N', 'L', '0');
INSERT INTO btz (name, rarity, color, archetype, LSV) VALUES ('Swamp', 'BL', 'N', 'L', '0');
INSERT INTO btz (name, rarity, color, archetype, LSV) VALUES ('Swamp', 'BL', 'N', 'L', '0');
INSERT INTO btz (name, rarity, color, archetype, LSV) VALUES ('Swamp', 'BL', 'N', 'L', '0');
INSERT INTO btz (name, rarity, color, archetype, LSV) VALUES ('Mountain', 'BL', 'N', 'L', '0');
INSERT INTO btz (name, rarity, color, archetype, LSV) VALUES ('Mountain', 'BL', 'N', 'L', '0');
INSERT INTO btz (name, rarity, color, archetype, LSV) VALUES ('Mountain', 'BL', 'N', 'L', '0');
INSERT INTO btz (name, rarity, color, archetype, LSV) VALUES ('Mountain', 'BL', 'N', 'L', '0');
INSERT INTO btz (name, rarity, color, archetype, LSV) VALUES ('Mountain', 'BL', 'N', 'L', '0');
INSERT INTO btz (name, rarity, color, archetype, LSV) VALUES ('Forest', 'BL', 'N', 'L', '0');
INSERT INTO btz (name, rarity, color, archetype, LSV) VALUES ('Forest', 'BL', 'N', 'L', '0');
INSERT INTO btz (name, rarity, color, archetype, LSV) VALUES ('Forest', 'BL', 'N', 'L', '0');
INSERT INTO btz (name, rarity, color, archetype, LSV) VALUES ('Forest', 'BL', 'N', 'L', '0');
INSERT INTO btz (name, rarity, color, archetype, LSV) VALUES ('Forest', 'BL', 'N', 'L', '0');