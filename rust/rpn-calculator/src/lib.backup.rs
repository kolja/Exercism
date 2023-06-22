
pub enum CalculatorInput {
    Add,
    Subtract,
    Multiply,
    Divide,
    Value(i32),
}
use std::collections::LinkedList;
use crate::CalculatorInput::Value;

pub fn evaluate(inputs: &[CalculatorInput]) -> Option<i32> {

    let mut stack = LinkedList::new();
     
    for item in inputs {
        match item {
            Value(val) => {
                stack.push_front(*val);
            },
            operation => { 
               if  !execute(operation, &mut stack) {
                   return None;
               }
            },
        };
    }

    if stack.len() == 1 {
        stack.pop_front()
    } else {
        None
    }
    
}

fn execute(operation: &CalculatorInput, stack: &mut LinkedList<i32>) -> bool {

    let y = stack.pop_front();
    let x = stack.pop_front();

    match (x, y) {
        (Some(x), Some(y)) => {
            match operation {
                CalculatorInput::Add => {
                    stack.push_front(x + y);
                    true
                },
                CalculatorInput::Subtract => {
                    stack.push_front(x - y);
                    true
                },
                CalculatorInput::Multiply => {
                    stack.push_front(x * y);
                    true
                },
                CalculatorInput::Divide => {
                    stack.push_front(x / y);
                    true
                },
                _ => false

            }
        }
        _ => false
    }
   
}
