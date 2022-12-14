package com.example.demo;

import static org.assertj.core.api.Assertions.assertThat;

import java.util.List;

import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.jdbc.AutoConfigureTestDatabase;
import org.springframework.boot.test.autoconfigure.jdbc.AutoConfigureTestDatabase.Replace;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;
import org.springframework.boot.test.autoconfigure.orm.jpa.TestEntityManager;
import org.springframework.test.annotation.Rollback;

import com.example.demo.entity.User;
import com.example.demo.entity.UserRepository;

import net.bytebuddy.utility.RandomString;

@DisplayName("Unit Tests of UserRepository Class")
@DataJpaTest
@AutoConfigureTestDatabase(replace = Replace.NONE)
@Rollback(false)
public class UserRepositoryTest {
	
	@Autowired
	private UserRepository userRepo;
	
	@Autowired
	private TestEntityManager entityManager;
	
	@Test
	public void testCreateNewUser() {
		User user = new User();
		user.setUsername("goo2");
		user.setEmail("goo2@gmail.com");
		user.setPassword("goo2");
		
		User savedUser = entityManager.persistAndFlush(user); // retrive object using em
		
		assertThat(savedUser.getEmail()).isEqualTo(user.getEmail());
	}
	
	@Test
	public void testNumberRegisteredUsers() {
		long count = userRepo.count();
		System.err.println("size: " + count);
		assertThat(count).isEqualTo(userRepo.findAll().size());
	}
	
	@Test
	public void testSearchByKeyword() {
		String keyword = "goo";
		List<User> results = userRepo.search(keyword);
		
		assertThat(results.size()).isEqualTo(userRepo.search(keyword).size());
	}
	
	@Test
	public void testFindUserByEmail() {
		String email = "goocheanhung@gmail.com";
		User user = userRepo.findUserByEmail(email);
		
		assertThat(user.getEmail()).isEqualTo(email);
	}
	
	@Test
	public void testFindUserByUsername() {
		String username = "Goo";
		User user = userRepo.findUserByUsername(username);
		
		assertThat(user.getUsername()).isEqualTo(username);
	}
	
	
	@Test
	public void testDeleteUserById() {
		User user = userRepo.findUserByUsername("goo2");		
		userRepo.deleteById(user.getId()); // delete the user by id
		
		User deletedUser = userRepo.findUserByUsername("goo2"); // test retrieve it back
		
		assertThat(deletedUser).isEqualTo(null);
	}
}