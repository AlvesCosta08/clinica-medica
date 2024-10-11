-- Desativar as verificações de chave estrangeira temporariamente
SET FOREIGN_KEY_CHECKS = 0;

-- Estrutura da tabela `usuarios_tem_perfis`
DROP TABLE IF EXISTS `usuarios_tem_perfis`;
CREATE TABLE `usuarios_tem_perfis` (
  `usuario_id` bigint(20) NOT NULL,
  `perfil_id` bigint(20) NOT NULL,
  PRIMARY KEY (`usuario_id`,`perfil_id`),
  KEY `FK_USUARIO_TEM_PERFIL_ID` (`perfil_id`),
  KEY `FK_PERFIL_TEM_USUARIO_ID` (`usuario_id`),
  CONSTRAINT `FK_PERFIL_TEM_USUARIO_ID` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`),
  CONSTRAINT `FK_USUARIO_TEM_PERFIL_ID` FOREIGN KEY (`perfil_id`) REFERENCES `perfis` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Reativar as verificações de chave estrangeira
SET FOREIGN_KEY_CHECKS = 1;
