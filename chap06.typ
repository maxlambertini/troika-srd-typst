#import "@preview/tablex:0.0.6": tablex, cellx

#let chap06_title=[= Tables
<tables>
]
#let chap06=[

#columns(2, gutter: 6mm, [
=== Melee Weapons
<melee-weapons>
#align(center)[#tablex(
  stroke: 0.1pt,
  auto-vlines: false,
  columns: 8,
  header-rows: 1,
  align: (col, row) => (auto,auto,auto,auto,auto,auto,auto,auto,).at(col),
  inset: 6pt,
  [*Type*], [~], [~], [~], [~], [~], [~], [~],
  [*Damage Roll*],
  [1],
  [2],
  [3],
  [4],
  [5],
  [6],
  [7+],
  [*Sword*],
  [4],
  [6],
  [6],
  [6],
  [6],
  [8],
  [10],
  [*Axe*],
  [2],
  [2],
  [6],
  [6],
  [8],
  [10],
  [12],
  [*Knife*],
  [2],
  [2],
  [2],
  [2],
  [4],
  [8],
  [10],
  [*Staff*],
  [2],
  [4],
  [4],
  [4],
  [4],
  [6],
  [8],
  [*Hammer*\#],
  [1],
  [2],
  [4],
  [6],
  [8],
  [10],
  [12],
  [*Spear*],
  [4],
  [4],
  [6],
  [6],
  [8],
  [8],
  [10],
  [*Longsword*],
  [4],
  [6],
  [8],
  [8],
  [10],
  [12],
  [14],
  [*Mace*\#],
  [2],
  [4],
  [4],
  [6],
  [6],
  [8],
  [10],
  [*Polearm*\*\#],
  [2],
  [4],
  [4],
  [8],
  [12],
  [14],
  [18],
  [*Maul*\*\#],
  [1],
  [2],
  [3],
  [6],
  [12],
  [13],
  [14],
  [*Greatsword*\*],
  [2],
  [4],
  [8],
  [10],
  [12],
  [14],
  [18],
  [*Club*],
  [1],
  [1],
  [2],
  [3],
  [6],
  [8],
  [10],
  [*Unarmed*],
  [1],
  [1],
  [1],
  [2],
  [2],
  [3],
  [4],
  [*Shield*],
  [2],
  [2],
  [2],
  [4],
  [4],
  [6],
  [8],
)
]

\* indicates a Weapon that requires at least two hands to use. \#
indicates a Weapon that ignores 1 point of Armour

=== Ranged Weapons
<ranged-weapons>
#align(center)[#tablex(
  stroke: 0.1pt,
  auto-vlines: false,
  columns: 8,  
  align: (col, row) => (auto,auto,auto,auto,auto,auto,auto,auto,).at(col),
  inset: 6pt,
  [*Damage Roll*], [*1*], [*2*], [*3*], [*4*], [*5*], [*6*], [*7+*],
  [*Fusil*\*\#],
  [2],
  [4],
  [4],
  [6],
  [12],
  [18],
  [24],
  [*Bow*\*],
  [2],
  [4],
  [6],
  [8],
  [8],
  [10],
  [12],
  [*Crossbow*\*],
  [4],
  [4],
  [6],
  [8],
  [8],
  [8],
  [10],
  [*Pistolet*\#],
  [2],
  [2],
  [4],
  [4],
  [6],
  [12],
  [16],
)
]

\* indicates a Weapon that requires at least two hands to use. \#
indicates a Weapon that ignores 1 point of Armour

=== Beastly Weapons

#align(center)[#tablex(
  stroke: 0.1pt,
  auto-vlines: false,
  columns: 8,
  align: (col, row) => (auto,auto,auto,auto,auto,auto,auto,auto,).at(col),
  inset: 6pt,
  [*Damage Roll*], [*1*], [*2*], [*3*], [*4*], [*5*], [*6*], [*7+*],
  [*Small Beast*],
  [2],
  [2],
  [3],
  [3],
  [4],
  [5],
  [6],
  [*Modest Beast*],
  [4],
  [6],
  [6],
  [8],
  [8],
  [10],
  [12],
  [*Large Beast* \#],
  [4],
  [6],
  [8],
  [10],
  [12],
  [14],
  [16],
  [*Gigantic Beast*\#],
  [4],
  [8],
  [12],
  [12],
  [16],
  [18],
  [24],
)
]

\* indicates a Weapon that requires at least two hands to use. \#
indicates a Weapon that ignores 1 point of Armour


=== Random Spell
<random-spell>
#align(center)[#tablex(
  stroke: 0.1pt,
  auto-vlines: false,
  columns: 4,
  header-rows: 1,
  align: (col, row) => (auto,auto,auto,auto,).at(col),
  inset: 5pt,
  [*D66*], [*Spell Name*], [*D66*], [*Spell Name*],
  [11],
  [Assassin’s Dagger],
  [41],
  [Grow],
  [12],
  [Animate],
  [42],
  [Hurricane],
  [13],
  [Affix],
  [43],
  [Helping Hands],
  [14],
  [Assume Shape],
  [44],
  [Illusion],
  [15],
  [Befuddle],
  [45],
  [Invisibility],
  [16],
  [Breach],
  [46],
  [Jolt],
  [21],
  [Cone of Air],
  [51],
  [Light],
  [22],
  [Banish Spirit],
  [52],
  [Lock],
  [23],
  [Ember],
  [53],
  [Languages],
  [24],
  [Cockroach],
  [54],
  [Levitate],
  [25],
  [Darksee],
  [55],
  [Sentry],
  [26],
  [Diminish],
  [56],
  [Shatter],
  [31],
  [Earthquake],
  [61],
  [Sleep],
  [32],
  [Fear],
  [62],
  [Thunder],
  [33],
  [Fire Bolt],
  [63],
  [Tongue Twister],
  [34],
  [Flash],
  [64],
  [Undo],
  [35],
  [Farseeing],
  [65],
  [Ward],
  [36],
  [Find],
  [66],
  [Wall of Power],
)
]

])

