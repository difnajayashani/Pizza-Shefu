package hsl.devspace.app.corelogic.repository.permission;

import hsl.devspace.app.corelogic.domain.Permission;

/**
 * Created by hsenid on 9/22/16.
 */
public interface PermissionRepository {
    int add(Permission permission);
    int delete(String permissionName);
}
