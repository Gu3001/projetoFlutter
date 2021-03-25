final createTable='''
CREATE TABLE contact(
  id INT PRIMARY KEY
  ,nome VARCHAR(200) NOT NULL
  ,telefone CHAR(16) NOT NULL
  ,email VARCHAR(150) NOT NULL
  ,url_avatar VARCHAR(300) NOT NULL
)
''';

final insert1 = '''
INSERT INTO contact(nome, telefone, email, url_avatar)
VALUES('Deku','(44)91111-1111','deku@email.com','https://media.tenor.com/images/bd54bef392a04239c6b46a976a473a43/tenor.gif')
''';

final insert2 = '''
INSERT INTO contact(nome, telefone, email, url_avatar)
VALUES('All-might','(44)92222-2222','allMight@email.com','https://giffiles.alphacoders.com/103/103159.gif')
''';

final insert3 = '''
INSERT INTO contact(nome, telefone, email, url_avatar)
VALUES('Uraraka','(44)933333-3333','uararaka@email.com','https://66.media.tumblr.com/8685b856b3495a119bf4913e4783a093/tumblr_o5s0bf6laz1qa94xto2_500.gif')
''';
