public class RecursiveMultiply {
    int multiply(int x, int y) {
        if (x < 2) {
            return y;
        }

        return y + multiply(x - 1, y);
    }
}
