-- Copyright © 2008-2023 Pioneer Developers. See AUTHORS.txt for details
-- Licensed under the terms of the GPL v3. See licenses/GPL-3.txt

local s = CustomSystem:new('Cennet',{ 'STAR_K' }):other_names({"61 Cygni"}) --(Azeri name means "paradise")
	:faction('Solar Federation')
	:govtype('EARTHDEMOC')
	:lawlessness(f(1,100)) -- 1/100th from a peaceful eden
	:short_desc('Failed terraformed world')
	:long_desc([["Terraforming gone wrong": these words describe well planet Eden, its runaway greenhouse gases, its scorching heat, its unbreathable atmosphere. But these words don’t begin to capture the spirit of its people. 
Back in 2317, as they disembarked from colony ship « Enlightenment » after nearly 30 years of a slower-than-light journey, the first settlers knew there would be no such thing as outside help. They had to turn their icy planet into an habitable one, and were confident it would become the lush paradise Earth ceased to be.
As things went wrong, Eden’s citizens witnessed their world turning slowly into the scorching hell it is today. In order to survive their new environment, they radically embraced genetic engineering. Besides creating plant species, they also massively engineered the human body, thus breaking an almost universal taboo.
When hyperdrive technology reached 61 Cygni in the 27th century, Eden’s people stopped being desperate for survival, and the system resumed an ordinary development. However, three centuries of isolation have shaped society until today : mankind is quite different here than anywhere else in the galaxy. And only here does the Solar Federation tolerate an exception to its ban on human genetic engineering.
Nowadays, the system is a hotspot for gene-fashionistas (green skin and horns are all the rage right now), and hosts many private or government-run research facilities. Tourists are commonplace too, enjoying the sights of this world, so exotic yet so close.]])

--Names do not infringe any copyright
--Planets and Eden's starports are named after places found in the bible: https://christiananswers.net/dictionary/places.html
--Other starports are named after the vocabulary of genetics : https://www.genome.gov/glossary/ 
 


local cygni = CustomSystemBody:new('Cennet', 'STAR_K')
	:radius(f(90,100))
	:mass(f(51,100))
	:temp(3508)

local cygnia = CustomSystemBody:new('Abana', 'PLANET_TERRESTRIAL')
	:seed(-2126029404)
	:radius(f(2525,10000))
	:mass(f(161,10000))
	:temp(645)
	:semi_major_axis(f(62,1000))
	:eccentricity(f(40,100))
	:inclination(math.deg2rad(0.1))
	:rotation_period(f(79,10))
	:axial_tilt(fixed.deg2rad(f(0,10)))
	:metallicity(f(189,1000))
	:volcanicity(f(12,1000))
	:atmos_density(f(0,1))
	:atmos_oxidizing(f(0,1))
	:ocean_cover(f(0,1))
	:ice_cover(f(0,1))
	:life(f(0,1))

local cygnib = CustomSystemBody:new('Dannah', 'PLANET_TERRESTRIAL')
	:seed(82158097)
	:radius(f(1843,10000))
	:mass(f(62,10000))
	:temp(459)
	:semi_major_axis(f(122,1000))
	:eccentricity(f(0,100))
	:inclination(math.deg2rad(-4.6))
	:rotation_period(f(202,10))
	:axial_tilt(fixed.deg2rad(f(0,10)))
	:metallicity(f(283,1000))
	:volcanicity(f(2,1000))
	:atmos_density(f(0,1))
	:atmos_oxidizing(f(0,1))
	:ocean_cover(f(0,1))
	:ice_cover(f(0,1))
	:life(f(0,1))

	
