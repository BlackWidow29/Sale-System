package br.com.mnBebidas.repositories.impl;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.List;

import br.com.mnBebidas.repositories.interfaces.AppRepositorio;
import br.com.mnBedidas.entitys.User;

public class AppJDBC implements AppRepositorio<User> {

	@Override
	public List<User> selecionar() throws SQLException {
		Connection con = null;
		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/dbpdv","root", "Dias042012");
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
