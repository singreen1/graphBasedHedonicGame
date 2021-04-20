class Node{
  int index;
  NodeSet friends;
  float utility;
  Node(int i){
    index = i ;
  }
  int  checkUtility(NodeSet coalition){
    int sum = 0 ;
    boolean flag = false ;
    NodeSet c = new NodeSet();
    for(Node n : coalition)
      c.add(n);
    NodeSet nextStage = new NodeSet(this) ;
    int count = 0;
    NodeSet currentStage ;
    while(nextStage.length > 0){
      currentStage = nextStage ;
      nextStage = New NodeSet() ;
      count++;
      for(Node s : currentStage){
        for(Node n : s.friends)
          if(c.contains(n))
          nextStage.add(c.remove(n)) ;
        sum += nextStage.length / count ;
      }
    }
    return sum / coalition.length ;
  }
}


class NodeSet extends ArrayList<Node>{
  NodeSet(){
  }
  NodeSet(int n){
    for(int i = 0 ; i < n ; i++ )
      add(Node(i));
  }
  NodeSet(Node v){
    add(v);
  }
  NodeSet intersection(NodeSet ns){
    Nodeset ans = New NodeSet();
    for(Node n : this)
      if(ns.contains(n))
        ans.add(n);
    return ans ;
  }
}