local cygnic = CustomSystemBody:new('Ellasar', 'PLANET_TERRESTRIAL')
	:seed(723113651)
	:radius(f(4551,10000))
	:mass(f(942,10000))
	:temp(352)
	:semi_major_axis(f(208,1000))
	:eccentricity(f(11,100))
	:inclination(math.deg2rad(0.3))
	:rotation_period(f(202,10))
	:axial_tilt(fixed.deg2rad(f(7,10)))
	:metallicity(f(430,1000))
	:volcanicity(f(94,1000))
	:atmos_density(f(0,1))
	:atmos_oxidizing(f(0,1))
	:ocean_cover(f(0,1))
	:ice_cover(f(0,1))
	:life(f(0,1))
	
local cygnic_starports =	{
		CustomSystemBody:new('Mendel', 'STARPORT_SURFACE')
			:latitude(math.deg2rad(5.7541))
			:longitude(math.deg2rad(4.14)),

		CustomSystemBody:new('Uracil', 'STARPORT_ORBITAL')
			:seed(13)
			:semi_major_axis(f(50,100000))
			:rotation_period(f(1,24*60*3)),
	}

local cygnid = CustomSystemBody:new('Anakim', 'PLANET_TERRESTRIAL')
	:seed(-1891425544)
	:radius(f(4276,10000))
	:mass(f(782,10000))
	:temp(227)
	:semi_major_axis(f(352,1000))
	:eccentricity(f(2,100))
	:inclination(math.deg2rad(0))
	:rotation_period(f(58,10))
	:axial_tilt(fixed.deg2rad(f(123,10)))
	:metallicity(f(568,1000))
	:volcanicity(f(48,1000))
	:atmos_density(f(0,1))
	:atmos_oxidizing(f(0,1))
	:ocean_cover(f(0,1))
	:ice_cover(f(0,1))
	:life(f(0,1))	

local cygnid_starports =	{
		CustomSystemBody:new('Darwin', 'STARPORT_SURFACE')
			:latitude(math.deg2rad(5.7541))
			:longitude(math.deg2rad(4.14)),
			
		CustomSystemBody:new('Histone', 'STARPORT_SURFACE')
			:latitude(math.deg2rad(45.7541))
			:longitude(math.deg2rad(44.14)),

		CustomSystemBody:new('Thymine', 'STARPORT_ORBITAL')
			:seed(13)
			:semi_major_axis(f(50,100000))
			:rotation_period(f(1,24*60*3)),
	}

local cygnie = CustomSystemBody:new('Eden', 'PLANET_TERRESTRIAL')
	:seed(4)
	:radius(f(16988,10000))
	:mass(f(28858,10000))
	:temp(481)
	:semi_major_axis(f(900,1000))
	:eccentricity(f(44,100))
	:inclination(math.deg2rad(7.3))
	:rotation_period(f(8,10))
	:axial_tilt(fixed.deg2rad(f(109,10)))
	:metallicity(f(332,1000))
	:volcanicity(f(467,1000))
	:atmos_density(f(10481,1000))
	:atmos_oxidizing(f(12,100))
	:ocean_cover(f(0,1000))
	:ice_cover(f(0,1000))
	:life(f(0,10))	

local cygnie_starports =	{
		CustomSystemBody:new('Jericho', 'STARPORT_SURFACE')
			:latitude(math.deg2rad(-35))
			:longitude(math.deg2rad(-94)),
			
		CustomSystemBody:new('Abilene', 'STARPORT_SURFACE')
			:latitude(math.deg2rad(45))
			:longitude(math.deg2rad(44)),

		CustomSystemBody:new('Gate of Eden', 'STARPORT_ORBITAL')
			:seed(13)
			:semi_major_axis(f(30,10000))
			:rotation_period(f(1,24*60*3)),
	}

