public class Tabuleiro {

  Casa[][] casas;

  public Tabuleiro(int lado) {
    casas = new Casa[4][5];
    for (int i =0; i<4; i++) {
      for (int j =0; j<5; j++) {
        Casa c = new Casa();
        c.largura = lado;
        c.altura = lado;
        c.x = i;
        c.y = j;
        casas[i][j] = c;
        if ( (i+j)%2 == 0) {
          c.tipo = 1;
        } else {
          c.tipo = 2;
        }
        c.irParaEstadoNormal();
      }
    }
  }

  public void addPeca(int x, int y, Peca p) {
    Casa c = casas[x][y];
    p.x = x;
    p.y = y;
    c.peca = p;
  }

  public void desenhar() {
    for (int i =0; i<4; i++) {
      for (int j =0; j<5; j++) {
        Casa c = casas[i][j];
        c.desenhar();
      }
    }
  }
}