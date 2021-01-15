CREATE TABLE `TB_EMPRESA` (
  `id` bigint(20) NOT NULL,
  `cnpj` varchar(255) NOT NULL,
  `data_atualizacao` datetime NOT NULL,
  `data_criacao` datetime NOT NULL,
  `razao_social` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `TB_FUNCIONARIO` (
  `id` bigint(20) NOT NULL,
  `cpf` varchar(255) NOT NULL,
  `data_atualizacao` datetime NOT NULL,
  `data_criacao` datetime NOT NULL,
  `email` varchar(255) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `perfil` varchar(255) NOT NULL,
  `qtd_horas_almoco` float DEFAULT NULL,
  `qtd_horas_trabalho_dia` float DEFAULT NULL,
  `senha` varchar(255) NOT NULL,
  `valor_hora` decimal(19,2) DEFAULT NULL,
  `TB_EMPRESA_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `TB_LANCAMENTO` (
  `id` bigint(20) NOT NULL,
  `data` datetime NOT NULL,
  `data_atualizacao` datetime NOT NULL,
  `data_criacao` datetime NOT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `localizacao` varchar(255) DEFAULT NULL,
  `tipo` varchar(255) NOT NULL,
  `TB_FUNCIONARIO_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for table `TB_EMPRESA`
--
ALTER TABLE `TB_EMPRESA`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `TB_FUNCIONARIO`
--
ALTER TABLE `TB_FUNCIONARIO`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_EMPRESA_FUNCIONARIO` (`TB_EMPRESA_id`);

--
-- Indexes for table `TB_LANCAMENTO`
--
ALTER TABLE `TB_LANCAMENTO`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_FUNCIONARIO_LANCAMENTO` (`TB_FUNCIONARIO_id`);

--
-- AUTO_INCREMENT for table `TB_EMPRESA`
--
ALTER TABLE `TB_EMPRESA`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `TB_FUNCIONARIO`
--
ALTER TABLE `TB_FUNCIONARIO`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `TB_LANCAMENTO`
--
ALTER TABLE `TB_LANCAMENTO`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

