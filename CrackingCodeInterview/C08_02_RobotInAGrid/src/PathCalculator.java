import java.lang.reflect.Array;
import java.util.ArrayList;

public class PathCalculator {
    int[][] grid;

    public ArrayList<Point> calculatePath(Point point) {
        ArrayList<Point> array = new ArrayList<>();
        array.add(new Point(0, 0));
        return calculatePath(point, array);
    }

    public ArrayList<Point> calculatePath(Point point, ArrayList<Point> path) {

        if (canGoRight(point)) {
            Point newLocation = new Point(point.x, point.y + 1);
            path.add(newLocation);
            path = calculatePath(newLocation, path);

            if (isPathCompleted(path)) {
                return path;
            } else {
                path.remove(path.size() - 1);
            }
        }

        if (canGoDown(point)) {
            Point newLocation = new Point(point.x + 1, point.y);
            path.add(newLocation);
            path = calculatePath(newLocation, path);

            if (isPathCompleted(path)) {
                return path;
            } else {
                path.remove(path.size() - 1);
            }
        }

        return path;
    }

    private boolean isPathCompleted(ArrayList<Point> path) {
        return isDestination(path.get(path.size() - 1));
    }

    private boolean isDestination(Point point) {
        return point.x == cols() - 1 && point.y == rows() - 1;
    }

    private boolean canGoRight(Point point) {
        if (point.y == cols() - 1) {
            return false;
        }
        return grid[point.x][point.y + 1] == 1;
    }

    private boolean canGoDown(Point point) {
        if (point.x == rows() - 1) {
            return false;
        }
        return grid[point.x + 1][point.y] == 1;
    }

    private int cols() {
        return grid[0].length;
    }

    private int rows() {
        return grid.length;
    }
}
