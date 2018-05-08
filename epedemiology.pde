/*
NOTE: decide where to draw stuff
could call draw from init_Contagion
*/

/* control the animation */
int nextTime;
final int step = 500;

void setup(){
  // size( 640,480 );
  size( 500,500 );
  settings s = new settings();
  graph.buildErdosReyni( graph, 0.2 );
  frameRate(1);
}

void draw(){
  /*
    build graph visualization ( only points )
  */
  drawGraph dg = new drawGraph(graph);


}
