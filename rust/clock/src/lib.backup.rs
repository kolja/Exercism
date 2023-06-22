use std::fmt;

#[derive(Debug)]
pub struct Clock {
    total: u16,
    hours: u8,
    minutes: u8
}

impl fmt::Display for Clock {
    fn fmt(&self, f: &mut fmt::Formatter) -> fmt::Result {
        write!(f, "{:02}:{:02}", self.hours, self.minutes)
    }
}

impl PartialEq for Clock {
    fn eq(&self, other: &Self) -> bool {
        self.total == other.total
    }
}

impl Eq for Clock {}

impl Clock {

    pub fn new(hours: i32, minutes: i32) -> Self {

        let total = Clock::normalize(hours * 60 + minutes);

        let hours = total / 60;
        let minutes = total - hours * 60;

        Clock { total: (total as u16), 
                hours: (hours as u8), 
                minutes: (minutes as u8) }
    }

    fn normalize(minutes: i32) -> i32 {

        const MIN_PER_DAY: i32 = 24 * 60;

        if minutes < 0 {
            MIN_PER_DAY - minutes.abs() % MIN_PER_DAY
        } else {
            minutes % MIN_PER_DAY  
        }
    }

    pub fn add_minutes(&self, minutes: i32) -> Self {
        Clock::new(self.hours as i32, self.minutes as i32 + minutes)
    }

}

