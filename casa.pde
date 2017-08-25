
public class Casa{
  int x;
  int y;
  int tipo;
  int largura;
  int altura;
  Peca peca;
  color corFundo;
  
  boolean selecionado;
  boolean possibilidade;
  boolean emCima;
  
  public Casa(){
    selecionado = false;
    emCima = false;
    possibilidade = false;
  }
  
  public boolean estaDentro(float cx,float cy){
    if( (cx > x*largura) && 
        (cx < (x*largura)+largura) &&
        (cy > y*altura) &&
        (cy < (y*altura)+altura)){
          emCima = true;
        return true;
    }else{
      emCima = false;
      return false;
    }
  }
  public void irParaEstadoEmCima(){
    corFundo = color(255,200,200); 
  }
  public void irParaEstadoSelecionado(){
    corFundo = color(200,255,200); 
  }
  public void irParaEstadoPossibilidade(){
    corFundo = color(255,255,255); 
  }
  public void irParaEstadoNormal(){
    if(tipo == 1){
      corFundo = color(200,200,255); 
    }else{
      corFundo = color(150,150,255);
    }
  }
}