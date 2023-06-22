use std::cmp::{Ordering};

#[derive(Debug, PartialEq, Eq)]
pub enum Comparison {
    Equal,
    Sublist,
    Superlist,
    Unequal,
}

pub fn sublist<T: PartialEq>(slice1: &[T], slice2: &[T]) -> Comparison {

    match (slice1.is_empty(), slice2.is_empty()) {
        (true, true) => return Comparison::Equal,
        (true, false) => return Comparison::Sublist,
        (false, true) => return Comparison::Superlist,
        (false, false) => ()
    }

    match slice1.len().cmp(&slice2.len()) {
        Ordering::Less => {
            if find(slice1, slice2) {
                Comparison::Sublist
            } else {
                Comparison::Unequal
            }
        },
        Ordering::Greater => {
            if find(slice2, slice1) {
                Comparison::Superlist
            } else {
                Comparison::Unequal
            }
        },
        Ordering::Equal => {
            if slice1 == slice2 {
                Comparison::Equal
            } else {
                Comparison::Unequal
            }
        }
    }
}

fn find<T: PartialEq>(sublist: &[T], list: &[T]) -> bool {
    for win in list.windows(sublist.len()) {
        if sublist == win {
            return true
        }
    }
    return false
}
