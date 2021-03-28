final createTable='''
CREATE TABLE conta(
  id INTEGER NOT NULL PRIMARY KEY
  ,nome VARCHAR(200) NOT NULL
  ,valor CHAR(16) NOT NULL
  ,obs VARCHAR(150) NOT NULL
)
''';

final insert1 = '''
INSERT INTO conta(id, nome, valor, obs)
VALUES('Corte de cabelo','36.00','28/03/2021')
''';

final insert2 = '''
INSERT INTO conta(id, nome, valor, obs)
VALUES('Gasolina','50.00','28/03/2021')
''';

final insert3 = '''
INSERT INTO conta(id, nome, valor, obs)
VALUES('Corte de cabelo','36.00','28/03/2021')
''';


