package logbean;

public class UserBean {
	
      private String username;
      private String password;
      private String FullName;
      private int RoleID;
      public boolean valid;
	
	
      public String getFullName() {
         return FullName;
	}

      public void setFullName(String newFullName) {
    	  FullName = newFullName;
	}

	
      public int getRoleID() {
         return RoleID;
			}

      public void setRoleID(int newRoleID) {
         RoleID = newRoleID;
			}
			

      public String getPassword() {
         return password;
	}

      public void setPassword(String newPassword) {
         password = newPassword;
	}
      public String getUsername() {
         return username;
			}

      public void setUserName(String newUsername) {
         username = newUsername;
			}

				
      public boolean isValid() {
         return valid;
	}

      public void setValid(boolean newValid) {
         valid = newValid;
	}	
}