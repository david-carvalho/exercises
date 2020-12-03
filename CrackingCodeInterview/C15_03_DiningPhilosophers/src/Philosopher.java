import java.util.concurrent.CountDownLatch;

public class Philosopher implements Runnable {
    private int bites = 10;
    private Chopstick left, right;
    private int value;
    private CountDownLatch latch;

    public Philosopher(Chopstick left, Chopstick right, int value, CountDownLatch latch) {
        this.left = left;
        this.right = right;
        this.value = value;
        this.latch = latch;
    }

    public void eat() {
        if (pickup()) {
            chew();
            putDown();
        }
    }

    private boolean pickup() {
        if (!left.pickup()) {
            return false;
        }
        if (!right.pickup()) {
            return false;
        }
        return true;
    }

    private void chew() {

    }

    private void putDown() {
        right.putDown();
        left.putDown();
    }

    public void run() {
        for (int i = 1; i < bites + 1; i++) {
            eat();
            System.out.println("Philosopher " + value + " has taken bite " + i);
        }

        latch.countDown();
    }
}
