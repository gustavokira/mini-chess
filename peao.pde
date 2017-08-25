public class Peao extends Peca {

  public Peao(Tabuleiro t, int c) {
    super(t, c);
    if (c == 1) {
      img = loadImage("peao-branco.png");
    } else {
      img = loadImage("peao-preto.png");
    }
  }

  @Override
    public ArrayList<Casa> movimentosPermitidos() {
    ArrayList<Casa> casas = new ArrayList<Casa>();
    if (cor == 1) {
      if (tabuleiro.casas[x][y+1].peca == null) {
        casas.add(tabuleiro.casas[x][y+1]);
      }
    } else {
      if (tabuleiro.casas[x][y-1].peca == null) {
        casas.add(tabuleiro.casas[x][y-1]);
      }
    }
    return casas;
  }
}