/*
  class to take care of drawing and
  setting the position of the graph

  imports are here as well
*/


import java.io.*;
import java.util.*;
import java.lang.Math.*;
import processing.data.JSONObject;
import processing.data.JSONArray;


public class settings {

  settings(){
    background(255);
    stroke(0, 0, 0);
    strokeWeight(2);
    noLoop();
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
