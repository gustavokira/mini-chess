
public class Casa {
  int x;
  int y;
  int tipo;
  int largura;
  int altura;
  Peca peca;
  color corFundo;

  final int PRETO = 0;
  final int BRANCO = 1;

  final int EMCIMA = 0;
  final int POSSIBILIDADE = 1;
  final int SELECIONADO = 2;
  final int NORMAL = -1;

  int estado = NORMAL;

  public Casa() {
  }

  public boolean estaDentro(float cx, float cy) {
    if ( (cx > x*largura) && 
      (cx < (x*largura)+largura) &&
      (cy > y*altura) &&
      (cy < (y*altura)+altura)
      ) {
      estado = EMCIMA;
      return true;
    } else {
      estado = NORMAL;
      return false;
    }
  }
  public boolean estaSelecionado() {
    if (estado == SELECIONADO)return true;
    else return false;
  }
  public boolean estaEmCima() {
    if (estado == EMCIMA)return true;
    else return false;
  }
  public boolean estaComoPossibilidade() {
    if (estado == POSSIBILIDADE)return true;
    else return false;
  }

  public void irParaEstadoEmCima() {
    estado = EMCIMA;
  }
  public void irParaEstadoSelecionado() {
    estado = SELECIONADO;
  }
  public void irParaEstadoPossibilidade() {
    estado = POSSIBILIDADE;
  }
  public void irParaEstadoNormal() {
    estado = NORMAL;
  }

  public void desenhar() {
    color cor = -1;


    if (estado == EMCIMA) {
      cor = color(255, 200, 200);
    } else if (estado == SELECIONADO) {
      cor = color(200, 255, 200);
    } else if (estado == POSSIBILIDADE) {
      cor = color(255, 255, 255);
    } else {
      if (tipo == BRANCO) {
        cor = color(200, 200, 255);
      } else {
        cor = color(150, 150, 255);
      }
    }
    fill(cor);
    rect(x*largura, y*altura, altura, largura);
    if (peca != null) {
      image(peca.img, x*largura, y*altura, altura, largura);
    }
  }
}