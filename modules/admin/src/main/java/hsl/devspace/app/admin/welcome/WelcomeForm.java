

package hsl.devspace.app.admin.welcome;

public class WelcomeForm {
    private int pendingNotifications;
    private int pendingRewards;
    private int pendingCampaigns;
    private int pendingProfiles;

    public int getPendingNotifications() {
        return pendingNotifications;
    }

    public void setPendingNotifications(int pendingNotifications) {
        this.pendingNotifications = pendingNotifications;
    }

    public int getPendingRewards() {
        return pendingRewards;
    }

    public void setPendingRewards(int pendingRewards) {
        this.pendingRewards = pendingRewards;
    }

    public int getPendingCampaigns() {
        return pendingCampaigns;
    }

    public void setPendingCampaigns(int pendingCampaigns) {
        this.pendingCampaigns = pendingCampaigns;
    }

    public int getPendingProfiles() {
        return pendingProfiles;
    }

    public void setPendingProfiles(int pendingProfiles) {
        this.pendingProfiles = pendingProfiles;
    }
}