local cygnif = CustomSystemBody:new('Jeruel', 'PLANET_GAS_GIANT')
	:seed(2116419525)
	:radius(f(27132,10000))
	:mass(f(73618,10000))
	:temp(103)
	:semi_major_axis(f(2407,1000))
	:eccentricity(f(4,100))
	:inclination(math.deg2rad(0.5))
	:rotation_period(f(40,10))
	:axial_tilt(fixed.deg2rad(f(63,10)))
	:metallicity(f(139,1000))
	:volcanicity(f(34,1000))
	:atmos_density(f(0,1000))
	:atmos_oxidizing(f(0,10))
	:ocean_cover(f(0,1000))
	:ice_cover(f(0,100))
	:life(f(0,1))	

local cygnig = CustomSystemBody:new('Charran', 'PLANET_TERRESTRIAL')
	:seed(1433689769)
	:radius(f(21105,10000))
	:mass(f(44546,10000))
	:temp(53)
	:semi_major_axis(f(3676,1000))
	:eccentricity(f(5,100))
	:inclination(math.deg2rad(-0.3))
	:rotation_period(f(45,10))
	:axial_tilt(fixed.deg2rad(f(39,10)))
	:metallicity(f(99,1000))
	:volcanicity(f(975,1000))
	:atmos_density(f(324,1000))
	:atmos_oxidizing(f(3,10))
	:ocean_cover(f(314,1000))
	:ice_cover(f(297,100))
	:life(f(0,1))		
	
local cygnig_moons = {
	CustomSystemBody:new('Cedron', 'PLANET_TERRESTRIAL')
		:seed(512055103)		
		:radius(f(515,10000))
		:mass(f(153,1000000))
		:temp(53)
		:semi_major_axis(f(519,1000000))
		:eccentricity(f(2,100))
		:inclination(math.deg2rad(-3.2))
		:rotation_period(f(12,10))
		:axial_tilt(fixed.deg2rad(f(0,10)))
		:metallicity(f(470,1000))
		:volcanicity(f(0,1000))
		:atmos_density(f(0,10))
		:atmos_oxidizing(f(0,10))
		:ocean_cover(f(0,1000))
		:ice_cover(f(0,1000))
		:life(f(0,10)),

	CustomSystemBody:new('Kishion', 'PLANET_TERRESTRIAL')
		:seed(-741770149)		
		:radius(f(586,10000))
		:mass(f(201,1000000))
		:temp(53)
		:semi_major_axis(f(758,1000000))
		:eccentricity(f(6,100))
		:inclination(math.deg2rad(0))
		:rotation_period(f(21,10))
		:axial_tilt(fixed.deg2rad(f(0,10)))
		:metallicity(f(410,1000))
		:volcanicity(f(0,1000))
		:atmos_density(f(0,10))
		:atmos_oxidizing(f(0,10))
		:ocean_cover(f(0,1000))
		:ice_cover(f(0,1000))
		:life(f(0,10)),

	CustomSystemBody:new('Hammon', 'PLANET_ASTEROID')
		:seed(1579382331)		
		:radius(f(329,10000))
		:mass(f(36,1000000))
		:temp(82)
		:semi_major_axis(f(1190,1000000))
		:eccentricity(f(4,100))
		:inclination(math.deg2rad(0.1))
		:rotation_period(f(41,10))
		:axial_tilt(fixed.deg2rad(f(0,10)))
		:metallicity(f(255,1000))
		:volcanicity(f(0,1000))
		:atmos_density(f(0,10))
		:atmos_oxidizing(f(0,10))
		:ocean_cover(f(0,1000))
		:ice_cover(f(0,1000))
		:life(f(0,10)),
	}

local cygnih = CustomSystemBody:new('Bethuel', 'PLANET_GAS_GIANT')
	:seed(536662838)
	:radius(f(106205,10000))
	:mass(f(1127951,10000))
	:temp(58)
	:semi_major_axis(f(7226,1000))
	:eccentricity(f(7,100))
	:inclination(math.deg2rad(0.1))
	:rotation_period(f(61,10))
	:axial_tilt(fixed.deg2rad(f(239,10)))
	:metallicity(f(301,1000))
	:volcanicity(f(228,1000))
	:atmos_density(f(0,1000))
	:atmos_oxidizing(f(0,10))
	:ocean_cover(f(0,1000))
	:ice_cover(f(0,100))
	:life(f(0,1))

