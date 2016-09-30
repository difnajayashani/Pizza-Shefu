package hsl.devspace.app.corelogic.domain;

/**
 * Created by hsenid on 9/22/16.
 */
public class Permission {
    private String permissionName;
    private String description;

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getPermissionName() {
        return permissionName;
    }

    public void setPermissionName(String permissionName) {
        this.permissionName = permissionName;
    }

    public Permission(String description, String permissionName) {
        this.description = description;
        this.permissionName = permissionName;
    }
}
