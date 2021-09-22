void main() {
    double n = 10;
    int soma = 0;  
  
    int quantidadeDeValores = 5;
  
    if(n > 0 && n < 100){
      
      for(int i = 0; i < quantidadeDeValores ; i++){
          soma  = soma + i;
        
          print(soma);
      }
    }else{
      print("Erro");
    }
}