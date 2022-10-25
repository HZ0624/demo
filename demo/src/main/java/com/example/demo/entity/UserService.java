package com.example.demo.entity;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
@Transactional
public class UserService {

	@Autowired
	private UserRepository userRepository;
	
	// save, update user object
	public void saveUser(User user) {
		userRepository.save(user);
	}
	 // return all user's information, but hey, we may want to retrieve all except password right?! think about it!
	public List<User> retrieveAllUserProfile() {
		return userRepository.findAll();
	}
	

	public User getUserByUsername(String username) {
		return userRepository.findUserByUsername(username);
	}
	public User getUserById(Integer id) {
		return userRepository.findById(id).get();
	}
	
	public List<User> search(String keyword) {
		return userRepository.search(keyword);
	}
	
}