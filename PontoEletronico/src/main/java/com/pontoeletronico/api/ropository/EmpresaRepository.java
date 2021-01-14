package com.pontoeletronico.api.ropository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.pontoeletronico.api.entidades.*;

public interface EmpresaRepository extends JpaRepository<Empresa, Long> {

	Empresa findByCnpj(String cnpj);
}
