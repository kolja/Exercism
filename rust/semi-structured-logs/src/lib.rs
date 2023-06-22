use strum_macros::AsRefStr;

#[derive(Clone, PartialEq, Eq, Debug, AsRefStr)]
pub enum LogLevel { Info, Warning, Error, Debug }

pub fn log(level: LogLevel, message: &str) -> String {
    format!("[{}]: {}", level.as_ref().to_uppercase(), message)
}
pub fn info(message: &str) -> String {
    log(LogLevel::Info, message)
}
pub fn warn(message: &str) -> String {
    log(LogLevel::Warning, message)
}
pub fn error(message: &str) -> String {
    log(LogLevel::Error, message)
}
