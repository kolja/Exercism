use std::collections::HashSet;
use itertools::sorted;

pub fn anagrams_for<'a>(word: &str, possible_anagrams: &[&str]) -> HashSet<&'a str> {
    possible_anagrams
        .iter()
        .copied()
        .filter(|w| is_anagram(word, w))
        .collect()
}

fn is_anagram(a: &str, b: &str) -> bool {

    sorted(a.chars()).eq(sorted(b.chars()))
}
