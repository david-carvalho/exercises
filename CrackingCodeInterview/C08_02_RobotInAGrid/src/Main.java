import java.util.ArrayList;

public class Main {

    public static void main(String[] args) {

        PathCalculator pathCalculator = new PathCalculator();
        int[][] grid = {
                {1, 1, 0, 0},
                {1, 0, 1, 1},
                {1, 0, 1, 1},
                {1, 1, 1, 1}};
        pathCalculator.grid = grid;
        ArrayList<Point> path = pathCalculator.calculatePath(new Point(0,0));
        System.out.println(path);
    }
}
