void main() {
    
  final pessoas = [];
  final idades = [];
  
   for(var i = 0; i < 100; i++){
     
     var nome = "Pessoa $i";
     pessoas.add(nome);
     
     int idade = i*5;
     
     idades.add(12);
     
     
     print("===============");
     print("==== pessoa ${i} ====");
     print(pessoas[i]);
     print("Idade: $idade");
     print("===============");
   }
 
}
