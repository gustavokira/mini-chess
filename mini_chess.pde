Tabuleiro tabuleiro;
Peca pb1;
Peca pb2;
Peca rb;

Peca pp1;
Peca pp2;
Peca rp;

Casa selecionada;
Casa emCima;

public void setup(){
  size(400,500);
  tabuleiro = new Tabuleiro(100);
  pb1 = new Peao(tabuleiro,1);
  pb2 = new Peao(tabuleiro,1);
  rb = new Rei(tabuleiro,1);
  
  tabuleiro.addPeca(0,1,pb1);
  tabuleiro.addPeca(1,1,pb2);
  tabuleiro.addPeca(0,0,rb);
  
  pp1 = new Peao(tabuleiro,2);
  pp2 = new Peao(tabuleiro,2);
  rp = new Rei(tabuleiro,2);
  
  tabuleiro.addPeca(1,3,pp1);
  tabuleiro.addPeca(3,3,pp2);
  tabuleiro.addPeca(3,4,rp);
}

public void draw(){

  for(int i = 0;i<tabuleiro.casas.length;i++){
    for(int j = 0;j<tabuleiro.casas[i].length;j++){
      Casa c = tabuleiro.casas[i][j];
      if(c == selecionada){
        c.irParaEstadoSelecionado();
      }else
      if(c.possibilidade == true){
        c.irParaEstadoPossibilidade();
      }else
      if(c.estaDentro(mouseX,mouseY)){
        c.irParaEstadoEmCima();
        emCima = c;
      }else{
        c.irParaEstadoNormal();
      }
    }
  }
  tabuleiro.desenhar();
}

void mousePressed() {
  
    if(emCima.peca != null){
    Casa temp = selecionada;
    selecionada = emCima;
    
    if(selecionada != temp){
      
      if(temp != null){
        ArrayList<Casa> desligar = temp.peca.movimentosPermitidos();
        
        for(int i = 0;i<desligar.size();i++){
          Casa c = desligar.get(i);
          c.possibilidade = false;
        }
      }
      
      ArrayList<Casa> possibilidades = selecionada.peca.movimentosPermitidos();
      
      for(int i = 0;i<possibilidades.size();i++){
        Casa c = possibilidades.get(i);
        c.possibilidade = true;
      }
      }
    }
}