package pojo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.Proxy;


@Entity
@Proxy(lazy=false)
@Table(name ="LOGIN")
public class User {

	@Id
    @Column(name="USERNAME")
    private String username;
	@Column(name="PASSWORD")
	private String password;
	public void setUsername(String Username)
	{
		this.username=Username;
	}
	public String getUsername()
	{
		return username;
	}
	public void setPassword(String Password)
	{
		this.password=Password;
	}
	public String getPassword()
	{
		return password;
	}
}
