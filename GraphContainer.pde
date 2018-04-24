/*
  Graph container to create graph then
  initializae it with nodes.

  https://www.quora.com/Is-it-possible-to-generate-
  a-random-large-social-network-graph-that-is-statistically
  -indistinguishable-from-Facebooks-social-network-graph
*/

import java.io.*;
import java.util.*;

// This class represents a directed graph using adjacency list
// representation
public class Graph {
  int numOfNodes;   // No. of vertices
  // Array of lists for Adjacency List Representation
  LinkedList<Integer> adjList[];
  Map<Integer, String> nodeStage;

  // Constructor
  Graph(int v) {
      numOfNodes = v;
      adjList = new LinkedList[v];
      for (int i=0; i<v; ++i)
          adjList[i] = new LinkedList();

      nodeStage = new HashMap<Integer,String>();
      for (Integer i = 0; i< v; i++){
        nodeStage.put(Integer.valueOf(i),"S");
      }
  }


  //Function to add an edge into the graph
  void addEdge(int v, int w) {
      adjList[v].add(w);  // Add w to v's list.
  }

  void buildErdosReyni(float prob) {
    Random rand = new Random();
    for( int i = 0; i < numOfNodes;i++ ){
      for( int j = 0; j < numOfNodes; j++ ){
        // probability of the node connecting to another
        if( rand.nextDouble() <= prob ){
            addEdge(i,j);
        }
      }
    }
  }

  void printGraph() {
    for(int v = 0; v < numOfNodes; v++) {
      System.out.println("Adjacency list of vertex "+ v);
      System.out.print("head");
      for(Integer node: adjList[v]){
        System.out.print(" -> "+node);
      }
      System.out.println("\n");
    }
  }

  /*
    t: total length of the "infection" spreading
    t1: length of time a node is to be infecitous
    p: probability of a node to infect its neighbor
    s: the number of seeds to generate to be infected on init
  */
  void init_Contagion(int t, int t1, float p, int s){

    // turn this into a function
    ArrayList<int> seeds = new ArrayList<int>();
    for(int i =0;i<s;i++){
      int s1 = rand.nextInteger(numOfNodes);
      seeds.add(s1);
      //nodeStage.put(Integer.valueOf(i),"I");
    }

    while(t > 0){
      /*
        int numOfNodes;   // No. of vertices
        // Array of lists for Adjacency List Representation
        LinkedList<Integer> adjList[];
        Map<Integer, String> nodeStage;

        iterate noteStage for I and then check neighbors in adjlist
        check neighbors for length of node being infectious
        if probability is met -> infect the node (may need helper function)
      */
    }
  }
}
