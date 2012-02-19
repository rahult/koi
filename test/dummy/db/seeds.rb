Koi::Engine.load_seed

# Add super heros
heros = ["Abbess", "Ablaze", "Ace", "Acid", "Adamant", "Aegis", "Airspeed", "Alaczar (Spanish: Fortress)", "AlleyCat",
  "Animus", "Anti-Matter Man", "Aqualung (guy with frog powers)", "Arc", "ArchAngel", "Argus", "Armadillo",
  "Arsenal", "Asmodeus", "Astra", "Atomaestro", "Avion", "Axe (a brick with an axe)", "BackFlash", "Badger",
  "Ballistique", "Banelord", "Baron K", "Barracuda", "Basalt", "Battery", "Bile", "Billy Blue Blazes (a speedster)",
  "Bird of Prey", "Black Adept", "Blackbody", "Black Falcon (Brick/Martial Artist)", "Black Light", "Blackmane",
  "BlackShadow", "Blackthorne", "Black Wolf", "Blade Song", "Blast Off", "Bloodletter",
  "Bloodstone (a magic-based mentalist with a crystal focus)", "Bloodsword (a big ninja)", "Blood Warrior", "Bludgeon",
  "Blue Raider", "Brain Child (a midget with mental powers)", "Brain Damage", "Brain Freeze", "Brainstorm", "Briquette",
  "Bruja", "Buck Skin", "Bull", "Bulle", "Bullet", "Cacophony", "Calico", "Captain Combat", "Captain Gorilla", "Cat Lord",
  "Celcius", "Chameleon", "Chaos Hawk", "Charmer (A mutant mentalist with a 30 comleness)", "Checkmate", "Chill", "Chrome",
  "Cinnamon Girl", "Citius (Latin: Speed)", "Concussion", "Condor", "Core Commander", "Cortex", "Cosmos",
  "Crimebuster :  A martial artist and violent sociopath", "Crimson Advenger", "Crossfire", "Damask", "Darkchilde",
  "Dark Elf", "Darkhail", "DarkKnight", "Dayglo", "Deathbolt", "Death Metal", "Deathsong", "Decibelle", "Der Eisenwolf",
  "Dervish", "Destructeur", "Detonator", "Diamond Jim", "Diana", "Domino", "Downsizer", "Dr. Power", "Dune", "Dusk", "Dwindler",
  "Eagle Eye", "Eclipse (manipulates light has rod that shoots lazer)", "Edge", "Elastique", "Elementalist", "Elf", "Eliminator",
  "Elusive Butterfly", "Eradicator", "Erg", "Express", "Eye Tyrant", "Falcon", "F.A.S.T.", "Farseer", "Feedback", "Felina",
  "Felon", "Firefall", "Firefight", "FireFly", "Flame", "Flashback", "Flower Child", "Fly Girl", "Force", "Fracas", "Freak-Out",
  "Frenzy", "Frequent Flyer", "Frost", "Frostbite", "Fuhrer", "Fuji", "Gargoyle", "Gauntlet", "Geistmeister", "Gemini", "Genocide",
  "Ghost Girl", "Giggler", "Glitter", "Golden Eagle II", "Golden Girl", "Gothyk", "Green Dragon", "Grenadier", "Grido", "GrimKaiser",
  "Ground Zero", "Guillotine", "Hammer", "Hammer of God (Ogre from Champions [only he's found religion])", "Hardcase", "Harlequin",
  "Headbanger", "Headhunter", "Heavy Metal", "Hellfire", "Hellrazor", "Hemlok", "Herr Krebs (Mr Cancer)", "Hitman", "Holocaust",
  "Hornet", "Hunter-Killer", "Ice Fury (Magic User)", "Ice Storm", "Imagine", "Impostor", "Incandesca", "Incendie", "Inferno",
  "Infinity", "Intuition", "Iron Mask", "Jackdaw", "Javelin", "Jester", "Kane", "Kibosh", "Krieger", "Kriegspeil", "Kutter",
  "Ladykiller", "Lady Marmalade", "Lady Steele", "Lady Willpower", "Lenz:  Underpowered Light-based character", "Lichtstrahl",
  "Lilith", "Lithos", "Lone Star (Defender of Texas)", "Long Horn (A minotaur who's also a Texas Ranger)", "Mach 5", "Machete",
  "Macro", "Magnifico", "Mandrake:  A magician (duh)", "Manslaughter", "Man-Spider", "Martinet", "Material Girl", "Matte Black",
  "Mean Mr. Mustard (a villain, natch.)", "Mecha", "Mechanon", "Megalith", "Megavolt", "Mentalita", "Merc", "Merry-Andrew",
  "Mind Blade", "Mind Flayer", "Minus", "Minx", "Mist Demon", "Mollock the Eater of Children (a demon)", "Monsier Diamont",
  "Moonshooter", "Moonstone", "Mr. Otto", "Mr. Peppermint Man", "Mr. Soul", "Mr. Zero",
  "Multipleman:  The man who can do anything, just not very well", "Myriad (duplication)", "Napalm", "Nefario", "Negatron",
  "Nemesis", "Neurosis (a mentalist)", "Nightengale", "Night Racer (Mutant speedster who runs faster at night)", "Nightshifter",
  "Nightstrike", "Nightswift", "Nuetron Star", "Nukewarm", "Oberon", "Olympia", "Operative", "Overdrive", "Overkill", "Pacificateur",
  "Paladin:  A violent, murderous, self-righteous thug", "Panzer", "Paragon", "Parasite", "Parsec", "Particle Man", "Phantom Woman",
  "Phaze", "Photon", "Portal", "Powerhouse", "Power Princess", "Predator", "Prism", "Proletarian (Russian Brick)", "Prowler",
  "Psi-Borg (Cyborg Mentalist)", "Psifire", "Psi Mistress", "Psion", "Psychedelic", "Psyke-Out", "Psy-kill", "Pulsar", "Purple Haze",
  "Pyre", "Quad", "Quadrant", "QuickSilver", "Radioactive Man", "Rage", "Rampager", "Random", "Raptor", "Reaver", "Recoil",
  "Red Baron", "Red Devil", "Redline", "Red Lion", "Red Rajah", "Red Spectrum", "Reflex", "Replay", "Restart",
  "Retribution (Brick with titanium claws)", "Revenant", "Reverie", "Rhino", "Ringmaster", "Ripclaw", "Rose",
  "Rosetta (rocky skin and universal translator ability)", "Roulette", "Rubberband Man", "Ruckus (a rockstar that can turn light to sound)",
  "Sable", "SabreHawk", "Sahara", "Salvo", "Sandstorm", "Sargon", "Savante (Super intellect)", "Savateuse", "Scari", "Scarlet Canary",
  "Scathe", "Screaming Hawk", "Seizure", "Seker:  An archaeologist blessed by the Egyptian god of light", "Serephena (An angel)",
  "Seventh Son", "Sgt Steel:  A Green Beret with a metallic coating in a post-apocalypse future", "Shadow Dancer", "ShadowMaster",
  "Shadow Queen", "Shadowscan", "Shadow Stalker (Mutant with invisability only in darkness or shadows)", "Shadowsword", "Shadowweaver",
  "Shaman", "Shapeless", "Shard", "Sharpshooter", "Shatter", "She Cat", "Shiver", "Shockwave", "Shooting Star", "Shrapnel",
  "Silk Spider", "Silverblade", "Silverfox", "Silvershield", "Silversiren", "Silver Stilleto", "Silverstone", "Silverstreak",
  "Silverswift", "Siphon", "Sitcom", "Skylark", "Smasher", "Snap", "Solitaire", "Soundwave", "Spartan", "Spectra", "Speed Metal",
  "Spider", "Spike", "Spit", "Sprite", " Spud", "Squid", "Stalker", "Starmaster", "Star Raven", "Steel", "Stella Polare", "Stilleto",
  "Sting", "Stone Mage", "Stoner (a Thing-like brick)", "Strafe", "Stryke", "Studs", "Sturm", "Succubus", "Sunburst", "Sunspot",
  "Supersonic", "Surf", "Surge", "Suzie Lightning", "Tabu: Punk rock singer/guitarist who can manifest the horrifying power of the ID",
  "Talon", "Tangle", "Tempest", "Terra", "Terrain", "Testarossa", "The Adept", "The Arm", "The Fool", "The Horror", "The Lemurian",
  "The Minx", "The Orb", "The Ripper", "The Walrus (and sidekick, Eggman)", "Thrash", "Thrasher", "Thunder", "Thunderfist",
  "Tiffany Jones:  She's got a code against doing stun", "Tigress", "Torch", "Torque", "Torrid", "Toxic", "Transformer Man",
  "Tri-clops", "Trident", "Tundra", "Ultimate Warrior", "Umbriel", "Underhand", "V", "Veil (A magic user that uses belly dancer veils)",
  "Vesuvius", "Vigil", "Violator", "Vortex", "Wanderer", "War Cry", "Warlord", "Warp", "Warp Dragon", "Warp Mind", "Warp Speed",
  "Warp Stone", "Warp Witch", "WetWare", "Whipcord", "Whirlwind", "Whiskeyjack", "Whitecap", "Whitefeather", "Widow Maker", "Wildthing",
  "Windchill", "Windstorm", "Winter Wolf (Werewolf Brick)", "Wraith", "Wrecker", "X-1 - The Negative Man:  Energy vampire", "X-Calibre",
  "Yellow Rose (Blaster/Texas Ranger)", "Zapp", "Zenith", "Zero", "Zodiac"]

image = Dragonfly::App[:images].generate(:plasma, 300, 300)
file  = Dragonfly::App[:images].generate(:plasma, 50, 50)

generic_hero_details = {
  url: "http://example.com/",
  telephone: "1234 123 123",
  description: "A super hero.",
  image: image,
  file: file
}

heros.each do |name|
  SuperHero.create!({ name: name, gender: SuperHero::Gender.sample, powers: SuperHero::Powers.sample(3) }.merge(generic_hero_details))
end
