public class Tabuleiro{
  
  Casa[][] casas;
  
  public Tabuleiro(int lado){
    casas = new Casa[4][5];
    for(int i =0;i<4;i++){
      for(int j =0;j<5;j++){
        Casa c = new Casa();
        c.largura = lado;
        c.altura = lado;
        c.x = i;
        c.y = j;
        casas[i][j] = c;
        if( (i+j)%2 == 0){
          c.corFundo = color(50,50,50);
        }else{
          c.corFundo = color(150,150,150);
        }
      }
    }
  }
  
  public void addPeca(int x, int y,Peca p){
    Casa c = casas[x][y];
    c.peca = p;
  }
  
  public void draw(){
    for(int i =0;i<4;i++){
      for(int j =0;j<5;j++){
        Casa c = casas[i][j];
        fill(c.corFundo);
        rect(c.x*c.largura,c.y*c.altura,c.altura,c.largura);
        if(c.peca != null){
          
          image(c.peca.img,c.x*c.largura,c.y*c.altura,c.altura,c.largura);
        }
      }
    }
  }
}