# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

p "started seed"

# Transaction.destroy_all
Property.destroy_all
User.destroy_all
Portal.destroy_all
Package.destroy_all

packages = Package.create([
  {
    name: "Classic",
    description: "Classic package 20 properties and
access to 30 million potential buyers",
    price_cents: 4600
  },
  {
    name: "Premium",
    description: "Premium package 50 properties and
access to 70 million potential buyers",
    price_cents: 9000
  },
  {
    name: "Go Pro",
    description: "Go pro package 100 properties and
access to 110 million potential buyers",
    price_cents: 12500
  },
  {
  name: "Platinum",
  description: "Platinum package 200 properties and
access to 140 million potential buyers",
  price_cents: 20000
},
])

portals = Portal.create([
  {name: 'Funda', country: 'Netherlands', portal_url: 'https://www.funda.nl/', premium: true, cost: 200},
  {name: 'Kyero', country: 'Spain', portal_url: 'https://www.kyero.com/', premium: true, cost: 170},
  {name: 'Emlaktown', country: 'Turkey', portal_url: 'https://www.emlaktown.com/', premium: true, cost: 120},
  {name: 'Mesto', country: 'Russia', portal_url: 'https://mesto.ua/', premium: true, cost: 160},
  {name: 'Willhaben', country: 'Germany', portal_url: 'https://www.willhaben.at/iad', premium: true, cost: 160},
  {name: 'Arkadia', country: 'Global portal', portal_url: 'http://en.arkadia.com/', premium: true, cost: 180},
  {name: 'Morizon', country: 'Poland', portal_url: 'https://www.morizon.pl/', premium: true, cost: 150},
  {name: 'Le Figero', country: 'France', portal_url: 'https://properties.lefigaro.com/', premium: true, cost: 150},
  {name: 'City24', country: 'Latvia', portal_url: 'https://city24.postimees.ee/', premium: true, cost: 150},
  {name: 'Immostreet', country: 'Switzerland', portal_url: 'https://www.immostreet.ch/en/', premium: true, cost: 190},
  {name: 'XE', country: 'Greece', portal_url: 'http://www.xe.gr/', premium: false, cost: false },
  {name: 'Property852', country: 'Hong Kong', portal_url: 'http://property852.com/#1', premium: true, cost: 170},
  {name: 'Bayut', country: 'UAE', portal_url: 'https://www.bayut.com/', premium: true, cost: 180},
  {name: 'Zillow', country: 'USA', portal_url: 'https://www.zillow.com/', premium: true, cost: 160},
  {name: 'Trulia', country: 'USA', portal_url: 'https://www.trulia.com/', premium: true, cost: 170},
  {name: '1-Property', country: 'Russia', portal_url: 'http://www.1-property.ru/', premium: true, cost: 140},
  {name: '1st-For-French-Property', country: 'France', portal_url: '1st-for-french-property.co.uk', premium: true, cost: 140},
  {name: 'Moveagain', country: 'UK', portal_url: 'https://www.moveagain.co.uk/', premium: true, cost: 240},
  {name: 'Property Abroad', country: 'UK', portal_url: 'https://www.propertyabroad.com/', premium: true, cost: 140},
  {name: 'Ads House', country: 'USA', portal_url: 'http://adshouse.org/', premium: true, cost: 120},
  {name: 'Immobilienmarkt', country: 'Austria', portal_url: 'https://www.a-immobilienmarkt.com/', premium: true, cost: 160},
  {name: 'Apartble', country: 'USA', portal_url: 'https://apartable.com/', premium: true, cost: 160},
  {name: 'A Place In The Sun', country: 'UK', portal_url: 'https://www.aplaceinthesun.com/', premium: true, cost: 160},
  {name: 'Appymove', country: 'UK', portal_url: 'http://www.appymove.com/', premium: false, cost: false },
  {name: 'Ausud', country: 'France', portal_url: 'https://www.ausud.com/', premium: true, cost: 120 },
  {name: 'Azur Villas', country: 'France', portal_url: 'https://azurvillas.com/', premium: true, cost: 120 },
  {name: 'Bellevue', country: 'Germany', portal_url: 'https://www.bellevue.de/', premium: false, cost: false },
  {name: 'Chateaux Property', country: 'France', portal_url: 'http://chateauxproperty.com/', premium: true, cost: 50},
  {name: 'Classificados', country: 'Brazil', portal_url: 'http://www.classificados.com.br/', premium: false, cost: false },
  {name: 'Class Quick', country: 'UK', portal_url: 'ClassQuick.com', premium: false, cost: false },
  {name: 'Clefrance', country: 'France', portal_url: 'http://www.clefrance.co.uk/', premium: true, cost: 50},
  {name: 'Condo', country: 'USA', portal_url: 'http://www.condo.com/', premium: true, cost: 80},
  {name: 'Country Life', country: 'USA', portal_url: 'http://www.countrylife.co.uk/', premium: true, cost: 200},
  {name: 'Domaza', country: 'Russia', portal_url: 'https://www.domaza.ru/', premium: true, cost: 170},
  {name: 'Donkiz', country: 'France', portal_url: 'https://www.donkiz.fr/', premium: false, cost: false },
  {name: 'ebay', country: 'Global portal', portal_url: 'https://www.ebay.co.uk/rpp/overseas-property', premium: true, cost: 200},
  {name: 'English Spoken', country: 'UK', portal_url: 'http://www.englishspoken.info/', premium: true, cost: 140},
  {name: 'Domaza', country: 'Russia', portal_url: 'https://www.domaza.ru/', premium: true, cost: 170},
  {name: 'Estate Agent', country: 'UK', portal_url: 'http://estateagent.com/', premium: false, cost: false },
  {name: 'Eurobix', country: 'Europe', portal_url: 'http://www.eurobrix.com/', premium: false, cost: false },
  {name: 'European Property', country: 'Europe', portal_url: 'http://www.europeanproperty.com/', premium: true, cost: 170},
  {name: 'Expat Focus', country: 'Europe', portal_url: 'https://www.expatfocus.com/', premium: true, cost: 170},
  {name: 'Finn', country: 'Finland', portal_url: 'https://www.finn.no/', premium: true, cost: 120},
  {name: 'Formost Property Group', country: 'Global', portal_url: 'http://www.foremostpropertygroup.co.uk/', premium: false, cost: false },
  {name: 'For Sale In The Algarve', country: 'Algarve', portal_url: 'https://for-sale-in-algarve.com/', premium: true, cost: 140},
  {name: 'France Estate Agent', country: 'France', portal_url: 'http://www.franceestateagent.com/', premium: true, cost: 130},
  {name: 'France House Hunt', country: 'France', portal_url: 'http://francehousehunt.com/', premium: true, cost: 110},
  {name: 'France Property Shop', country: 'France', portal_url: 'http://www.francepropertyshop.com/', premium: true, cost: 110},
  {name: 'France-Property', country: 'France', portal_url: 'https://www.french-property.com/', premium: true, cost: 125},
  {name: 'France Property Center', country: 'France', portal_url: 'https://www.frenchpropertycentre.com/', premium: false, cost: false },
  {name: 'France Property Links', country: 'France', portal_url: 'http://www.frenchpropertylinks.com/', premium: true, cost: 170},
  {name: 'France-Property-Online', country: 'France', portal_url: 'http://www.french-property-online.co.uk/', premium: true, cost: 190},
  {name: 'Future Life Properties', country: 'UK', portal_url: 'http://www.futurelifeproperties.com/', premium: true, cost: 190},
  {name: 'Gites-In-France', country: 'France', portal_url: 'Gites-in-France.co.uk', premium: false, cost: false },
  {name: 'Globes Pan Property', country: 'Global portal', portal_url: 'http://globespanproperty.com/', premium: true, cost: 225},
  {name: 'Globe Immo', country: 'Slovakia', portal_url: 'http://globespanproperty.com/', premium: false, cost: false },
  {name: 'Zoopla', country: 'UK', portal_url: 'https://www.zoopla.co.uk/', premium: true, cost: 225},
  {name: 'Green-Acres', country: 'France', portal_url: 'https://www.green-acres.fr/en', premium: true, cost: 175},
  {name: 'Holprop', country: 'Global portal', portal_url: 'https://Holprop.com', premium: true, cost: 155},
  {name: 'Home.ch', country: 'Switzerland', portal_url: 'https://www.home.ch/en/', premium: true, cost: 190},
  {name: 'Home.co.uk', country: 'UK', portal_url: 'http://www.home.co.uk/', premium: false, cost: false },
  {name: 'Homehound', country: 'Australia', portal_url: 'http://www.homehound.com.au/', premium: false, cost: false },
  {name: 'Homely', country: 'Australia', portal_url: 'https://www.homely.com.au', premium: false, cost: false },
  {name: 'Homes & property', country: 'UK', portal_url: 'www.homesandproperty.co.uk', premium: true, cost: 40},
  {name: 'Houses 321', country: 'UK', portal_url: 'http://www.houses321.com/', premium: true, cost: 40},
  {name: 'Idealista', country: 'Spain', portal_url: 'https://www.idealista.com/en/', premium: true, cost: 140},
  {name: 'Imlix', country: 'Europe', portal_url: 'http://eu.imlix.com/', premium: false, cost: false },
  {name: 'Immobilien scout24', country: 'Germany', portal_url: 'https://www.immobilienscout24.de/', premium: true, cost: 190},
  {name: 'Immo Direkt', country: 'Germany', portal_url: 'https://www.immodirekt.at/', premium: true, cost: 120},
  {name: 'Immo Discount', country: 'France', portal_url: 'http://www.immodiscount.co.uk/', premium: false, cost: false },
  {name: 'Immonet', country: 'Germay', portal_url: 'https://www.immonet.de/', premium: true, cost: 180},
  {name: 'Immovario', country: 'Spain', portal_url: 'https://www.immovario.com/en/', premium: true, cost: 165},
  {name: 'Immowelt', country: 'Germany', portal_url: 'https://www.immowelt.de/', premium: true, cost: 165},
  {name: 'Inea', country: 'UK', portal_url: 'http://inea.co.uk/', premium: true, cost: 125},
  {name: 'Interhomes', country: 'Spain', portal_url: 'https://interhomesonline.com/', premium: true, cost: 125},
  {name: 'Iproperty', country: 'Asia', portal_url: 'http://www.iproperty.com/', premium: true, cost: 175},
  {name: 'Iproperty International', country: 'Asia', portal_url: 'https://www.iproperty.com.my/international/', premium: true, cost: 195},
  {name: 'Juwai', country: 'China', portal_url: 'http://www.juwai.com/', premium: true, cost: 195},
  {name: 'Kalaydo', country: 'Germany', portal_url: 'https://www.kalaydo.de/', premium: true, cost: 135},
  {name: 'Kent Homes', country: 'UK', portal_url: 'http://kenthomes.co.uk/', premium: true, cost: 120},
  {name: 'Latest Homes', country: 'UK', portal_url: 'https://www.latesthomes.co.uk/', premium: true, cost: 50},
  {name: 'Leading Re', country: 'Global', portal_url: 'http://www.leadingre.com/', premium: true, cost: 250},
  {name: 'Let Advise', country: 'UK', portal_url: 'http://letadvise.co.uk/', premium: false, cost: false },
  {name: 'Malta Property', country: 'Malta', portal_url: 'http://maltaproperty.com/en/home.htm', premium: false, cost: false },
  {name: 'Med Head', country: 'Global portal', portal_url: 'http://www.medhead.com/#hsiz40sjm4bm7MWP.97', premium: true, cost: 100},
  {name: 'Med Property Shop', country: 'Japan', portal_url: 'http://www.medpropertyshop.com/', premium: true, cost: 100},
  {name: 'Million Dollar Mansions', country: 'Australia', portal_url: 'https://www.milliondollarmansions.com.au/', premium: true, cost: 220},
  {name: 'Million Dollar Villas', country: 'Global portal', portal_url: 'https://milliondollarvillas.com/', premium: true, cost: 190},
  {name: 'Mondinion', country: 'Global portal', portal_url: 'http://www.mondinion.com/', premium: true, cost: 190},
  {name: 'Mootz', country: 'UK', portal_url: 'https://mootz.uk/', premium: false, cost: false },
  {name: 'Mouse Price', country: 'UK', portal_url: 'https://www.mouseprice.com/', premium: false, cost: false },
  {name: 'Moveto', country: 'UK', portal_url: 'http://moveto.co.uk/', premium: true, cost: 70},
  {name: 'Move World Wide', country: 'Global portal', portal_url: 'http://www.moveworldwide.net/', premium: true, cost: 90},
  {name: 'My-French-House', country: 'France', portal_url: 'https://www.my-french-house.com/', premium: false, cost: false },
  {name: 'Myproperty-Greece', country: 'Greece', portal_url: 'http://myproperty-greece.com/', premium: true, cost: 47},
  {name: 'Nestoria', country: 'UK', portal_url: 'https://www.nestoria.co.uk/', premium: false, cost: false },
  {name: 'Net House Price', country: 'UK', portal_url: 'https://nethouseprices.com/', premium: false, cost: false },
  {name: 'Nubricks', country: 'UK', portal_url: 'http://www.nubricks.com/', premium: true, cost: 90},
  {name: 'OnTheMarket', country: 'UK', portal_url: 'https://www.onthemarket.com/', premium: true, cost: 290},
  {name: 'Oodle', country: 'USA', portal_url: 'https://www.oodle.com/', premium: true, cost: 90},
  {name: 'Overseas Property Direct', country: 'UK', portal_url: 'http://overseaspropertydirect.co.uk/', premium: false, cost: false },
  {name: 'PPProperty', country: 'Portugal', portal_url: 'https://www.ppproperty.com/', premium: false, cost: false },
  {name: 'Placebuzz', country: 'UK', portal_url: 'https://www.placebuzz.com/', premium: false, cost: false },
  {name: '1 Casa', country: 'Spain', portal_url: 'https://www.1casa.com/', premium: false, cost: false },
  {name: 'Leju', country: 'China', portal_url: 'http://bj.leju.com/', premium: false, cost: false },
  {name: 'Prime Location', country: 'UK', portal_url: 'https://www.primelocation.com/', premium: true, cost: 250},
  {name: 'Propertini', country: 'Global portal', portal_url: 'https://propertini.com/', premium: false, cost: false },
  {name: 'Proerty-Abroad', country: 'UK', portal_url: 'http://www.property-abroad.com/', premium: true, cost: 160 },
  {name: 'Property-Net-Spain', country: 'Spain', portal_url: 'http://property-net-spain.com/', premium: true, cost: 150 },
  {name: 'Property Network', country: 'UK', portal_url: 'http://www.propertynetwork.net/', premium: true, cost: 140 },
  {name: 'Property News', country: 'UK', portal_url: 'https://www.propertynews.com/', premium: true, cost: 120 },
  {name: 'Property Pal', country: 'UK', portal_url: 'https://www.propertypal.com/', premium: true, cost: 170 },
  {name: 'Property Pigeon', country: 'UK', portal_url: 'https://www.propertypigeon.co.uk/', premium: false, cost: false },
  {name: 'Property Property Property', country: 'UK', portal_url: 'http://propertypropertyproperty.co.uk/', premium: false, cost: false },
  {name: 'Property Sales Spain', country: 'Spain', portal_url: 'https://www.propertysalespain.com/', premium: false, cost: false },
  {name: 'Property Show Rooms', country: 'Global portal', portal_url: 'https://www.propertyshowrooms.com/', premium: true, cost: 190 },
  {name: 'Rader Homes', country: 'UK', portal_url: 'https://www.radarhomes.co.uk/', premium: true, cost: 190 },
  {name: 'Real Buzz', country: 'Global portal', portal_url: 'http://real-buzz.com/', premium: false, cost: false },
  {name: 'Real Estate', country: 'Australia', portal_url: 'https://www.realestate.com.au/buy', premium: false, cost: false },
  {name: 'Realtor', country: 'USA', portal_url: 'https://www.realtor.com/', premium: true, cost: 220},
  {name: 'Reed b', country: 'Global portal', portal_url: 'https://reedb.com/', premium: true, cost: 220},
  {name: 'Rightmove', country: 'UK', portal_url: 'http://www.rightmove.co.uk/', premium: true, cost: 320},
  {name: 'Rightmove Overseas', country: 'UK', portal_url: 'http://www.rightmove.co.uk/overseas-property.html/svr/2712', premium: true, cost: 220},
  {name: 'Riviera Property Network', country: 'France', portal_url: 'http://www.rivierapropertynetwork.com/', premium: true, cost: 120},
  {name: 'S1 Homes', country: 'UK', portal_url: 'http://www.s1homes.com/', premium: true, cost: 120},
  {name: 'Second Home', country: 'Europe', portal_url: 'https://www.tweedewoning.eu/', premium: true, cost: 160},
  {name: 'Seloger', country: 'France', portal_url: 'http://www.seloger.com/', premium: true, cost: 180},
  {name: 'Spain Property', country: 'Spain', portal_url: 'http://spain-property.com/', premium: false, cost: false },
  {name: 'Spain Property Portal', country: 'Spain', portal_url: 'https://www.spainpropertyportal.com/', premium: true, cost: 190},
  {name: 'Spain Inemo', country: 'Spain', portal_url: 'https://www.spanienimmo.com/', premium: true, cost: 200},
  {name: 'Sweet Location', country: 'UK', portal_url: 'http://sweetlocation.co.uk/', premium: false, cost: false },
  {name: 'Thailand Property', country: 'Thailand', portal_url: 'https://www.thailand-property.com/', premium: true, cost: 150},
  {name: 'The Homepage', country: 'Australia', portal_url: 'https://www.thehomepage.com.au/', premium: false, cost: false },
  {name: 'The House Shop', country: 'Australia', portal_url: 'https://www.thehouseshop.com/', premium: false, cost: false },
  {name: 'The International mls', country: 'USA', portal_url: 'http://www.theimls.com/MLS/index.shtml', premium: true, cost: 110},
  {name: 'The Move Channel', country: 'Global portal', portal_url: 'http://www.themovechannel.com/', premium: true, cost: 90},
  {name: 'Think Spain', country: 'Spain', portal_url: 'https://www.thinkspain.com/', premium: true, cost: 190},
  {name: 'Tranio', country: 'Global portal', portal_url: 'https://tranio.ru/', premium: false, cost: false },
  {name: 'Tutto Casa', country: 'Italy', portal_url: 'http://www.tuttocasa.it/', premium: false, cost: false },
  {name: 'Tweede Woning', country: 'Netherlands', portal_url: 'http://www.tweede-woning.nl/', premium: true, cost: 140 },
  {name: 'The World Property Network', country: 'Global portal', portal_url: 'http://www.twpn.com/', premium: false, cost: false },
  {name: 'Ubodo', country: 'Global portal', portal_url: 'https://www.ubodo.com/', premium: false, cost: false },
  {name: 'View Of Water', country: 'Europe', portal_url: 'http://www.viewofwater.com/', premium: false, cost: false },
  {name: 'Viva Real', country: 'Brasil', portal_url: 'https://www.vivareal.com.br/', premium: true, cost: 140},
  {name: 'Viva Street', country: 'UK', portal_url: 'http://www.vivastreet.co.uk/', premium: true, cost: 130},
  {name: 'What House', country: 'UK', portal_url: 'http://www.vivastreet.co.uk/', premium: false, cost: false },
  {name: 'Wonder Property', country: 'UK', portal_url: 'http://www.wonderproperty.com/', premium: false, cost: false },
  {name: 'World Luxury Home', country: 'Global portal', portal_url: 'https://www.worldluxuryhome.com/', premium: true, cost: 190},
  {name: 'World-Estate', country: 'Spain', portal_url: 'https://world-estate.com/', premium: false, cost: false},
  {name: 'World Property Portal', country: 'Global portal', portal_url: 'http://worldpropertyportal.com/', premium: true, cost: 90},
  {name: 'Yespanya', country: 'Spain', portal_url: 'https://www.yespanya.com/index/properties', premium: true, cost: 240},
  {name: 'Your Property TV', country: 'Australia', portal_url: 'http://www.yourpropertytv.com.au/', premium: false, cost: false},
  {name: 'Zilek', country: 'France', portal_url: 'https://www.zilek.fr/', premium: false, cost: false},

  ])


