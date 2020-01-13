package com.handong.dao;

import java.util.ArrayList;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import static org.hamcrest.Matchers.is;
import static org.hamcrest.MatcherAssert.assertThat;

public class UserDaoTest {
	UserDao userDao;
	ArrayList<User> list;
	
	@BeforeEach
	public void setup() {
		userDao = new UserDao();
		userDao.deleteAll();
		
		User u1 = new User();
		u1.setUserID("id1");
		u1.setUserPassword("pw1");
		u1.setUserEmail("email1@example.com");
		u1.setUserName("name1");
		u1.setUserGender("m");
		
		User u2 = new User();
		u2.setUserID("id2");
		u2.setUserPassword("pw2");
		u2.setUserEmail("email2@example.com");
		u2.setUserName("name2");
		u2.setUserGender("f");
		
		User u3 = new User();
		u3.setUserID("id3");
		u3.setUserPassword("pw3");
		u3.setUserEmail("email3@example.com");
		u3.setUserName("name3");
		u3.setUserGender("m");
		
		User u4 = new User();
		u4.setUserID("id4");
		u4.setUserPassword("pw4");
		u4.setUserEmail("email4@example.com");
		u4.setUserName("name4");
		u4.setUserGender("f");
		
		User u5 = new User();
		u5.setUserID("id5");
		u5.setUserPassword("pw5");
		u5.setUserEmail("email5@example.com");
		u5.setUserName("name5");
		u5.setUserGender("m");
		
		list = new ArrayList<User>();
		list.add(u1);
		list.add(u2);
		list.add(u3);
		list.add(u4);
		list.add(u5);
	}
	
	@Test
	public void joinTest() {
		for(User u:list) {
			userDao.join(u);
		}
		
		ArrayList<User> dbList = userDao.searchAll();
		compareUserList(list, dbList);
	}
	
	@Test
	public void updateTest() {
		for(User u:list) {
			userDao.join(u);
		}
		
		User u = list.get(0);
		u.setUserName("updatedName");
		u.setUserEmail("updatedEmail");
		u.setUserPassword("updatedPassword");
		
		userDao.update(u);
		
		User updatedUser = userDao.search(u.getUserID());
		
		compareUser(u,updatedUser);
	}
	
	@Test
	public void deleteTest() {
		for(User u:list) {
			userDao.join(u);
		}
		
		User u = list.get(0);
		list.remove(0);
		userDao.delete(u.getUserID());
		
		ArrayList<User> dbList = userDao.searchAll();
		
		compareUserList(list, dbList);
	}
	
	private void compareUserList(ArrayList<User> list1, ArrayList<User> list2) {
		assertThat(list1.size(),is(list2.size()));
		
		for(int i=0;i<list1.size();i++) {
			compareUser(list1.get(i),list2.get(i));
		}
	}
	
	private void compareUser(User u1, User u2) {
		assertThat(u1.getUserID(), is(u2.getUserID()));
		assertThat(u1.getUserPassword(), is(u2.getUserPassword()));
		assertThat(u1.getUserName(), is(u2.getUserName()));
		assertThat(u1.getUserEmail(), is(u2.getUserEmail()));
		assertThat(u1.getUserGender(), is(u2.getUserGender()));
	}
	
	@AfterAll
	public static void afterAll() {
		User u1 = new User();
		u1.setUserID("id1");
		u1.setUserPassword("pw1");
		u1.setUserEmail("email1@example.com");
		u1.setUserName("name1");
		u1.setUserGender("m");
		
		User u2 = new User();
		u2.setUserID("id2");
		u2.setUserPassword("pw2");
		u2.setUserEmail("email2@example.com");
		u2.setUserName("name2");
		u2.setUserGender("f");
		
		User u3 = new User();
		u3.setUserID("id3");
		u3.setUserPassword("pw3");
		u3.setUserEmail("email3@example.com");
		u3.setUserName("name3");
		u3.setUserGender("m");
		
		User u4 = new User();
		u4.setUserID("id4");
		u4.setUserPassword("pw4");
		u4.setUserEmail("email4@example.com");
		u4.setUserName("name4");
		u4.setUserGender("f");
		
		User u5 = new User();
		u5.setUserID("id5");
		u5.setUserPassword("pw5");
		u5.setUserEmail("email5@example.com");
		u5.setUserName("name5");
		u5.setUserGender("m");
		
		ArrayList<User> l = new ArrayList<User>();
		l.add(u1);
		l.add(u2);
		l.add(u3);
		l.add(u4);
		l.add(u5);
		
		UserDao ud = new UserDao(); 
		for(User u:l) {
			ud.join(u);
		}
	}
}
