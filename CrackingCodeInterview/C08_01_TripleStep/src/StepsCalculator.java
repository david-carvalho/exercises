public class StepsCalculator {
    public int calculatePossibilities(int steps) {
        if (steps == 0) {
            return 0;
        }

        if (steps == 1) {
            return 1;
        }

        if (steps == 2) {
            return calculatePossibilities(steps - 1) + 1;
        }

        if (steps == 3) {
            return calculatePossibilities(steps - 2) +
                    calculatePossibilities(steps - 1) +
                    1;
        }

        return calculatePossibilities(steps - 3) +
                calculatePossibilities(steps - 2) +
                calculatePossibilities(steps - 1);

    }
}
