/*
  Graph container to create graph then
  initializae it with nodes.

  https://www.quora.com/Is-it-possible-to-generate-
  a-random-large-social-network-graph-that-is-statistically
  -indistinguishable-from-Facebooks-social-network-graph

  - - - - - - - - - - - - - - - - - -
  g: original graph object
  t: total length of the "infection" spreading
  t1: length of time a node is to be infecitous
  p: probability of a node to infect its neighbor
  s: the number of seeds to generate to be infected on init
*/
/* Initialize necessary components: mess of globals */
int t = 8;
int t1 = 0; // implement this
float p = 0.3;
int seeds = 1;
Graph g = new Graph( 30 );
int[] visited = g.initVisited();
int ran = 0;
int findI = 0;
int i =0;
int current = 9999;
int days = 0;


public class Graph {
  int numOfNodes;
  /* Array of lists for Adjacency List Representation */
  LinkedList<Integer> adjList[];
  Map<Integer, String> nodeStage;

  Graph(){}

  /* Constructor adds # of nodes specified */
  Graph( int v ) {
      numOfNodes = v;
      adjList = new LinkedList[v];
      for (int i=0; i<v; ++i)
          adjList[i] = new LinkedList();

      nodeStage = new HashMap<Integer,String>();
      for (Integer i = 0; i< v; i++){
        nodeStage.put(Integer.valueOf(i),"S");
      }
  }

  /* function to check whether a node is visited or not */
  int isVisited(int[] visited, int i){
    if( visited[i] == 0){
      return 0;
    }
    return 1;
  }

  /* initializes a new visited array */
  int[] initVisited(){
    int[] visited = new int[numOfNodes];
    return visited;
  }

  /* adds edge to graph by connecting in linked list */
  void addEdge(int source, int dest) {
      adjList[source].add(dest);
  }

  /* returns the probability of a given event happening */
  boolean getProbability(Float p){
    Random rand = new Random();
    return  (rand.nextDouble() <= p);
  }

  /* implements Erdos Reyni by way of edge adding */
  void buildErdosReyni( Graph g,float p ) {
    Random rand = new Random();
    for( int i = 0; i < numOfNodes;i++ ){
      for( int j = 0; j < numOfNodes; j++ ){
        /* probability of the node connecting to another */
        if( getProbability( p ) ){
          addEdge(i,j);
        }
      }
    }
  }

 /* prints the graph to ensure functionality */
  void printGraph() {
    println(" - - - - - - - - - - - - - - - - - - - - - - - -");
    for(int v = 0; v < numOfNodes; v++) {
      System.out.println("current node: "+ v +  " status: " + nodeStage.get(v));
      System.out.print("Neighbors: ");
      for(Integer node: adjList[v]){
        System.out.print(" -> "+ node + "|" + nodeStage.get(node));
      }
      System.out.println("\n");
    }
  }

  /* generates the seeds to which are infected in the graph */
  void generateSeeds( int s ){
    ArrayList<Integer> seeds = new ArrayList<Integer>();
    Random rand = new Random();

    for(int i =0;i<s;i++){
      int s1 = rand.nextInt(numOfNodes);
      nodeStage.put(Integer.valueOf(s1),"I");
    }
  }
}
