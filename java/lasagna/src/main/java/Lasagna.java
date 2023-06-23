public class Lasagna {

    static final int EXPECTED = 40;
    static final int TIME_PER_LAYER = 2;

    public int expectedMinutesInOven() {
        return EXPECTED;
    }

    public int remainingMinutesInOven(int inOven) {
        return EXPECTED - inOven;
    }

    public int preparationTimeInMinutes(int layers) {
        return layers * TIME_PER_LAYER;
    }

    public int totalTimeInMinutes(int layers, int inOven) {
        return preparationTimeInMinutes(layers) + inOven;
    }
}
