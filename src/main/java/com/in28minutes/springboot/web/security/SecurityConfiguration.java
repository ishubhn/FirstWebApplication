package com.in28minutes.springboot.web.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;

@Configuration
@EnableWebSecurity
public class SecurityConfiguration extends WebSecurityConfigurerAdapter {
	// create user and password
	/*
	 * Prior to Spring Security 5.0 the default PasswordEncoder was
	 * NoOpPasswordEncoder which required plain text passwords. In Spring Security
	 * 5, the default is DelegatingPasswordEncoder, which required Password Storage
	 * Format. SOLUTION>! -- Add password storage format, for plain text, add {noop}
	 * 
	 * Solution 2 – User.withDefaultPasswordEncoder() for UserDetailsService
	 * 
	 * SpringSecurityConfig.java package com.mkyong.config;
	 * 
	 * import org.springframework.context.annotation.Bean; import
	 * org.springframework.context.annotation.Configuration; import
	 * org.springframework.security.config.annotation.web.configuration.
	 * WebSecurityConfigurerAdapter; import
	 * org.springframework.security.core.userdetails.User; import
	 * org.springframework.security.core.userdetails.UserDetailsService; import
	 * org.springframework.security.provisioning.InMemoryUserDetailsManager;
	 * 
	 * @Configuration public class SpringSecurityConfig extends
	 * WebSecurityConfigurerAdapter {
	 * 
	 * @Bean public UserDetailsService userDetailsService() {
	 * 
	 * User.UserBuilder users = User.withDefaultPasswordEncoder();
	 * InMemoryUserDetailsManager manager = new InMemoryUserDetailsManager();
	 * manager.createUser(users.username("user").password("password").roles("USER").
	 * build());
	 * manager.createUser(users.username("admin").password("password").roles("USER",
	 * "ADMIN").build()); return manager;
	 * 
	 * } for more:
	 * "go(spring.io/blog/2017/11/01/spring-security-5-0-0-rc1-released#password-storage-format)"
	 * }
	 */
	@Autowired
	public void configureGlobalSecurity(AuthenticationManagerBuilder auth) throws Exception {
		auth.inMemoryAuthentication().withUser("Shubham").password("{noop}123").roles("USER", "ADMIN");
	}

	/*
	 * if it is valid user pass him post login page, for anyone else redirect them
	 * to login page
	 */
	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http.authorizeRequests().antMatchers("/login").permitAll().antMatchers("/", "/*todo*/**")
				.access("hasRole('USER')").and().formLogin();
	}
}
