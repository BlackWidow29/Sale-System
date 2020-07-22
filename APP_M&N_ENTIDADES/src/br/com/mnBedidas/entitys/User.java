package br.com.mnBedidas.entitys;

public class User {
	
	private int Id;
	private String Login;
	private String Email;
	private int acessKey;
	private String Password;

	public String getLogin() {
		return Login;
	}

	public void setLogin(String login) {
		Login = login;
	}

	public String getEmail() {
		return Email;
	}

	public void setEmail(String email) {
		Email = email;
	}

	public int getAcessKey() {
		return acessKey;
	}

	public void setAcessKey(int acessKey) {
		this.acessKey = acessKey;
	}

	public String getPassword() {
		return Password;
	}

	public void setPassword(String password) {
		Password = password;
	}

	public int getId() {
		return Id;
	}

	public void setId(int id) {
		Id = id;
	}

}
