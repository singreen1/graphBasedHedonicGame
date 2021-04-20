int n = 4 ;
boolean[][] pref= {
  {false,true,false,false},
  {true,false,true,false},
  {false,true,false,true},
  {false,false,true,false}} ;
void setup(){
  NodeSet nodeset = New NodeSet(n) ;
  nodeset.makeFriends(pref);
  print(nodeset.get(1).friends);
}
