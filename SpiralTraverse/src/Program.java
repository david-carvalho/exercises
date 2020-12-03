import java.util.ArrayList;
import java.util.List;

class Program {

    private enum Direction {
        RIGHT,
        DOWN,
        LEFT,
        UP
    }

    private static class TravelPlan {
        int x;
        int y;
        Direction direction;

        TravelPlan(int x, int y, Direction direction) {
            this.x = x;
            this.y = y;
            this.direction = direction;
        }
    }

    public static List<Integer> spiralTraverse(int[][] array) {
        ArrayList<Integer> resultArray = new ArrayList<>();
        int currentX = 0;
        int currentY = 0;
        int[][] travelledArray = new int[array.length][array[0].length];
        Direction direction = Direction.RIGHT;
        int totalElements = array.length * array[0].length;
        while (resultArray.size() != totalElements) {
            resultArray.add(array[currentX][currentY]);
            travelledArray[currentX][currentY] = 1;
            if (resultArray.size() == totalElements) {
                break;
            }
            TravelPlan travelPlan = calculateNextPosition(currentX, currentY, travelledArray, direction);
            currentX = travelPlan.x;
            currentY = travelPlan.y;
            direction = travelPlan.direction;
        }
        System.out.println(resultArray);
        return resultArray;
    }

    private static TravelPlan calculateNextPosition(int x, int y, int[][] array, Direction direction) {
        boolean canTravel = false;
        TravelPlan travelPlan = new TravelPlan(0, 0, direction);
        while (!canTravel) {

            switch (direction) {
                case RIGHT:
                    travelPlan = new TravelPlan(x , y + 1, direction);
                    break;
                case DOWN:
                    travelPlan = new TravelPlan(x + 1, y, direction);
                    break;
                case LEFT:
                    travelPlan = new TravelPlan(x, y - 1, direction);
                    break;
                case UP:
                    travelPlan = new TravelPlan(x - 1, y, direction);
                    break;
                default:
                    travelPlan = new TravelPlan(0, 0, direction);
            }
            canTravel = canTravel(trav {elPlan, array);
            if (!canTravel) {
                direction = calculateNextDirection(direction);
            }
        }
        return travelPlan;
    }

    private static boolean canTravel(TravelPlan travelPlan, int[][] array) {
        System.out.println(travelPlan.x + " - " + travelPlan.y);
        return
                travelPlan.x > -1 &&
                        travelPlan.y > -1 &&
                        array.length > travelPlan.x &&
                        array[0].length > travelPlan.y &&
                        array[travelPlan.x][travelPlan.y] != 1;
    }

    private static Direction calculateNextDirection(Direction direction) {
        switch(direction) {
            case RIGHT:
                return Direction.DOWN;
            case DOWN:
                return Direction.LEFT;
            case LEFT:
                return Direction.UP;
            case UP:
                return Direction.RIGHT;
            default:
                return Direction.RIGHT;
        }
    }

}
