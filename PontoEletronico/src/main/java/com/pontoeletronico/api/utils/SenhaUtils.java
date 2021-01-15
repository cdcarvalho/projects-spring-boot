package com.pontoeletronico.api.utils;

import org.h2.util.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import lombok.NoArgsConstructor;

@NoArgsConstructor
public class SenhaUtils {

	private static final Logger log = LoggerFactory.getLogger(SenhaUtils.class);

	public static String gerarBCrypt(String senha) {
		if (StringUtils.isNullOrEmpty(senha)) {
			return senha;
		}

		log.info("Gerando hash com o BCrypt.");
		BCryptPasswordEncoder bCryptEncoder = new BCryptPasswordEncoder();
		return bCryptEncoder.encode(senha);
	}
}