local cygnih_moons = {
	CustomSystemBody:new('Galatia', 'PLANET_TERRESTRIAL')
		:seed(1309784206)		
		:radius(f(893,10000))
		:mass(f(713,1000000))
		:temp(38)
		:semi_major_axis(f(2517,1000000))
		:eccentricity(f(4,100))
		:inclination(math.deg2rad(-2.3))
		:rotation_period(f(25,10))
		:axial_tilt(fixed.deg2rad(f(0,10)))
		:metallicity(f(529,1000))
		:volcanicity(f(1,1000))
		:atmos_density(f(0,10))
		:atmos_oxidizing(f(0,10))
		:ocean_cover(f(0,1000))
		:ice_cover(f(0,1000))
		:life(f(0,10)),

	CustomSystemBody:new('Gilboa', 'PLANET_TERRESTRIAL')
		:seed(-3562122728)		
		:radius(f(1442,10000))
		:mass(f(30,1000000))
		:temp(38)
		:semi_major_axis(f(4472,1000000))
		:eccentricity(f(1,100))
		:inclination(math.deg2rad(0.6))
		:rotation_period(f(59,10))
		:axial_tilt(fixed.deg2rad(f(0,10)))
		:metallicity(f(179,1000))
		:volcanicity(f(1,1000))
		:atmos_density(f(0,10))
		:atmos_oxidizing(f(0,10))
		:ocean_cover(f(0,1000))
		:ice_cover(f(0,1000))
		:life(f(0,10)),

	CustomSystemBody:new('Medeba', 'PLANET_TERRESTRIAL')
		:seed(-4439342535)		
		:radius(f(1703,10000))
		:mass(f(49,1000000))
		:temp(38)
		:semi_major_axis(f(7827,1000000))
		:eccentricity(f(3,100))
		:inclination(math.deg2rad(0.2))
		:rotation_period(f(135,10))
		:axial_tilt(fixed.deg2rad(f(4,10)))
		:metallicity(f(501,1000))
		:volcanicity(f(2,1000))
		:atmos_density(f(0,10))
		:atmos_oxidizing(f(0,10))
		:ocean_cover(f(0,1000))
		:ice_cover(f(0,1000))
		:life(f(0,10))
	}

local cygnii = CustomSystemBody:new('Migdalel', 'PLANET_GAS_GIANT')
	:seed(-1603453505)
	:radius(f(138528,10000))
	:mass(f(2507356,10000))
	:temp(40)
	:semi_major_axis(f(15148,1000))
	:eccentricity(f(0,100))
	:inclination(math.deg2rad(0.4))
	:rotation_period(f(52,10))
	:axial_tilt(fixed.deg2rad(f(111,10)))
	:metallicity(f(70,1000))
	:volcanicity(f(895,1000))
	:atmos_density(f(0,1000))
	:atmos_oxidizing(f(0,10))
	:ocean_cover(f(0,1000))
	:ice_cover(f(0,100))
	:life(f(0,1))

