package hsl.devspace.app.corelogic.repository.group;

import hsl.devspace.app.corelogic.domain.Group;

/**
 * Created by hsenid on 9/22/16.
 */
public interface GroupRepository {
    int add(Group group);
    int delete(String groupName);
}
