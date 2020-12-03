


public class Stack {
    private final int MAX_SIZE = 1024;
    int[] array = new int[MAX_SIZE];

    StackInfo[] stackInfos = {
            new StackInfo(StackEnum.FIRST),
            new StackInfo(StackEnum.SECOND),
            new StackInfo(StackEnum.THIRD)
    };

    public void push(int value, StackEnum stackEnum) {
        int position = stackInfos[stackEnum.index()].start + stackInfos[stackEnum.index()].size;
        makeRoom(stackEnum);
        array[position] = value;
    }

    private void makeRoom(StackEnum stackEnum) {
        boolean foundStack = false;
        int positionToMoveFrom = 0;
        for (StackInfo stackInfo: stackInfos) {

            if (stackInfo.stackEnum == stackEnum) {
                foundStack = true;
                positionToMoveFrom = stackInfo.start + stackInfo.size;
                stackInfo.size += 1;

                continue;
            }

            if (foundStack) {
                stackInfo.start += 1;
            }
        }

        for (int i = MAX_SIZE - 1; i > positionToMoveFrom; i--) {
            array[i] = array[i - 1];
        }
    }

    private class StackInfo {
        int start = 0;
        int size = 0;
        StackEnum stackEnum;

        StackInfo(StackEnum stackEnum) {
            this.stackEnum = stackEnum;
        }
    }
}
