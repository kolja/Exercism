
use itertools::Itertools;
// use std::collections::HashMap;

pub fn can_construct_note(magazine: &[&str], note: &[&str]) -> bool {
    let m = magazine.into_iter().counts();
    let n = note.into_iter().counts();
    !note.into_iter().any(|word| {
        let wc_mag  = m.get(&word).cloned().unwrap_or(0);
        let wc_note = n.get(&word).cloned().unwrap_or(0);
        wc_mag < wc_note 
    })
}
