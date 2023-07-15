class SqueakyClean {
    static String clean(String id) {
        return id.replaceAll(" ", "_").replaceAll("\\W", "");
    }
}
