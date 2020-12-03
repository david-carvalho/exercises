public enum StackEnum {
    FIRST,
    SECOND,
    THIRD;

    public int index() {
        switch (this) {
            case FIRST: return 0;
            case SECOND: return 1;
            case THIRD: return 2;
            default: return -1;
        }
    }
}