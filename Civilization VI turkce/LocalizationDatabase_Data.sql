-- Installation via user Civilization VI Text folder --

-- Add so that language is at the top of the list --
UPDATE "Languages" SET Locale = 'tr_TR', Name = 'Turkish' WHERE Locale = 'en_US';
-- But also restore option to choose English --
INSERT OR IGNORE INTO "Languages" (Locale, Name, Collator, PluralRule, SupportsSmallCaps) VALUES('en_US', 'English', null, 2, 1);
INSERT OR IGNORE INTO "Languages" (Locale, Name, PluralRule, SupportsSmallCaps) VALUES('en_US', 'English', 2, 1);

INSERT INTO "DefaultAudioLanguages" VALUES('tr_TR', 'English(US)');
INSERT INTO "SteamLanguages" VALUES('turkish', 'tr_TR');
INSERT INTO "LanguagePriorities" VALUES('tr_TR', 'tr_TR', 100);
INSERT INTO "LanguagePriorities" VALUES('tr_TR', 'en_US', 90);
INSERT INTO "LanguagePriorities" VALUES('en_US', 'tr_TR', 90);
INSERT INTO "FontStyleSheets" VALUES('tr_TR', 'Civ6_FontStyles_EFIGS.xml', null, 'MinionPro-Medium.otf');
