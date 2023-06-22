use std::collections::HashSet;
use itertools::sorted;

pub fn anagrams_for<'a>(word: &str, possible_anagrams: &[&'a str]) -> HashSet<&'a str> {
    let a = word.to_uppercase();
    possible_anagrams
        .iter()
        .copied()
        .filter(|b| is_anagram(&a, &b.to_uppercase()))
        .collect()
}

fn is_anagram(a: &str, b: &str) -> bool {
    a != b && sorted(a.chars()).eq(sorted(b.chars()))
}
