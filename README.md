# Aetheryte

A tool for parsing FFXIV's Lodestone for Character Profiles, in Ruby.

```rb
# example usage
Aetheryte.character(id: '13821953')

# result
<Aetheryte::Character
 @city_state="Ul'dah",
 @clan="Dunesfolk ",
 @gender=" ♀",
 @grand_company="Immortal Flames ",
 @grand_company_rank=" Flame Captain",
 @id="13821953",
 @jobs=
  [{:job=>nil, :level=>"90"},
   {:job=>nil, :level=>"90"},
   {:job=>"Knight", :level=>"90"},
   {:job=>"Gunbreaker", :level=>"90"},
   {:job=>nil, :level=>"90"},
   {:job=>"Scholar", :level=>"90"},
   {:job=>"Astrologian", :level=>"90"},
   {:job=>"Sage", :level=>"90"},
   {:job=>nil, :level=>"90"},
   {:job=>nil, :level=>"90"},
   {:job=>nil, :level=>"90"},
   {:job=>"Samurai", :level=>"90"},
   {:job=>"Reaper", :level=>"90"},
   {:job=>nil, :level=>"90"},
   {:job=>"Machinist", :level=>"90"},
   {:job=>"Dancer", :level=>"90"},
   {:job=>nil, :level=>"90"},
   {:job=>"Summoner / Arcanist", :level=>"90"},
   {:job=>"Red Mage", :level=>"90"},
   {:job=>"Blue Mage", :level=>"-"},
   {:job=>"Carpenter", :level=>"90"},
   {:job=>"Blacksmith", :level=>"90"},
   {:job=>"Armorer", :level=>"90"},
   {:job=>"Goldsmith", :level=>"90"},
   {:job=>"Leatherworker", :level=>"90"},
   {:job=>"Weaver", :level=>"90"},
   {:job=>"Alchemist", :level=>"90"},
   {:job=>"Culinarian", :level=>"90"},
   {:job=>"Miner", :level=>"90"},
   {:job=>"Botanist", :level=>"90"},
   {:job=>"Fisher", :level=>"90"}],
 @profile="-",
 @race="Lalafell">
```

More docs, and features, coming soon...