users = User.create([
  {
    email: 'bart.simpson@property.com',
    first_name: 'bart',
    last_name: 'simpson',
    password: '123456',
    comp_name: 'Booij Makelaars',
    comp_url: 'http://www.booijoz.nl/',
    phone_number: '+31(0)20-4222888',
    address: 'Prinsengracht 414, 1016 JC Amsterdam'
  },
  {
    email: 'peter.griffin@property1.com',
    first_name: 'peter',
    last_name: 'griffin',
    password: '123456',
    comp_name: 'property',
    comp_url: 'http://www.swlp.co.uk/index.php',
    phone_number: '020 8767 0894',
    address: '195 Franciscan Road, Tooting, London, SW17 8HJ'
  },
  {
    email: 'phillip.fry@property2.com',
    first_name: 'bart',
    last_name: 'simpson',
    password: '123456',
    comp_name: 'property',
    comp_url: 'https://www.jamespendleton.co.uk',
    phone_number: '020 3627 7777',
    address: '185 Battersea High Street, SW11 3JS'
  },
  {
    email: 'leon@evk.com',
    first_name: 'Leon',
    last_name: 'Henry',
    password: '123456',
    comp_name: 'Engel & Völkers',
    comp_url: 'https://www.engelvoelkers.com/',
    phone_number: '+49(0)40 36 13 10',
    address: ' Stadthausbrücke 5, 20355 Hamburg, Germany '
  },
  {
    email: 'jack@newyork.com',
    first_name: 'Jack',
    last_name: 'William',
    password: '123456',
    comp_name: 'Townresidential',
    comp_url: 'http://townresidential.com',
    phone_number: '212 557 6500',
    address: '33 Irving Place, New York, NY 10003 '
  },
])


