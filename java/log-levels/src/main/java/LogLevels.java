public class LogLevels {

    static final String PATTERN = "\\[([INFO|WARNING|ERROR])\\]:\s(.+)\s$";

    public static String message(String logLine) {
        return logLine.replaceAll( PATTERN, "$2" );
    }

    public static String logLevel(String logLine) {
        return logLine.replaceAll( PATTERN, "$1" );
    }

    public static String reformat(String logLine) {
        return logLine.replaceAll( PATTERN, "($2) $1" );
    }
}
