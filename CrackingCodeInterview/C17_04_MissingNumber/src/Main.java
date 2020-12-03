import java.util.ArrayList;

public class Main {

    public static void main(String[] args) {
        MissingNumber missingNumber = new MissingNumber();
        ArrayList<BitInteger> arrayList = new ArrayList<>();
        arrayList.add(new BitInteger("0000"));
        arrayList.add(new BitInteger("0001"));
        arrayList.add(new BitInteger("0010"));
        arrayList.add(new BitInteger("0011"));
        arrayList.add(new BitInteger("0100"));
//        arrayList.add(new BitInteger("0101"));
        arrayList.add(new BitInteger("0110"));
        arrayList.add(new BitInteger("0111"));
        arrayList.add(new BitInteger("1000"));

        System.out.println(missingNumber.find(arrayList));
    }
}
