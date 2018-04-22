/*
replicate the info dissemination project in processing
first code a graph generator
graph G < [nodes N(id, stage)]
SIR model -> various fucntions

NOTE: decide where to draw stuff
could call draw from init_Contagion

*/

import java.io.*;
import java.util.*;
import java.lang.Math.*;
import processing.data.JSONObject;
import processing.data.JSONArray;



void setup(){
  background(255);
  size(640, 480);
  stroke(0, 0, 0);
  strokeWeight(2);
  noLoop();
}

void draw(){
  Graph graph = new Graph(10);
  graph.buildErdosReyni(0.4);
  //graph.printGraph();

}
