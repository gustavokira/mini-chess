public class Peca{
  int x;
  int y;
  PImage img;
  int cor;
  Tabuleiro tabuleiro;
  
  public Peca(Tabuleiro t,int c){
    tabuleiro = t;
    cor = c;
  }
  
  public ArrayList<Casa> movimentosPermitidos(){
    return null;
  }
}