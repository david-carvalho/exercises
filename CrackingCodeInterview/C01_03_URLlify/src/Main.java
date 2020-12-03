public class Main {

    public static void main(String[] args) {
        URLify urLify = new URLify();
        char[] string = "Mr John Smith    ".toCharArray();
        urLify.urlify(string, 13);
        System.out.println(string);
    }
}
