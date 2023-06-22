use std::fmt;

#[derive(Debug, Eq, PartialEq)]
pub struct Clock { 
    time: i32,
    hours: i32,
    minutes: i32
}

impl fmt::Display for Clock {
    fn fmt(&self, f: &mut fmt::Formatter) -> fmt::Result {
        write!(f, "{:02}:{:02}", self.hours, self.minutes)
    }
}

const MIN_PER_DAY: i32 = 24 * 60;

impl Clock {

    pub fn new(hours: i32, minutes: i32) -> Self {
        let time = (hours * 60 + minutes).rem_euclid(MIN_PER_DAY);
        let hours = time / 60;
        let minutes = time - hours * 60;
        Clock { time, hours, minutes }
    }

    pub fn add_minutes(&self, minutes: i32) -> Self {
        Clock::new(self.hours, self.minutes + minutes)
    }
}

