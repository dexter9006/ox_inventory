return {
-- qbx_consumables gère `sandwich`, `tosti`, `twerks_candy`, `snikkel_candy`, `coffee`, `whiskey`, `beer`, `vodka`, `joint`, `cokebaggy`, `crack_baggy`, `xtcbaggy`, `oxy`, `meth`, `lockpick` et `advancedlockpick`.

    ['testburger'] = {
        label = 'Burger test',
        weight = 220,
        degrade = 60,
        client = {
            image = 'burger_chicken.png',
            status = { hunger = 200000 },
            anim = 'eating',
            prop = 'burger',
            usetime = 2500,
            export = 'ox_inventory_examples.testburger'
        },
        server = {
            export = 'ox_inventory_examples.testburger',
            test = 'what an amazingly delicious burger, amirite?'
        },
        buttons = {
            {
                label = 'Lick it',
                action = function(slot)
                    print('You licked the burger')
                end
            },
            {
                label = 'Squeeze it',
                action = function(slot)
                    print('You squeezed the burger :(')
                end
            },
            {
                label = 'What do you call a vegan burger?',
                group = 'Hamburger Puns',
                action = function(slot)
                    print('A misteak.')
                end
            },
            {
                label = 'What do frogs like to eat with their hamburgers?',
                group = 'Hamburger Puns',
                action = function(slot)
                    print('French flies.')
                end
            },
            {
                label = 'Why were the burger and fries running?',
                group = 'Hamburger Puns',
                action = function(slot)
                    print('Because they\'re fast food.')
                end
            }
        },
        consume = 0.3
    },

    ['bandage'] = {
        label = 'Bandage',
        weight = 115
    },

    ['burger'] = {
        label = 'Burger',
        weight = 220,
        client = {
            status = { hunger = 200000 },
            anim = 'eating',
            prop = 'burger',
            usetime = 2500,
            notification = 'Tu as mangé un délicieux burger'
        }
    },

    ['sprunk'] = {
        label = 'Sprunk',
        weight = 350,
        client = {
            status = { thirst = 200000 },
            anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
            prop = { model = `prop_ld_can_01`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
            usetime = 2500,
            notification = 'Tu t\'es désaltéré avec un Sprunk'
        }
    },

    ['cola'] = {
        label = 'eCola',
        weight = 350,
        client = {
            status = { thirst = 200000 },
            anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
            prop = { model = `prop_ld_can_01`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
            usetime = 2500,
            notification = 'Tu t\'es désaltéré avec un eCola'
        }
    },

    ['parachute'] = {
        label = 'Parachute',
        weight = 8000,
        stack = false,
        client = {
            anim = { dict = 'clothingshirt', clip = 'try_shirt_positive_d' },
            usetime = 1500
        }
    },

    ['garbage'] = {
        label = 'Déchets'
    },

    ['paperbag'] = {
        label = 'Sac en papier',
        weight = 1,
        stack = false,
        close = false,
        consume = 0
    },

    ['panties'] = {
        label = 'Culotte',
        weight = 10,
        consume = 0,
        client = {
            status = { thirst = -100000, stress = -25000 },
            anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
            prop = { model = `prop_cs_panties_02`, pos = vec3(0.03, 0.0, 0.02), rot = vec3(0.0, -13.5, -1.5) },
            usetime = 2500,
        }
    },

    ['lockpick'] = {
        label = 'Crochet de serrure',
        weight = 160
    },

    ['phone'] = {
        label = 'Téléphone',
        weight = 190,
        stack = false,
        consume = 0,
        client = {
            add = function(total)
                if total > 0 then
                    pcall(function() return exports.npwd:setPhoneDisabled(false) end)
                end
            end,

            remove = function(total)
                if total < 1 then
                    pcall(function() return exports.npwd:setPhoneDisabled(true) end)
                end
            end
        }
    },

    ['mustard'] = {
        label = 'Moutarde',
        weight = 500,
        client = {
            status = { hunger = 25000, thirst = 25000 },
            anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
            prop = { model = `prop_food_mustard`, pos = vec3(0.01, 0.0, -0.07), rot = vec3(1.0, 1.0, -1.5) },
            usetime = 2500,
            notification = 'Tu as... bu de la moutarde'
        }
    },

    ['water'] = {
        label = 'Eau',
        weight = 500,
        client = {
            status = { thirst = 200000 },
            anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
            prop = { model = `prop_ld_flow_bottle`, pos = vec3(0.03, 0.03, 0.02), rot = vec3(0.0, 0.0, -1.5) },
            usetime = 2500,
            cancel = true,
            notification = 'Tu as bu une eau rafraîchissante'
        }
    },

    ['armour'] = {
        label = 'Gilet pare-balles',
        weight = 3000,
        stack = false,
        client = {
            anim = { dict = 'clothingshirt', clip = 'try_shirt_positive_d' },
            usetime = 3500
        }
    },

    ['clothing'] = {
        label = 'Vêtements',
        consume = 0
    },

    ['money'] = {
        label = 'Argent'
    },

    ['black_money'] = {
        label = 'Argent sale'
    },

    ['id_card'] = {
        label = 'Carte d\'identité'
    },

    ['driver_license'] = {
        label = 'Permis de conduire'
    },

    ['weapon_license'] = {
        label = 'Permis de port d\'arme'
    },

    ['lawyerpass'] = {
        label = 'Carte d\'avocat'
    },

    ['radio'] = {
        label = 'Radio',
        weight = 1000,
        allowArmed = true,
        consume = 0,
        client = {
            event = 'mm_radio:client:use'
        }
    },

    ['jammer'] = {
        label = 'Brouilleur radio',
        weight = 10000,
        allowArmed = true,
        client = {
            event = 'mm_radio:client:usejammer'
        }
    },

    ['radiocell'] = {
        label = 'Piles AAA',
        weight = 1000,
        stack = true,
        allowArmed = true,
        client = {
            event = 'mm_radio:client:recharge'
        }
    },

    ['advancedlockpick'] = {
        label = 'Crochet de serrure avancé',
        weight = 500
    },

    ['screwdriverset'] = {
        label = 'Set de tournevis',
        weight = 500
    },

    ['electronickit'] = {
        label = 'Kit électronique',
        weight = 500
    },

    ['cleaningkit'] = {
        label = 'Kit de nettoyage',
        weight = 500
    },

    ['repairkit'] = {
        label = 'Kit de réparation',
        weight = 2500
    },

    ['advancedrepairkit'] = {
        label = 'Kit de réparation avancé',
        weight = 4000
    },

    ['diamond'] = {
        label = 'Diamant',
        weight = 1500
    },

    ['diamond_ring'] = {
        label = 'Bague en diamant',
        weight = 1500
    },

    ['rolex'] = {
        label = 'Montre en or',
        weight = 1500
    },

    ['goldbar'] = {
        label = 'Lingot d\'or',
        weight = 1500
    },

    ['goldchain'] = {
        label = 'Chaîne en or',
        weight = 1500
    },

    ['10kgoldchain'] = {
        label = 'Chaîne en or 10 carats',
        weight = 1500
    },

    ['crack_baggy'] = {
        label = 'Sachet de crack',
        weight = 100
    },

    ['cokebaggy'] = {
        label = 'Sachet de cocaïne',
        weight = 100
    },

    ['coke_brick'] = {
        label = 'Brique de cocaïne',
        weight = 2000
    },

    ['coke_small_brick'] = {
        label = 'Paquet de cocaïne',
        weight = 1000
    },

    ['xtcbaggy'] = {
        label = 'Sachet d\'ecstasy',
        weight = 100
    },

    ['meth'] = {
        label = 'Méthamphétamine',
        weight = 100
    },

    ['oxy'] = {
        label = 'Oxycodone',
        weight = 100
    },

    ['weed_ak47'] = {
        label = 'AK47 2g',
        weight = 200,
        client = {
            image = 'weed_baggy.png'
        }
    },

    ['weed_ak47_seed'] = {
        label = 'Graine d\'AK47',
        weight = 1
    },

    ['weed_skunk'] = {
        label = 'Skunk 2g',
        weight = 200,
        client = {
            image = 'weed_baggy.png'
        }
    },

    ['weed_skunk_seed'] = {
        label = 'Graine de Skunk',
        weight = 1
    },

    ['weed_amnesia'] = {
        label = 'Amnesia 2g',
        weight = 200,
        client = {
            image = 'weed_baggy.png'
        }
    },

    ['weed_amnesia_seed'] = {
        label = 'Graine d\'Amnesia',
        weight = 1
    },

    ['weed_og-kush'] = {
        label = 'OG Kush 2g',
        weight = 200,
        client = {
            image = 'weed_baggy.png'
        }
    },

    ['weed_og-kush_seed'] = {
        label = 'Graine d\'OG Kush',
        weight = 1
    },

    ['weed_white-widow'] = {
        label = 'White Widow 2g',
        weight = 200,
        client = {
            image = 'weed_baggy.png'
        }
    },

    ['weed_white-widow_seed'] = {
        label = 'Graine de White Widow',
        weight = 1
    },

    ['weed_purple-haze'] = {
        label = 'Purple Haze 2g',
        weight = 200,
        client = {
            image = 'weed_baggy.png'
        }
    },

    ['weed_purple-haze_seed'] = {
        label = 'Graine de Purple Haze',
        weight = 1
    },

    ['weed_brick'] = {
        label = 'Brique de cannabis',
        weight = 2000
    },

    ['weed_nutrition'] = {
        label = 'Engrais pour plantes',
        weight = 2000
    },

    ['joint'] = {
        label = 'Joint de Mauvaise Qualité',
        weight = 200
    },

    ['rolling_paper'] = {
        label = 'Feuilles à rouler',
        weight = 0
    },

    ['empty_weed_bag'] = {
        label = 'Sachet de cannabis vide',
        weight = 0
    },

    ['firstaid'] = {
        label = 'Trousse de premiers secours',
        weight = 2500
    },

    ['ifaks'] = {
        label = 'Trousse de secours individuelle',
        weight = 2500
    },

    ['painkillers'] = {
        label = 'Antidouleurs',
        weight = 400
    },

    ['firework1'] = {
        label = '2Brothers',
        weight = 1000
    },

    ['firework2'] = {
        label = 'Poppelers',
        weight = 1000
    },

    ['firework3'] = {
        label = 'WipeOut',
        weight = 1000
    },

    ['firework4'] = {
        label = 'Weeping Willow',
        weight = 1000
    },

    ['steel'] = {
        label = 'Acier',
        weight = 100
    },

    ['rubber'] = {
        label = 'Caoutchouc',
        weight = 100
    },

    ['metalscrap'] = {
        label = 'Ferraille',
        weight = 100
    },

    ['iron'] = {
        label = 'Fer',
        weight = 100
    },

    ['copper'] = {
        label = 'Cuivre',
        weight = 100
    },

    ['aluminum'] = {
        label = 'Aluminium',
        weight = 100
    },

    ['plastic'] = {
        label = 'Plastique',
        weight = 100
    },

    ['glass'] = {
        label = 'Verre',
        weight = 100
    },

    ['gatecrack'] = {
        label = 'Gatecrack',
        weight = 1000
    },

    ['cryptostick'] = {
        label = 'Clé crypto',
        weight = 100
    },

    ['trojan_usb'] = {
        label = 'Clé USB Trojan',
        weight = 100
    },

    ['toaster'] = {
        label = 'Grille-pain',
        weight = 5000
    },

    ['small_tv'] = {
        label = 'Petite télé',
        weight = 100
    },

    ['security_card_01'] = {
        label = 'Carte de sécurité A',
        weight = 100
    },

    ['security_card_02'] = {
        label = 'Carte de sécurité B',
        weight = 100
    },

    ['drill'] = {
        label = 'Perceuse',
        weight = 5000
    },

    ['thermite'] = {
        label = 'Thermite',
        weight = 1000
    },

    ['diving_gear'] = {
        label = 'Équipement de plongée',
        weight = 30000
    },

    ['diving_fill'] = {
        label = 'Bouteille de plongée',
        weight = 3000
    },

    ['antipatharia_coral'] = {
        label = 'Antipatharia',
        weight = 1000
    },

    ['dendrogyra_coral'] = {
        label = 'Dendrogyra',
        weight = 1000
    },

    ['jerry_can'] = {
        label = 'Jerrican',
        weight = 3000
    },

    ['nitrous'] = {
        label = 'Nitro',
        weight = 1000
    },

    ['wine'] = {
        label = 'Vin',
        weight = 500
    },

    ['grape'] = {
        label = 'Raisin',
        weight = 10
    },

    ['grapejuice'] = {
        label = 'Jus de raisin',
        weight = 200
    },

    ['coffee'] = {
        label = 'Café',
        weight = 200
    },

    ['vodka'] = {
        label = 'Vodka',
        weight = 500
    },

    ['whiskey'] = {
        label = 'Whisky',
        weight = 200
    },

    ['beer'] = {
        label = 'Bière',
        weight = 200
    },

    ['sandwich'] = {
        label = 'Sandwich',
        weight = 200
    },

    ['tosti'] = {
        label = 'Croque-monsieur',
        weight = 200
    },

    ['twerks_candy'] = {
        label = 'Twerks',
        weight = 100
    },

    ['snikkel_candy'] = {
        label = 'Snikkel',
        weight = 100
    },

    ['walking_stick'] = {
        label = 'Canne',
        weight = 1000
    },

    ['lighter'] = {
        label = 'Briquet',
        weight = 200
    },

    ['binoculars'] = {
        label = 'Jumelles',
        weight = 800
    },

    ['stickynote'] = {
        label = 'Post-it',
        weight = 0
    },

    ['empty_evidence_bag'] = {
        label = 'Sachet de preuve vide',
        weight = 200
    },

    ['filled_evidence_bag'] = {
        label = 'Sachet de preuve rempli',
        weight = 200
    },

    ['harness'] = {
        label = 'Harnais',
        weight = 200
    },

    ['handcuffs'] = {
        label = 'Menottes',
        weight = 200
    },

    -------------------------------------------------------------- Vitto additions

    -- devcore_smokev3

    ['cuban_cigar'] = {
        label = 'Cigare cubain',
        weight = 20
    },

    ['davidoff_cigar'] = {
        label = 'Cigare Davidoff',
        weight = 20
    },

    ['redwcig'] = {
        label = 'Cigarette Redwood',
        weight = 5,
        client = {
            image = 'cigarette.png',
        }
    },

    ['debcig'] = {
        label = 'Cigarette Debonaire',
        weight = 5,
        client = {
            image = 'cigarette.png',
        }
    },

    ['yukcig'] = {
        label = 'Cigarette Yukon',
        weight = 5,
        client = {
            image = 'cigarette.png',
        }
    },

    ['redwood_pack'] = {
        label = 'Paquet Redwood',
        weight = 50
    },

    ['debonaire_pack'] = {
        label = 'Paquet Debonaire',
        weight = 50
    },

    ['yukon_pack'] = {
        label = 'Paquet Yukon',
        weight = 50,
        client = {
            image = 'redwood_pack.png',
        }
    },

    ['joint_artisanal'] = {
        label = 'Joint artisanal',
        weight = 5,
        client = {
            image = 'joint.png',
        }
    },

    ['vape'] = {
        label = 'Vape',
        weight = 150,
        stack = false
    },

    ['liquid'] = {
        label = 'E-Liquide',
        weight = 30
    },

    ['bong'] = {
        label = 'Bong',
        weight = 500,
        stack = false
    },

}
