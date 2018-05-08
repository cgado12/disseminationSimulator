/*
  class that contains all functionality of drawing
  and updating the visualization
*/

public class drawGraph extends Graph {
  int n;
  float angle;
  float radius = 190;


  /* only ment to draw points */
  drawGraph(Graph g){
    /* Calculate the angle each point is on */
    n = g.numOfNodes;
    angle = TWO_PI/(float)n;

    fill(0,255,0);
    for(Integer i =0; i < n; i++){
      float x = radius*sin(angle*i)+width/2;
      float y = radius*cos(angle*i)+height/2;
      ellipse(x, y, 10, 10);
    }
  }

  /* draw lines and update point colors */
  void drawLine(int source, int dest){

    float sX = radius*sin(angle*source)+width/2;
    float sY = radius*cos(angle*source)+height/2;
    float dX = radius*sin(angle*dest)+width/2;
    float dY = radius*cos(angle*dest)+height/2;

    line(sX,sY,dX,dY);
  }

  void updateStage(){

    /* Calculate the angle each point is on */
    float angle = TWO_PI/(float)n;
    float[][] xyArray; // Declare an array

      // CREATE A LIST OF x & y CO-ORDINATES
      // Setup the array dimentions
      xyArray = new float [n][3];
      for(int i=0;i<n;i++) {
        float x = radius*sin(angle*i)+width/2;
        float y = radius*cos(angle*i)+height/2;
        xyArray[i][0] = x; // Store the x co-ordinate
        xyArray[i][1] = y; // Store the x co-ordinate
        xyArray[i][2] = 0.0;
      }

      // Draw the shape
      for(int i=0;i<n;i++){
        float x = xyArray[i][0];
        float y = xyArray[i][1];
        for(int ii=i+1;ii<n;ii++){

            float xx = xyArray[ii][0];
            float yy = xyArray[ii][1];
            strokeWeight(1);
            line(x, y, xx, yy);

        }
        strokeWeight(1);
        ellipse(x, y, 10, 10);
      }
  }

}
