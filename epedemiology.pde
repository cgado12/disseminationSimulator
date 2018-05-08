/*
  visualize the SIR model

  TODO:
   - make more accurate according to SIR model
   - use "t1" and find better way to represent graph(clustering)
   - consider extending this project or creating one with algos
   from ml class 
*/

void setup(){
  size( 500,500 );
  settings s = new settings();
  frameRate(1);
  g.generateSeeds( seeds );
  g.buildErdosReyni( g, 0.4);
}

void draw(){
  /* Hold down a key to see the enture visualization */
  if(keyPressed == true) {
    /* build graph visualization ( only points ) */
    drawGraph dg = new drawGraph(g,ran);

    /* start contagion */
    if(days < t){
      while( findI != 1 ){
        /* find one of the infected */
        if (g.nodeStage.get( i ) == "I" && g.isVisited( visited,i ) == 0 ){
          current = i;
          findI = 1;
        }
        i++;
      }
      /* infect neighbors */
      for(Integer node: g.adjList[ current ] ){
        if(g.nodeStage.get(node) == "R"){
          continue;
        }
        if(g.nodeStage.get(node) == "I"){
          continue;
        }
        if(g.getProbability( p ) ){
          g.nodeStage.put( node, "I" );
        }
      }

      g.nodeStage.put(current, "R");
      visited[current] = 1;
      //g.printGraph();

      i = 0;
      ran = 1;
      findI = 0;
      days++;
      redraw();
    }else {
      noLoop();
    }

  }
}
