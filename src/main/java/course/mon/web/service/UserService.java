package course.mon.web.service;
import course.mon.web.entities.User;

public interface UserService {
	public User findUserByEmail(String email);

	public void saveUser(User user);
	
	public String getUserName();
}
