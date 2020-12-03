public class Main {

    public static void main(String[] args) {
        OneAway oneAway = new OneAway();

        System.out.println(oneAway.isOneAway("pale", "ple"));
        System.out.println(oneAway.isOneAway("pales", "pale"));
        System.out.println(oneAway.isOneAway("pale", "bale"));
        System.out.println(oneAway.isOneAway("pale", "bake"));
        System.out.println(oneAway.isOneAway("aaapale", "aaapale"));
    }
}
