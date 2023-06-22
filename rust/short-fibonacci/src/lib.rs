use std::vec;

pub fn create_empty() -> Vec<u8> {
    vec![0u8;0]
}

pub fn create_buffer(count: usize) -> Vec<u8> {
    vec![0; count]
}

pub fn fibonacci() -> Vec<u8> {
    Vec::from([1,1,2,3,5])
}