local cygnii_moons = {
	CustomSystemBody:new('Ophni', 'PLANET_TERRESTRIAL')
		:seed(-1557368086)		
		:radius(f(590,10000))
		:mass(f(206,1000000))
		:temp(26)
		:semi_major_axis(f(7611,1000000))
		:eccentricity(f(28,100))
		:inclination(math.deg2rad(0))
		:rotation_period(f(86,10))
		:axial_tilt(fixed.deg2rad(f(2,10)))
		:metallicity(f(380,1000))
		:volcanicity(f(0,1000))
		:atmos_density(f(0,10))
		:atmos_oxidizing(f(0,10))
		:ocean_cover(f(0,1000))
		:ice_cover(f(0,1000))
		:life(f(0,10)),

	CustomSystemBody:new('Dagon', 'PLANET_TERRESTRIAL')
		:seed(1409314542)		
		:radius(f(1199,10000))
		:mass(f(1700,1000000))
		:temp(26)
		:semi_major_axis(f(16,1000))
		:eccentricity(f(1,100))
		:inclination(math.deg2rad(0))
		:rotation_period(f(179,10))
		:axial_tilt(fixed.deg2rad(f(9,10)))
		:metallicity(f(338,1000))
		:volcanicity(f(0,1000))
		:atmos_density(f(0,10))
		:atmos_oxidizing(f(0,10))
		:ocean_cover(f(0,1000))
		:ice_cover(f(0,1000))
		:life(f(0,10)),

	CustomSystemBody:new('Rama', 'PLANET_TERRESTRIAL')
		:seed(1069074098)		
		:radius(f(2305,10000))
		:mass(f(122,10000))
		:temp(26)
		:semi_major_axis(f(33,1000))
		:eccentricity(f(34,100))
		:inclination(math.deg2rad(0))
		:rotation_period(f(48,10))
		:axial_tilt(fixed.deg2rad(f(74,10)))
		:metallicity(f(595,1000))
		:volcanicity(f(4,1000))
		:atmos_density(f(0,10))
		:atmos_oxidizing(f(0,10))
		:ocean_cover(f(0,1000))
		:ice_cover(f(0,1000))
		:life(f(0,10)),
		
	CustomSystemBody:new('Gibeon', 'PLANET_TERRESTRIAL')
		:seed(-960358964)		
		:radius(f(1684,10000))
		:mass(f(48,10000))
		:temp(26)
		:semi_major_axis(f(72,1000))
		:eccentricity(f(4,100))
		:inclination(math.deg2rad(2.5))
		:rotation_period(f(73,10))
		:axial_tilt(fixed.deg2rad(f(116,10)))
		:metallicity(f(70,1000))
		:volcanicity(f(2,1000))
		:atmos_density(f(0,10))
		:atmos_oxidizing(f(0,10))
		:ocean_cover(f(0,1000))
		:ice_cover(f(0,1000))
		:life(f(0,10))
	}

local cygnij = CustomSystemBody:new('Neiel', 'PLANET_GAS_GIANT')
	:seed(-63969158)
	:radius(f(79701,10000))
	:mass(f(635221,10000))
	:temp(34)
	:semi_major_axis(f(20778,1000))
	:eccentricity(f(1,100))
	:inclination(math.deg2rad(-0.2))
	:rotation_period(f(59,10))
	:axial_tilt(fixed.deg2rad(f(131,10)))
	:metallicity(f(287,1000))
	:volcanicity(f(303,1000))
	:atmos_density(f(0,1000))
	:atmos_oxidizing(f(0,10))
	:ocean_cover(f(0,1000))
	:ice_cover(f(0,100))
	:life(f(0,1))	

