/*
  class to take care of drawing and
  setting the position of the graph
*/


public class settings {

  settings(){
    background(255);
    stroke(0, 0, 0);
    strokeWeight(2);
    noLoop();
  }
  
  setBackground(int i){
    background(i);
  }

  setStrokeWeight(int i){
    strokeWeight(i);
  }

  setfill(int i){
    fill(i)
  }

  setStroke(int i, int j, int k){
    stroke(i,j,k);
  }

  setStroke(int i){
    stroke(i);
  }
}
