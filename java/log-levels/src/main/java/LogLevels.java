import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class LogLevels {

    static final Pattern PATTERN = Pattern.compile("\\[(INFO|WARNING|ERROR)\\]:\\s*(.+)");

    static String[] match( String input ) {
        String[] result = new String[2];
        Matcher matcher = PATTERN.matcher(input);
        if (matcher.find()) {
            result[0] = matcher.group(1).toLowerCase();
            result[1] = matcher.group(2).trim();
        }
        return result;
    }

    public static String message(String logLine) {
        return match(logLine)[1];
    }

    public static String logLevel(String logLine) {
        return match(logLine)[0];
    }

    public static String reformat(String logLine) {
        String[] result = match(logLine);
        return String.format("%s (%s)", result[1], result[0]);
    }
}