#pagebreak()

=== Oops!
<oops>

#text(size:7.5pt,[
#align(center)[#tablex(
  stroke: 0.1pt,
  auto-vlines: false, 
  // indicate the first two rows are the header
  // (in case we need to eventually
  // enable repeating the header across pages)
  header-rows: 1,  
  columns: 4,
  align: (col, row) => (auto,auto,auto,auto,).at(col),
  inset: 4pt,
  [*D66*], [*Ooops Type*], [*D66*], [*Ooops Type*],
  [11],
  [There is a flash followed by a shriek - the wizard has turned into a
  pig.],
  [41],
  [Everyone in the vicinity turns into a pig except for one embarrassed
  wizard.],
  [12],
  [Twenty-five years of the wizard’s life drop away in an instant,
  possibly making them a very small child. If the wizard is younger than
  twenty-five then they disappear into cosmic pre-birth.],
  [42],
  [An overflow of plasmic fluid has found its way into the wizard’s
  head, which has expanded to the size of a pumpkin. If the wizard is
  struck for 5+ Damage in one go they must Test their Luck or their head
  explodes, killing them and dealing 2d6 Damage to anyone standing
  nearby.],
  [13],
  [A small shoal of herring and the water they had previously swum in
  appear above the wizard, soaking everyone nearby with freezing sea
  water.],
  [43],
  [All vegetation within a mile withers and dies.],
  [14],
  [The wizard no longer speaks or understands any known tongue, instead
  favouring a slightly unpleasant language made up of shrieks and
  mumbles.],
  [44],
  [A pool of colour opens up under the wizard, sucking them and any
  other unlucky nearby souls into it. They will be whisked off to a
  random sphere of existence.],
  [15],
  [The most feared of adolescent academy curses: hiccups! Until
  dispelled the wizard hiccups uncontrollably, suffering a -4 penalty to
  further attempts at magic.],
  [45],
  [All exposed liquid within 12 metres turns to milk. That milk then
  curdles.],
  [16],
  [The wizard grows an attractive tail. If removed it does not grow
  back.],
  [46],
  [A random spectator’s bones mysteriously disappear. Even more
  mysteriously they don’t seem overly put out by it. They can’t fight or
  cast spells and can only very slowly shuffle about as a gelatinous
  blob of flesh but they’re generally unphased. After 1d6 hours the
  bones pop back into place from wherever they went.],
  [21],
  [All currency in the wizard’s possession turns into beautiful
  butterflies that flap off into the sky.],
  [51],
  [An inanimate object in the wizard’s possession gains sentience and a
  voice. Its attitude is up to the GM to decide.],
  [22],
  [A very surprised orc appears beside the wizard \(7/8/2 - Club).],
  [52],
  [A portal is opened to a paradigmatic battleground, allowing an
  angelic or demonic figure to pop through.],
  [23],
  [The wizard catches the Red Eye Curse. Whenever they open their eyes
  fire shoots out at random \(as Fire Bolt).],
  [53],
  [The wizard flies off in a random direction at great speed, landing 50
  metres away \(or falling back down to earth, as it may be).],
  [24],
  [All shoes in the vicinity catch fire.],
  [54],
  [The wizard suffers a coughing fit for 1d6 turns after which 1d6
  gremlins tumble out of their mouth and start biting people’s faces.],
  [25],
  [The wizard grows a small pair of horns.],
  [55],
  [The wizard instantly grows an enormous shaggy beard. It tumbles down
  to the floor and gets in the way. The wizard suffers a -2 penalty to
  everything until they tame that magnificent beast.],
  [26],
  [All of the wizard’s body hair falls out with an audible "fuff!"],
  [56],
  [The wizard becomes 20 years old. Today is their new birthday and they
  will feel terrible if no one notices.],
  [31],
  [All weapons of war in the vicinity turn into flowers.],
  [61],
  [A calm and healthy pig appears in place of the Spell.],
  [32],
  [The wizard’s old face melts off and reveals a new one. It is quite
  handsome.],
  [62],
  [The wizard’s teeth all fall out. The sudden loss causes them to
  suffer a -4 penalty to making magic due to their poor diction. After
  an hour a fresh set grows in.],
  [33],
  [The wizard disappears in a puff of smoke, never to be seen again.],
  [63],
  [An entirely different and random Spell goes off, directed at the same
  target.],
  [34],
  [The wizard’s hands find a mind of their own and take a severe
  disliking to the tyranny of control. They set about choking the wizard
  to death only to lapse back into servitude as soon as they pass out.],
  [64],
  [The wizard is cursed with curses. They are unable to speak without
  swearing, thus making magic impossible for the duration. Lasts 1d6
  hours.],
  [35],
  [All animals in the vicinity are brought back to life. This includes
  rations and leather, which will crawl and flap about blindly.],
  [65],
  [The wizard issues forth a mighty sneeze, knocking everyone over in
  front of them and dealing 1d6 Damage unless they successfully Test
  their Luck.],
  [36],
  [A sickness overcomes the wizard, causing them to cough up a thick
  black fluid. The fluid flows away as though in a hurry to be
  somewhere. The wizard will soon hear rumours and suffer accusations
  due to the workings of a sinister doppelgänger.],
  [66],
  [The Spell being cast won’t stop. It goes completely haywire, out of
  control, firing off madly until the wizard is subdued.],
)
]
])

]
