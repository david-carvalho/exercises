public class TwoCounter {
    int countTwos(int n) {
        int multiplier = calculateMultiplier(n);
        int multiplierIterations = 0;
        int counter = 0;
        int number = n;
        while (multiplier > 1) {
            int full = number / multiplier;
            int rest = number % multiplier;

            if (full == 2) {
                counter += rest;
            } else if (full > 2) {
                counter += multiplier > 10 ? 100 : 10;
            }
            if (multiplier > 10) {
                multiplierIterations = multiplierIterations * 10 + full;
            }
            multiplier = multiplier / 10;
            number = rest;
        }

        counter += multiplierIterations * 13;

        int lastNumberMultiplier = 100;//calculateMultiplier(n) / 10;
        int lastNumber = n % lastNumberMultiplier;
        if (lastNumber > 19) {
            counter += 2;
        }

        if (lastNumber > 11) {
            counter++;
        }


        if (lastNumber > 1) {
            counter++;
        }

        return counter;

    }

    private int calculateMultiplier(int n) {
        int counter = 1;
        while (n > 10) {
            n = n / 10;
            counter = counter * 10;
        }
        return counter;
    }
}
