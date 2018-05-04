/*
replicate the info dissemination project in processing
first code a graph generator
graph G < [nodes N(id, stage)]
SIR model -> various fucntions

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
