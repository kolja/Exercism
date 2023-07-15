class ReverseString {

    String reverse(String input) {
        return (input == "") ? "" : reverse(input.substring(1)) + input.charAt(0);
    }

}
