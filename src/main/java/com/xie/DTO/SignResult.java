package com.xie.DTO;

public class SignResult {
    private boolean state;
    private String stateInfo;

    public SignResult(boolean state, String stateInfo) {
        this.state = state;
        this.stateInfo = stateInfo;
    }

    public boolean isState() {
        return state;
    }

    public void setState(boolean state) {
        this.state = state;
    }

    public String getStateInfo() {
        return stateInfo;
    }

    public void setStateInfo(String stateInfo) {
        this.stateInfo = stateInfo;
    }
}
