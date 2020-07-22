package br.com.mnBebidas.repositories.interfaces;

import java.util.List;

public interface AppRepositorio<T> {
	List<T> selecionar();

	void inserir(T entidade);

	void atualizar(T entidade);

	void excluir(T entidade);
}
