/*
  class to take care of drawing and
  setting the position of the graph

  TODO: add features to make the visualization more
    appealing. borders|legend|mouse interactions
    prepare for more 'views' to dislay graph differently
    or even display more than one type of graph.
*/

import java.io.*;
import java.util.*;
import java.lang.Math.*;
import processing.data.JSONObject;
import processing.data.JSONArray;

public class settings {

  settings(){
    background(200);
    stroke(0, 0, 0);
    strokeWeight(0.5);
  }

  void setBackground(int i){
    background(i);
  }

  void setStrokeWeight(int i){
    strokeWeight(i);
  }

  void setfill(int i){
    fill(i);
  }

  void setStroke(int i, int j, int k){
    stroke(i,j,k);
  }

  void setStroke(int i){
    stroke(i);
  }
}
