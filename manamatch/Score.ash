// new module header
managed struct Score {
  int Value;
  int ChainInteraction;
    
  import void StartChain();
  import void NextChain();
  import void ScoreCellMatches(IntArray* pieces);
  
  import static Score* Create();
};

