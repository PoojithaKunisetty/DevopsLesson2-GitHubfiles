package com.mindtree.librarymanagementsystem.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import com.mindtree.librarymanagementsystem.entity.User;
import com.mindtree.librarymanagementsystem.repository.UserRepository;

@Service
public class MyUserDetailsService implements UserDetailsService {
	@Autowired
	private UserRepository userrepo;

	@Override
	public UserDetails loadUserByUsername(String userName) throws UsernameNotFoundException {
		
		User user=userrepo.findByUserName(userName);
		if(user==null)
		{
			throw new UsernameNotFoundException("user not found");
		}
		return new UserImpl(user);
	}

}
