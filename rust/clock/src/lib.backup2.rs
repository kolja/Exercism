use std::fmt;

#[derive(Debug)]
pub struct Clock {
    time: u16
}

impl fmt::Display for Clock {
    fn fmt(&self, f: &mut fmt::Formatter) -> fmt::Result {
        write!(f, "{:02}:{:02}", self.hours(), self.minutes())
    }
}

impl PartialEq for Clock {
    fn eq(&self, other: &Self) -> bool {
        self.time == other.time
    }
}

impl Eq for Clock {}

impl Clock {

    pub fn new(hours: i32, minutes: i32) -> Self {
        Clock {
            time: Clock::normalize(hours * 60 + minutes)
        }
    }

    fn hours(&self) -> u8 {
        (self.time / 60) as u8
    }

    fn minutes(&self) -> u8 {
        let h: i32 = self.hours() as i32;
        let t: i32 = self.time as i32;
        (t - (h * 60)) as u8
    }

    fn normalize(minutes: i32) -> u16 {

        const MIN_PER_DAY: i32 = 24 * 60;

        (if minutes < 0 {
            MIN_PER_DAY - minutes.abs() % MIN_PER_DAY
        } else {
            minutes % MIN_PER_DAY 
        }) as u16
    }

    pub fn add_minutes(&self, minutes: i32) -> Self {
        let h: i32 = self.hours() as i32;
        let m: i32 = self.minutes() as i32;
        Clock::new(h, m + minutes)
    }

}

