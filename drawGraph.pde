/*
  class that contains all functionality of drawing
  and updating the visualization
*/

public class drawGraph extends Graph {
  int n;
  float angle;
  float radius = 200;

  /* only ment to draw points */
  drawGraph(Graph g,int ran){
    /* Calculate the angle each point is on */
    n = g.numOfNodes;
    angle = TWO_PI/(float)n;

    for(Integer i =0; i < n; i++){
      float x = radius*sin(angle*i)+width/2;
      float y = radius*cos(angle*i)+height/2;
      fill(0,255,0);
      if(g.nodeStage.get(i)=="I"){
        fill(255,0,0);
      }
      if(g.nodeStage.get(i) =="R"){
        fill(0,0,255);
      }
      ellipse(x, y, 10, 10);
    }
    
    if( ran == 0 ){
      for(int src=0; src < n; src++){
        for( int dest: g.adjList[src]){
          drawLine(src,dest);
        }
      }
    }
    ran = 1;
  }

  /* draw lines */
  void drawLine(int source, int dest){

    float sX = radius*sin(angle*source)+width/2;
    float sY = radius*cos(angle*source)+height/2;
    float dX = radius*sin(angle*dest)+width/2;
    float dY = radius*cos(angle*dest)+height/2;

    line(sX,sY,dX,dY);
  }
}
