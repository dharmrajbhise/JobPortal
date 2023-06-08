package com.example.demo.security;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.dao.DaoAuthenticationProvider;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;

import com.example.demo.service.customDetailsService;

@Configuration
public class SecurityConfig {
	
	@Bean
	public UserDetailsService userDetailsService() {
		
		return new customDetailsService();
	}
	
	@Bean
	public PasswordEncoder passwordEncoder() {
		
		return new BCryptPasswordEncoder();
	}
	
	@Bean
	public DaoAuthenticationProvider daoAuthenticationProvider() {
		
		DaoAuthenticationProvider provider = new DaoAuthenticationProvider();
		provider.setUserDetailsService(this.userDetailsService());
		provider.setPasswordEncoder(this.passwordEncoder());
		return provider;
	}
	
	
	@Bean
	public SecurityFilterChain filterChain(HttpSecurity httpSecurity) throws Exception {
		
		httpSecurity.csrf().disable().authorizeHttpRequests().antMatchers("/","/register","/success").permitAll();
		
							httpSecurity.csrf().disable()
							.authorizeHttpRequests()
							.antMatchers("/admin/**")
							.hasAuthority("ADMIN")
							.antMatchers("/user/**")
							.hasAuthority("USER")
							.and()
							.formLogin()
							.loginPage("/login")
							.loginProcessingUrl("/login")
							.and()
							.logout()
							.logoutUrl("/logout")
							.logoutSuccessUrl("/")
							.permitAll();
		
		return httpSecurity.build();	
	}

}
