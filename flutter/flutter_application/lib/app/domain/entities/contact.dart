class Contact{
    int id;
    String nome;
    String telefone;
    String email;
    String urlAvatar;


Contact({this.id, this.nome, this.telefone, this.email, this.urlAvatar});

} 
teste() {
  var contato = Contact(id:1, nome:'paola',telefone:'123',email:'paola@email.com',urlAvatar:'www.site.com.br');
}