/*
NOTE: decide where to draw stuff
could call draw from init_Contagion
*/

void setup(){
  size( 640,480 );
}

void draw(){
  settings s = new settings();
  Graph graph = new Graph( 10 );
  graph.buildErdosReyni( 0.4 );
  graph.init_Contagion( 2, 1, 0.3, 2 );
  graph.printGraph();

  // implement class that extends Graph
  // which will draw and update the graph

}
