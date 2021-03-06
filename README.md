# info/infection simulator
A visualization in processing (java) that simulates how things spread inside a network.
  -`https://processing.org`

The following is the visualization where:
  - it is spread from one node
  - each node has a 50% chance to be connected to any other
  - the infection spreads for "8 days"
  - 30% chance of infecting another node


![alt tag](gif/infect.gif)

Green: Susceptible <br>
Red: Infected <br>
Blue: Recovered <br>

#### Concept
The network is build from the concept of generating a Random graph,
in this case I am implementing an Erdos Renyi generator.

  - Erdos Reyni
    - `https://en.wikipedia.org/wiki/Erdős–Rényi_model`
  - SIR Model
    - `https://en.wikipedia.org/wiki/Compartmental_models_in_epidemiology`

The produced graph simulates a social network.

### Setting up the Environment

The easiest way to setup the environment is to go to the above processing
website and install the processing development Environment.
  - `https://processing.org/download/`

To run, just clone the repository any open the files inside the processing
environment and click the "play" button.
