// This stub file contains items that aren't used yet; feel free to remove this module attribute
// to enable stricter warnings.
#![allow(unused)]

#[derive(Clone, Copy)]
pub struct Player {
    pub health: u32,
    pub mana: Option<u32>,
    pub level: u32,
}

impl Player {
    pub fn revive(&self) -> Option<Player> {
        let (Player {health, mana, level}) = (self);
        match self {
            Player {health: 1.., mana: _, level: _} => None,
            Player {health: 0, mana: Some(_), level: 10..} => Some(Player {health: 100, mana: Some(100), level: *level}),
            Player {health: 0, mana: _, level: _} => Some(Player {health: 100, mana: None, level: *level}),
        }
    }

    pub fn cast_spell(&mut self, mana_cost: u32) -> u32 {
        let (Player {health, mana, level}) = (self);
        match mana {
            None => {
                self.health = if *health > mana_cost {*health - mana_cost} else {0};
                0
            },
            Some(mana) => {
                if *mana > mana_cost {
                    self.mana = Some(*mana - mana_cost);
                    mana_cost * 2
                } else {
                    0
                }
            }   
        }
    }
}
