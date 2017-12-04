require "shallowcopy"

lv1 = {
    spikes = {1000, 2000, 3000, 4000, 4040, 5000, 5100, 6000, 6050, 6100, 6150, 6200, 6250},
    boosts = {2500, 3500, 5500, 5600},
    required_boosts = 0,
    text = {
        {
            location = 1000,
            text = "jump over the spikes (space)"
        },
        {
            location = 2500,
            text = "feeling a bit slow? try BOOSTS(tm)!"
        },
        {
            location = 6000,
            text = "boosts are fun, right? well..."
        }
    },
    finish = 7000
}

lv2 = {
    spikes = {1000, 2000, 2150, 2300, 2450, 2600, 4000, 4150, 4300, 4450, 4600, 5500, 5540, 5580, 5620,
              6000, 6040, 6080, 6130, 6280, 6320, 6360, 6400},
    boosts = {3100, 5200, 5260},
    required_boosts = 0,
    text = {
        {
            location = 400,
            text = "level 2."
        },
        {
            location = 2100,
            text = "here, try this."
        },
        {
            location = 3100,
            text = "that wasn't so hard... now try it with a boost"
        },
        {
            location = 4450,
            text = "yeah, that doesn't really work... jump over the boost next time, you don't need it"
        },
        {
            location = 5250,
            text = "you did it! you might need a boost for this next one though..."
        },
        {
            location = 6500,
            text = "remember, more boosts is not always better..."
        },
    },
    finish = 7000
}

lv3 = {
    spikes = {1000, 2000, 2150, 2300, 2450, 2600, 3200, 3300, 3400, 3500, 3600, 3700, 3800, 3900, 4000},
    boosts = {1400, 1450, 1500, 1550, 1600, 2700, 2750, 2800, 2850},
    required_boosts = 5,
    text = {
        {
            location = 400,
            text = "level 3."
        },
        {
            location = 1200,
            text = "we now have a BOOST COUNTER! it will count your boosts. you need at least 5 boosts to win."
        },
        {
            location = 2700,
            text = "you can take even more if you like!"
        },
        {
            location = 3200,
            text = "aaaaaaaaaaaaaa"
        },
        {
            location = 3700,
            text = "aaaaaaaaaaaaaaaaaaaaaaaa"
        },
        {
            location = 6500,
            text = "that was fun"
        },
    },
    finish = 7000
}

lv4 = {
    spikes = {1000, 2000, 2150, 2300, 2450, 2600, 4000, 4150, 4300, 4450, 4600, 5500, 5540, 5580, 5620,
              6000, 6040, 6080, 6130, 6280, 6320, 6360, 6400},
    boosts = {3100, 5160, 5260, 6700},
    required_boosts = 2,
    text = {
        {
            location = 400,
            text = "level 4."
        },
        {
            location = 2100,
            text = "it's like level 2, except with a boost minimum!"
        },
        {
            location = 3100,
            text = "remember how you beat level 2 with only one boost?"
        },
        {
            location = 4450,
            text = "you know, I lied. it is possible to do this with that boost."
        },
        {
            location = 5250,
            text = "you did it! what about this next one, you can't do that with two boosts, right?\nand you need two boosts to win..."
        },
        {
            location = 6700,
            text = "haha here's your second boost. prankd"
        },
    },
    finish = 7000
}

lv5 = {
    spikes = {1000, 2000, 2150, 2300, 2450, 2600, 2750, 2900, 3050, 3200, 3300, 3400, 3500, 3600, 3700, 3800, 3900, 4000},
    boosts = {1400, 1450, 1500, 1550, 1600},
    required_boosts = 0,
    text = {
        {
            location = 400,
            text = "level 5."
        },
        {
            location = 1200,
            text = "try and get as few of these boosts as possible. more will only make it harder."
        },
        {
            location = 2700,
            text = "good luck..."
        },
        {
            location = 3700,
            text = "isn't it funny how your opinion's changed?\nyou used to think boosts were super cool, but now you wish you had none..."
        },
        {
            location = 4500,
            text = "this level's too hard even for me. I only beat it once. good job!"
        },
    },
    finish = 5000
}

lv6 = {
    spikes = {1000, 2000, 3000, 4000, 5000, 6000, 7000, 8000, 9000, 10100},
    boosts = {1500, 2500, 3500, 4500, 5500, 6500, 7500, 8700, 9900, 12000},
    required_boosts = 10,
    text = {
        {
            location = 400,
            text = "level 6."
        },
        {
            location = 1200,
            text = "if you're waiting for me to introduce a magical new powerup that un-boosts you,\ndon't get your hopes up. it's not happening."
        },
        {
            location = 2700,
            text = "btw there are exactly 10 boosts on this level. the minimum is 10."
        },
        {
            location = 3700,
            text = "so you can't skip any boosts. you have to get every one."
        },
        {
            location = 4500,
            text = "stressful, isn't it?"
        },
        {
            location = 5500,
            text = "keep going!"
        },
        {
            location = 6500,
            text = "the font on this game is lato light, btw. it's really nice."
        },
        {
            location = 7500,
            text = "is \"overboosted\" a word? can I add it to the dictionary?"
        },
        {
            location = 8500,
            text = "this is hard, but it's also pretty fun, don't you think?"
        },
        {
            location = 9500,
            text = "oh, how could I have forgotten? the secret cheat code is k9xHG0s2d25"
        }
    },
    finish = 13000
}

lv7 = {
    spikes = {1000, 2000, 3000, 4000, 5000, 6000, 7000, 8000, 9000, 10000,
              10400, 10450, 10500, 10550, 10600, 10650, 10700, 10750, 10800},
    boosts = {10100, 10150, 10200, 10250, 10300, 10350},
    required_boosts = 0,
    text = {
        {
            location = 200,
            text = "level 7."
        },
        {
            location = 1000,
            text = "why do we always start with this same spike?"
        },
        {
            location = 2000,
            text = "i don't know. i guess you could call it an icon of this game"
        },
        {
            location = 3000,
            text = "this is pretty nice, isn't it? no boosts for a change..."
        },
        {
            location = 4000,
            text = "on the other hand, these spikes are looking a little small for your big clunky square body"
        },
        {
            location = 5000,
            text = "and you're getting a bit bored"
        },
        {
            location = 6000,
            text = "you've been here a while"
        },
        {
            location = 7000,
            text = "travelling at the same speed..."
        },
        {
            location = 8000,
            text = "jumping over the same spikes..."
        },
        {
            location = 9000,
            text = "over, and over, and over..."
        }
    },
    finish = 13000
}

lv_end = {
    spikes = {200},
    boosts = {300},
    required_boosts = 0,
    text = {
        {
            location = 200,
            text = "to be continued..."
        }
    },
    finish = 13000
}

levels = {lv1, lv2, lv3, lv4, lv5, lv6, lv7, lv_end}
lv_id = 0

for i, level in ipairs(levels) do
    level.orig_boosts = deepcopy(level.boosts)
end