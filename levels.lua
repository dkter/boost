require "shallowcopy"

lv1 = {
    spikes = {1000, 2000, 3000, 4000, 4040, 5000, 5100, 6000, 6050, 6100, 6150, 6200, 6250},
    boosts = {2500, 3500, 5500, 5600},
    required_boosts = 0,
    text = {
        {
            location = 1000,
            text = "jump over the spikes"
        },
        {
            location = 2500,
            text = "feeling a bit slow? try BOOSTS(tm)!"
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

levels = {lv1, lv2, lv3, lv4}
lv_id = 0

for i, level in ipairs(levels) do
    level.orig_boosts = deepcopy(level.boosts)
end