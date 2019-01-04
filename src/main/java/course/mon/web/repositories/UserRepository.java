package course.mon.web.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import course.mon.web.entities.User;

@Repository("userRepository")
public interface UserRepository extends JpaRepository<User, Long> {
	User findByEmail(String email);
	final String GET_NAME_BY_ID = "SELECT name FROM User";
	
	
	// Method
	@Query(GET_NAME_BY_ID)
	String getName();
}