properties = Property.create!([
  {
    address: 'Marinaweg 87 ALMERE',
    price: '€ 792.000 k.k.',
    description: 'Top Ligging! ROYAAL & LUXE APPARTEMENT (circa 210m2) gelegen op de 7e etage, van Muiderburght (kop ligging met zicht op Pampus) met berging en 2 eigen parkeerplaatsen in parkeersouterrain. Een schitterend royaal appartement met een ongelofelijk uitzicht. U geniet van zonsopgang tot zonsondergang van de natuur en het weidse onbeperkte uitzicht over het IJmeer richting Pampus en Amsterdam.',
    photo: '//bb2.goesenroos.nl/bgmRappange/WONEN/2017090808483725/Marinaweg%2087%20Almere%20(6).JPG',
    prop_url: 'http://www.rappange.com/Marinaweg-87-ALMERE-2017090808483725',
    XML: '',
    user: users[0],
    portal: portals[10],
  },
  {
    address: 'Keizersgracht 572 AMSTERDAM',
    price: '€ 11.792.000 k.k.',
    description: 'Dit dubbele grachtenpand is een Rijksmonument uit circa 1770 en heeft als bestemming kantoorruimte. Het monumentale pand bevat nog diverse originele onderdelen waaronder stijlkamers en houtsierwerk. ',
    photo: '//bb2.goesenroos.nl/bgmRappange/WONEN/2018010816271525/Keizersgracht%20572-0262.jpg',
    prop_url: 'http://www.rappange.com/Keizersgracht-572-AMSTERDAM-2018010816271525',
    XML: '',
    user: users[0],
    portal: portals[10],
  },
  {
    address: 'Bos en Lommerplantsoen 73H - AMSTERDAM',
    price: '€ 225.000 k.k.',
    description: 'Ruim en keurig afgewerkt twee kamerappartement op zeer centrale locatie in het hippe Bos en Lommer!',
    photo: 'https://tiaramedia.nvm.nl/Opvragen.media?MediaID=107410624',
    prop_url: 'https://www.vanderlinden.nl/koopwoning/Bos+en+Lommerplantsoen+73+-+AMSTERDAM/51db0193-b209-4a54-920e-01bec95e3b2e',
    XML: '',
    user: users[0],
    portal: portals[20],
  },
  {
    address: 'Hekelveld 3 - II AMSTERDAM',
    price: '€ 275.000 k.k.',
    description: 'CHARMING AND WELL-CLASS 2-ROOM APARTMENT LOCATED ON OWN GROUND IN THE BROWN HEART OF THE CENTER !! This property is very centrally located and suitable for various purposes, pied-a-terre or as a home for yourself in a prime location.',
    photo: 'https://bb2.goesenroos.nl/bgmRappange/WONEN/2018020814550225/Hekelveld%203-2%20Amsterdam%20(4).JPG',
    prop_url: 'http://www.rappange.com/Hekelveld-3-II-AMSTERDAM-2018020814550225',
    XML: '',
    user: users[0],
    portal: portals[20],
  },
  {
    address: 'Noorderplassenweg 20 - ALMERE',
    price: '€ 519.400 k.k.',
    description: 'For those who have always dreamed of free living with views over the water, greenery and beach. And also the convenience of an apartment.',
    photo: 'https://tiaramedia.nvm.nl/Opvragen.media?MediaID=104931319',
    prop_url: 'https://www.vanderlinden.nl/koopwoning/Noorderplassenweg+20+-+ALMERE/e73c0e3f-6090-4dcd-9fc3-dbfabb4d9f8c',
    XML: '',
    user: users[0],
    portal: portals[30],
  },
  {
    address: 'Family Doorzonstraat 2 - ALMERE',
    price: '€ 425.000 k.k.',
    description: 'Are you looking for a fantastic and charming villa located in the Stripheldenbuurt with lots of privacy? This villa is ready to move in and definitely worth a visit!',
    photo: 'https://tiaramedia.nvm.nl/Opvragen.media?MediaID=104931319',
    prop_url: 'https://www.vanderlinden.nl/koopwoning/Familie+Doorzonstraat+2+-+ALMERE/f3f0058f-c188-4d40-be04-0695c09f51f6',
    XML: '',
    user: users[0],
    portal: portals[30],
  },
  {
    address: 'Lakenhalstraat 9 - ALMERE',
    price: '€ 525.000 k.k.',
    description: 'On a beautiful location in the Oostvaardersbuurt! ',
    photo: 'https://www.vanderlinden.nl/assets/components/phpthumbof/cache/Opvragen.d99639fb22ad55c1bedbc9ee1cb8afd2.jpg',
    prop_url: 'https://www.vanderlinden.nl/koopwoning/Lakenhalstraat+9+-+ALMERE/631dd483-55ed-4292-9b39-040c40564dfb',
    XML: '',
    user: users[0],
    portal: portals[40],
  },
  {
    address: 'Jan van Goyenstraat 51 - ALMERE',
    price: '€ 185.000 k.k.',
    description: 'Excellent starter home with bright living room, nice kitchen, 2 bedroom, walk-in wardrobe, front and back garden with storage. ! ',
    photo: 'https://www.vanderlinden.nl/assets/components/phpthumbof/cache/Opvragen.d527d3a9f89b4ab77f08259bf57ca03c.jpg',
    prop_url: 'https://www.vanderlinden.nl/koopwoning/Jan+van+Goyenstraat+51+-+ALMERE/b3e977ef-4b2e-40fd-a3da-fb4cafbd650e',
    XML: '',
    user: users[1],
    portal: portals[40],
  },
  {
    address: 'Salsa Street 105 - ALMERE',
    price: '€ 175.000 k.k.',
    description: 'This spacious 3-room apartment on the third floor is nicely laid out and located in the child-friendly neighborhood of Almere Danswijk. ',
    photo: 'https://www.vanderlinden.nl/assets/components/phpthumbof/cache/Opvragen.0da6511d356a138743ddeefaa9dd8257.jpg',
    prop_url: 'https://www.vanderlinden.nl/koopwoning/Salsastraat+105+-+ALMERE/98de9f97-7ca2-42f7-a9f9-032e7ed33207',
    XML: '',
    user: users[1],
    portal: portals[40],
  }
])



# transactions = Transaction.create([
#   {
#     user: users[1],
#     portal: portals[2],
#     price_cents: 5000
#   },
#   {
#     user: users[1],
#     portal: portals[2],
#     price_cents: 6000
#   },
#   {
#     user: users[2],
#     portal: portals[3],
#     price_cents: 4500
#   },
# ])

p 'seed completed'
