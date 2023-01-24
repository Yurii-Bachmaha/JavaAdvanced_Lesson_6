package task01.dao;

import task01.domain.User;
import task01.shared.AbstractCRUD;

public interface UserDao extends AbstractCRUD<User>{

	User getUserByEmail(String email);
	
}