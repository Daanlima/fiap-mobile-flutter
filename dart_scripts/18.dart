void main() {

  var soma = 0;
  
  final numeros = [1,2,3,4,5,50,7,8,9,10];
  
  for(int i = 9; i >= 0; i--){
    int maior = numeros[i];
  
    if(maior > soma){
      soma = maior;
    }
    
    if(i == 0){
      print("Maior Valor é $soma");
    }
  }

}
