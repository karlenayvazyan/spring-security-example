package am.ak.spring.security.model;

public enum Status {

    ACTIVE, BANNED;

    public boolean isActive() {
        return this.equals(ACTIVE);
    }
}
