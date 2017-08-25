public class Peao extends Peca{
  
  public Peao(Tabuleiro t,int c){
    super(t,c);
    if(c == 1){
      img = loadImage("peao-branco.png");
    }else{
      img = loadImage("peao-preto.png");
    }
  }
  
  public ArrayList<Casa> movimentosPermitidos(){
    return null;
  }
}