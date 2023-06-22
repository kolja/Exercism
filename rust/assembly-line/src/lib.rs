// This stub file contains items that aren't used yet; feel free to remove this module attribute
// to enable stricter warnings.
#![allow(unused)]

const SUCC_RATE: [f64;11] = [0.0, 1.0, 1.0, 1.0, 1.0, 0.9, 0.9, 0.9, 0.9, 0.77, 0.77];
const PROD_RATE: f64 = 221.0;

pub fn production_rate_per_hour(speed: u8) -> f64 {
    (speed as f64) * PROD_RATE * SUCC_RATE[speed as usize]
}

pub fn working_items_per_minute(speed: u8) -> u32 {
    let minutes: f64 = 60.0; 
    (production_rate_per_hour(speed) / minutes) as u32
}
