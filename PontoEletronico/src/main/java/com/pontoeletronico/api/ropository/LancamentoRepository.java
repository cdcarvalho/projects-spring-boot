package com.pontoeletronico.api.ropository;

import java.util.List;

import java.util.List;

import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.transaction.annotation.Transactional;

import com.pontoeletronico.api.entidades.Lancamento;


@Transactional(readOnly = true)
@NamedQueries({
		@NamedQuery(name = "LancamentoRepository.findByFuncionarioId", 
				query = "SELECT l FROM Lancamento l WHERE l.funcionario.id = :id") })
public interface LancamentoRepository extends JpaRepository<Lancamento, Long> {

	List<Lancamento> findByFuncionarioId(@Param("id") Long funcionarioId);

	Page<Lancamento> findByFuncionarioId(@Param("id") Long funcionarioId, Pageable pageable);
}
