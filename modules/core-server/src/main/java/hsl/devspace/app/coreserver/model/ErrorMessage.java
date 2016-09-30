package hsl.devspace.app.coreserver.model;

import org.codehaus.jackson.annotate.JsonProperty;
import org.codehaus.jackson.annotate.JsonPropertyOrder;

/**
 * Created by Kasun Dinesh on 7/5/16.
 * This is the model/template of the error message to pass as a response.
 */
@JsonPropertyOrder({"status", "code", "errorMessage", "description"})
public class ErrorMessage {
    private String status;
    private int errorCode;
    private String errorMessage;
    private String description;

    public ErrorMessage() {
    }

    public ErrorMessage(String status, int errorCode, String errorMessage, String description) {
        this.status = status;
        this.errorCode = errorCode;
        this.errorMessage = errorMessage;
        this.description = description;
    }

    @JsonProperty("status")
    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    @JsonProperty("code")
    public int getErrorCode() {
        return errorCode;
    }

    public void setErrorCode(int errorCode) {
        this.errorCode = errorCode;
    }

    @JsonProperty("errorMessage")
    public String getErrorMessage() {
        return errorMessage;
    }

    public void setErrorMessage(String errorMessage) {
        this.errorMessage = errorMessage;
    }

    @JsonProperty("description")
    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
}
