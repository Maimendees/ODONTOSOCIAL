BEGIN TRANSACTION;


create table ong (
id_ong INTEGER PRIMARY KEY AUTOINCREMENT,
nome TEXT NOT NULL,
telefone TEXT(15)
); 


create table paciente (
id_paciente INTEGER PRIMARY KEY AUTOINCREMENT,
nome TEXT (100),
idade INTEGER,
telefone TEXT(15),
id_ong INTEGER,
FOREIGN KEY (id_ong) REFERENCES ong(id_ong)
);



create table dentista (
id_dentista INTEGER PRIMARY KEY AUTOINCREMENT,
nome TEXT NOT NULL,
crm TEXT NOT NULL,
especialidade TEXT(100)
);


create table consulta (
id_consulta INTEGER PRIMARY KEY AUTOINCREMENT,
data TEXT NOT NULL,
procedimento TEXT(100),
id_paciente INTEGER,
id_dentista INTEGER,
FOREIGN KEY (id_paciente) REFERENCES paciente(id_paciente)
FOREIGN KEY (id_dentista) REFERENCES dentista(id_dentista)
);


create table medicamento (
id_medicamento INTEGER PRIMARY KEY AUTOINCREMENT,
nome TEXT NOT NULL,
data TEXT,
quantidade INTEGER,
id_consulta INTEGER,
FOREIGN KEY (id_consulta) REFERENCES consulta(id_consulta)
);


create table medicamento_consulta (
id_medicamento INTEGER,
id_consulta INTEGER,
id_dentista,
FOREIGN KEY (id_medicamento) REFERENCES medicamento(id_medicamento),
FOREIGN KEY (id_consulta) REFERENCES consulta(id_consulta),
FOREIGN KEY (id_dentista) REFERENCES dentista(id_dentista)
);
