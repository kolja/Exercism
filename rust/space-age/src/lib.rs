
#[derive(Debug)]
pub struct Duration {
    years: f64
}

pub const EARTH_SEC:u64 = 31557600;

impl From<u64> for Duration {
    fn from(s: u64) -> Self {
        Duration { years: s as f64 / EARTH_SEC as f64 }
    }
}

pub trait Planet {
    fn years_during(d: &Duration) -> f64;
}

macro_rules! Planet {
    ($name:ident, $year:expr) => {
        pub struct $name;
        impl Planet for $name {
            fn years_during(d: &Duration) -> f64 {
                d.years / $year
            }
        }
    }
}

Planet!(Mercury, 0.2408467);
Planet!(Venus, 0.61519726);
Planet!(Earth, 1.0);
Planet!(Mars, 1.8808158);
Planet!(Jupiter, 11.862615);
Planet!(Saturn, 29.447498);
Planet!(Uranus, 84.016846);
Planet!(Neptune, 164.79132);
