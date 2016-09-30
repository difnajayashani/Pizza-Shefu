package hsl.devspace.app.corelogic.domain;

/**
 * Created by hsenid on 9/22/16.
 */
public class Group {
    private  String groupName;
    private String description;
    private String moduleName;

    public String getModuleName() {
        return moduleName;
    }

    public void setModuleName(String moduleName) {
        this.moduleName = moduleName;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getGroupName() {
        return groupName;
    }

    public void setGroupName(String groupName) {
        this.groupName = groupName;
    }

    public Group(String groupName, String description, String moduleName) {
        this.groupName = groupName;
        this.description = description;
        this.moduleName = moduleName;
    }
}
