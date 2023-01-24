package task01.service;

import task01.domain.User;
import task01.shared.AbstractCRUD;

public interface UserService extends AbstractCRUD<User>{

	User getUserByEmail(String email);
	
}