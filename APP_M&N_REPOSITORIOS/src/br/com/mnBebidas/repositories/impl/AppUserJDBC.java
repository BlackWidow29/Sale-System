package br.com.mnBebidas.repositories.impl;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;

import br.com.mnBebidas.repositories.interfaces.AppRepositorio;
import br.com.mnBedidas.entitys.User;

public class AppUserJDBC implements AppRepositorio<User> {

	@Override
	public List<User> selecionar() throws SQLException {
		Connection con = null;
		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/dbpdv", "root", "Dias042012");
		Statement comando = con.createStatement();
		ResultSet rs = comando.executeQuery("SELECT * FROM tbllogin, tbluser");

		while (rs.next()) {
			User user = new User();
			user.setId(rs.getInt("cdLogin"));
			user.setEmail(rs.getString("nmEmail"));
			user.setLogin(rs.getString("nmUser"));
			user.setPassword(rs.getString("nmPassword"));
		}
		return null;
	}

	@Override
	public void inserir(User entidade) {
		// TODO Auto-generated method stub

	}

	@Override
	public void atualizar(User entidade) {
		// TODO Auto-generated method stub

	}

	@Override
	public void excluir(User entidade) {
		// TODO Auto-generated method stub

	}

}