local cygnij_moons = {
	CustomSystemBody:new('Luz', 'PLANET_ASTEROID')
		:seed(-322393611)		
		:radius(f(191,10000))
		:mass(f(7,1000000))
		:temp(34)
		:semi_major_axis(f(2353,1000000))
		:eccentricity(f(0,100))
		:inclination(math.deg2rad(0))
		:rotation_period(f(30,10))
		:axial_tilt(fixed.deg2rad(f(0,10)))
		:metallicity(f(165,1000))
		:volcanicity(f(0,1000))
		:atmos_density(f(0,10))
		:atmos_oxidizing(f(0,10))
		:ocean_cover(f(0,1000))
		:ice_cover(f(0,1000))
		:life(f(0,10)),
		
	CustomSystemBody:new('Ziz', 'PLANET_ASTEROID')
		:seed(-278856149)		
		:radius(f(332,10000))
		:mass(f(37,1000000))
		:temp(34)
		:semi_major_axis(f(3579,1000000))
		:eccentricity(f(10,100))
		:inclination(math.deg2rad(0))
		:rotation_period(f(56,10))
		:axial_tilt(fixed.deg2rad(f(0,10)))
		:metallicity(f(16,1000))
		:volcanicity(f(0,1000))
		:atmos_density(f(0,10))
		:atmos_oxidizing(f(0,10))
		:ocean_cover(f(0,1000))
		:ice_cover(f(0,1000))
		:life(f(0,10)),

	CustomSystemBody:new('Rogelim', 'PLANET_TERRESTRIAL')
		:seed(-1127973499)		
		:radius(f(773,10000))
		:mass(f(463,1000000))
		:temp(25)
		:semi_major_axis(f(9274,100000))
		:eccentricity(f(39,100))
		:inclination(math.deg2rad(0.3))
		:rotation_period(f(164,10))
		:axial_tilt(fixed.deg2rad(f(5,10)))
		:metallicity(f(74,1000))
		:volcanicity(f(0,1000))
		:atmos_density(f(0,10))
		:atmos_oxidizing(f(0,10))
		:ocean_cover(f(0,1000))
		:ice_cover(f(0,1000))
		:life(f(0,10)),

	CustomSystemBody:new('Pethor', 'PLANET_TERRESTRIAL')
		:seed(-1425411947)		
		:radius(f(818,10000))
		:mass(f(547,1000000))
		:temp(25)
		:semi_major_axis(f(17,1000))
		:eccentricity(f(1,100))
		:inclination(math.deg2rad(0.1))
		:rotation_period(f(22,10))
		:axial_tilt(fixed.deg2rad(f(157,10)))
		:metallicity(f(76,1000))
		:volcanicity(f(0,1000))
		:atmos_density(f(0,10))
		:atmos_oxidizing(f(0,10))
		:ocean_cover(f(0,1000))
		:ice_cover(f(0,1000))
		:life(f(0,10)),
		
	CustomSystemBody:new('Ararat', 'PLANET_TERRESTRIAL')
		:seed(-777065732)		
		:radius(f(990,10000))
		:mass(f(994,1000000))
		:temp(25)
		:semi_major_axis(f(25,1000))
		:eccentricity(f(2,100))
		:inclination(math.deg2rad(1.2))
		:rotation_period(f(52,10))
		:axial_tilt(fixed.deg2rad(f(49,10)))
		:metallicity(f(15,1000))
		:volcanicity(f(1,1000))
		:atmos_density(f(0,10))
		:atmos_oxidizing(f(0,10))
		:ocean_cover(f(0,1000))
		:ice_cover(f(0,1000))
		:life(f(0,10)),

	CustomSystemBody:new('Tiberias', 'PLANET_TERRESTRIAL')
		:seed(583335746)		
		:radius(f(1769,10000))
		:mass(f(55,10000))
		:temp(25)
		:semi_major_axis(f(68,1000))
		:eccentricity(f(49,100))
		:inclination(math.deg2rad(-3.3))
		:rotation_period(f(56,10))
		:axial_tilt(fixed.deg2rad(f(62,10)))
		:metallicity(f(589,1000))
		:volcanicity(f(1,1000))
		:atmos_density(f(0,10))
		:atmos_oxidizing(f(0,10))
		:ocean_cover(f(0,1000))
		:ice_cover(f(0,1000))
		:life(f(0,10))
	}
	
s:bodies(cygni, {

	cygnia,
	cygnib,
	cygnic,
		cygnic_starports,
	cygnid,
		cygnid_starports,
	cygnie,
		cygnie_starports,
	cygnif,
	cygnig,
		cygnig_moons,
	cygnih,
		cygnih_moons,
	cygnii,
		cygnii_moons,
	cygnij,
		cygnij_moons,

	})

s:add_to_sector(-1,-1,0,v(0.241,0.193,0.889))
