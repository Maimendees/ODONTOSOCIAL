INSERT INTO ong(nome,telefone)
VALUES
('ODONTOSOCIAL', '1199999-9999')
);

INSERT INTO paciente(nome, idade, telefone)
VALUES
('BRUNA SANTOS', 22, '1199298-8888'),
('silvio santos', 25, '1198543-5555')

);

INSERT INTO dentista(nome, crm, especialidade)
VALUES
('MARIA OLIVEIRA', 'CRM12345', 'ORTODONTIA'),
('JOAO PEREIRA', 'CRM67890', 'ENDODONTIA')
);
INSERT INTO consulta(data, procedimento, id_paciente, id_dentista)
VALUES
('2024-07-01', 'Limpeza', 1, 1),
('2024-07-02', 'Canal', 2, 2)
);
INSERT INTO medicamento(nome, data, quantidade, id_consulta)
VALUES
('Paracetamol', '2024-07-01', 10, 1),
('Ibuprofeno', '2024-07-02', 15, 2)
);
INSERT INTO medicamento_consulta(id_medicamento, id_consulta, id_dentista)
VALUES
(1, 1, 1),
(2, 2, 2)
);
BEGIN TRANSACTION;
COMMIT;