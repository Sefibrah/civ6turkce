-- Installation via user Civilization VI Text folder --

-- Add so that language is at the top of the list --
UPDATE "Languages" SET Locale = 'tr_TR', Name = 'Türkçe' WHERE Locale = 'pl_PL';
-- But also restore option to choose Polish --
INSERT OR IGNORE INTO "Languages" (Locale, Name, Collator, PluralRule, SupportsSmallCaps) VALUES('pl_PL', 'Polish', null, 2, 1);
INSERT OR IGNORE INTO "Languages" (Locale, Name, PluralRule, SupportsSmallCaps) VALUES('pl_PL', 'Polish', 2, 1);

INSERT INTO "DefaultAudioLanguages" VALUES('tr_TR', 'Polish(PL)');
INSERT INTO "SteamLanguages" VALUES('turkish', 'tr_TR');
INSERT INTO "LanguagePriorities" VALUES('tr_TR', 'tr_TR', 100);
INSERT INTO "LanguagePriorities" VALUES('tr_TR', 'pl_PL', 90);
INSERT INTO "LanguagePriorities" VALUES('pl_PL', 'tr_TR', 90);
INSERT INTO "FontStyleSheets" VALUES('tr_TR', 'Civ6_FontStyles_EFIGS.xml', null, 'MinionPro-Medium.otf');
