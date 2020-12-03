import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public class Main {

    public static void main(String[] args) {
        Chopstick chopstick1 = new Chopstick();
        Chopstick chopstick2 = new Chopstick();
        Chopstick chopstick3 = new Chopstick();
        Chopstick chopstick4 = new Chopstick();
        Chopstick chopstick5 = new Chopstick();


        CountDownLatch latch = new CountDownLatch(5);
        Philosopher philosopher1 = new Philosopher(chopstick1, chopstick5, 1, latch);
        Philosopher philosopher2 = new Philosopher(chopstick2, chopstick1, 2, latch);
        Philosopher philosopher3 = new Philosopher(chopstick3, chopstick2, 3, latch);
        Philosopher philosopher4 = new Philosopher(chopstick4, chopstick3, 4, latch);
        Philosopher philosopher5 = new Philosopher(chopstick5, chopstick1, 5, latch);

        ExecutorService WORKER_THREAD_POOL
                = Executors.newFixedThreadPool(10);

//        for (int i = 0; i < 5; i++) {
        WORKER_THREAD_POOL.submit(philosopher1);
        WORKER_THREAD_POOL.submit(philosopher2);
        WORKER_THREAD_POOL.submit(philosopher3);
        WORKER_THREAD_POOL.submit(philosopher4);
        WORKER_THREAD_POOL.submit(philosopher5);

        try {
            latch.await();
        } catch (InterruptedException e) {
            e.printStackTrace();
        }

    }
}
