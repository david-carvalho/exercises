public class BitInsertor {

    public int insert(int n, int m, int i, int j) {
        for (int z = i; z < j; z++) {
            n = n & ~(1 << z);
        }

        for (int z = 0; z < i; z++) {
            m = m * 2;
        }

        System.out.println(Integer.toBinaryString(m));

        n = n | m;

        return n;
    }
}
