// new module header
managed struct Score {
  int Value;
  int ChainInteraction;
  
  import void StartChain();
  import void NextChain();
  import void ScoreCellMatches(int count, int cells[]);
  
  import static Score* Create();
};

