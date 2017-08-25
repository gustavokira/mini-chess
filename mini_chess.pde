Tabuleiro tabuleiro;
Peca pb1;
Peca pb2;
Peca pb3;
Peca pb4;

public void setup(){
  size(400,500);
  tabuleiro = new Tabuleiro(100);
  pb1 = new Peao(tabuleiro,1);
  pb2 = new Peao(tabuleiro,1);
  pb3 = new Peao(tabuleiro,1);
  pb4 = new Peao(tabuleiro,1);
  
  tabuleiro.addPeca(1,1,pb1);
  tabuleiro.addPeca(2,1,pb2);
  tabuleiro.addPeca(3,1,pb3);
  tabuleiro.addPeca(4,1,pb4);
}

public void draw(){
  tabuleiro.draw();
}