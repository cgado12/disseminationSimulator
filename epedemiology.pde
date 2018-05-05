/*
NOTE: decide where to draw stuff
could call draw from init_Contagion
*/

void setup(){
  size(640, 480);
  settings s = new settings();

}

void draw(){
  Graph graph = new Graph(10);
  graph.buildErdosReyni(0.4);
  //graph.printGraph();

}
