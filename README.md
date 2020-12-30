# Qbus Geheime locatie map

Dit is een custom lightweight script dat je een geheime locatie laat zien voor een bepaalde tijd als je de kaart gebruikt! Je kan zelf de tijd en locatie aanpassen. :)

## Installatie
Download de folder als zip, hierin zit het scrip. Zet het script in je resources en navigeer dan naar je `resources.cfg` daarin zet je het volgende:

```bash
start YourPrefix-map --> (Verander 'YourPrefix' naar jouw resource prefix (qb- of rs- of hp-,...)
```

## Toevoeging aan YourPrefix-inventory
In de zip folder zit een foto genaamd **map.png**, deze moet je in `YourPrefix-inventory -> html -> images` toevoegen.


## Aanpassingen YourPrefix-map
In `YourPrefix-map` kan je als je Visual Studio Code hebt als editor `CTRL + F` doen en dan kan je 
alle plekken waar `YourCore` en `YourPrefix-` staat aanpassen naar jouw eigen **Core** *(QBCore, RSCore, HPCore)* en **resources prefix** *(qb- , rs-, hp-)*

## Aanpassingen aan je Core
Voeg volgende code toe aan je shared.lua in de core
```bash
["map"]= {
["name"] = "map", 
["type"] = "item", 
["image"] = "map.png", 
["unique"] = false, 
["useable"] = true, 
["shouldClose"] = true, 
["combinable"] = nil, 
["description"] = "Geheime kaart :o"
},

```

## Eigen locatie / duurtijd blip / item
- Locaties aanpassen / toevoegen in de `config.lua` bij **Config.Locaties** daar pas je dan de `x, y en z` aan
- De duurtijd van de blip kan je aanpassen in de `config.lua` bij **Config.Duurtijd** (is miliseconden)
- Ander item om te gebruiken pas je aan in `server.lua` op **lijn 5** pas je `"map"` aan naar jouw item dat natuurlijk ook in de `shared.lua` moet zitten

## Toevoegen aan gemeentehuis
Je moet de job in het jobmenu aan het gemeentehuis toevoegen, kijk naar hoe ze dit doen voor andere jobs. De resource noemt `YourPrefix-cityhall` *YourPrefix =(qb-, rs-, hp-)*

## Tips voor gebruik
Je kan bv bij `YourPrefix-bankrobbery` of  een ander script zetten dat ze het uit de kluis kunnen krijgen. Dan kan je ook bv een locatie laten zien waar er wapenhandel / witwas / ... is.

## Dependencies
- Qbus core
- Qbus Progressbars
- Qbus Animations
