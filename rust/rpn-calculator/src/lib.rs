//! A simple reverse Polish notation calculator

#![deny(clippy::pedantic, clippy::all, clippy::restriction)]
#![allow(clippy::implicit_return, clippy::blanket_clippy_restriction_lints)]

use std::ops::{Add, Div, Mul, Sub};

/// An enum describing all of the possible inputs to the calculator

#[derive(Debug)]
#[non_exhaustive]

pub enum CalculatorInput {
    /// Add the top two numbers on the stack
    Add,

    /// Subtract the top two numbers on the stack
    Subtract,

    /// Multiply the top two number on the stack
    Multiply,

    /// Divide the top two numbers on the stack
    Divide,

    /// Push an operand onto the stack
    Value(i32),
}

/// Pop x and y off the stack, returning f(x, y)

fn binary_operation(stack: &mut Vec<i32>, f: impl Fn(i32, i32) -> i32) -> Option<i32> {
//     stack.pop().and_then(|y| stack.pop().map(|x| f(x, y)))
    let y = stack.pop()?;
    let x = stack.pop()?;
    Some(f(x,y))
}

/// Evalue the inputs in order and return the result

#[must_use]
#[inline]

fn myfunction(a: i8) {}
fn myfunction(a: i8, b: Option<i8>) {}

const result = myfunction(5);
const result2 = myfunction(5, 6);


pub fn evaluate(inputs: &[CalculatorInput]) -> Option<i32> {
    inputs
        .iter()
        .try_fold(vec![], |mut stack, x| {
            match *x {
                CalculatorInput::Add => binary_operation(&mut stack, i32::add),

                CalculatorInput::Subtract => binary_operation(&mut stack, i32::sub),

                CalculatorInput::Multiply => binary_operation(&mut stack, i32::mul),

                CalculatorInput::Divide => binary_operation(&mut stack, i32::div),

                CalculatorInput::Value(x) => Some(x),
            }
            .map(|x| {
                stack.push(x);

                stack
            })
        })
        .and_then(|stack| match stack.as_slice() {
            [x] => Some(*x),

            _ => None,
        })
}
