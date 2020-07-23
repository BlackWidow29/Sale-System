package br.com.mnBebidas.repositories.interfaces;

import java.sql.SQLException;
import java.util.List;

public interface AppRepositorio<T> {
	List<T> selecionar() throws SQLException;

	void inserir(T entidade);

	void atualizar(T entidade);

	void excluir(T entidade);
}
