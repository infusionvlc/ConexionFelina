# User Authorization

In our application there are three different types of user roles:
* **Basic** users: they are allowed to browse most of cats info,
adopt or sponsor a cat, and enroll as a volunteer.
* **Volunteers**: they are able to do all basic users actions.
Additionally, they may join a colony or create a new one to manage
tasks, cats illnesses, sponsorships and adoptions.
* **Admins**: they have full access over all colonies information,
excluding all private information from users.

User policies are managed with [Pundit gem](https://github.com/varvet/pundit)
and are located under `app/policies`.