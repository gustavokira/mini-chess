public class Rei extends Peca {

  public Rei(Tabuleiro t, int c) {
    super(t, c);
    if (c == 1) {
      img = loadImage("rei-branco.png");
    } else {
      img = loadImage("rei-preto.png");
    }
  }

  @Override
    public ArrayList<Casa> movimentosPermitidos() {
    ArrayList<Casa> casas = new ArrayList<Casa>();

    if (y-1 > 0) {
      casas.add(tabuleiro.casas[x][y-1]);
    }
    if (x-1 > 0) {
      casas.add(tabuleiro.casas[x-1][y]);
    }

    if (y+1 < tabuleiro.casas[0].length) {
      casas.add(tabuleiro.casas[x][y+1]);
    }
    if (x+1 < tabuleiro.casas.length) {
      casas.add(tabuleiro.casas[x+1][y]);
    }

    return casas;
  }
}