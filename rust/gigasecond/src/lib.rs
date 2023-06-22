
use std::{time::Duration, ops::Add, sync::LockResult, io::read_to_string};
use time::PrimitiveDateTime as DateTime;

const GIGASECOND : Duration = Duration::from_secs(10u64.pow(9));

pub fn after(start: DateTime) -> DateTime {
    start.add(GIGASECOND)
}


