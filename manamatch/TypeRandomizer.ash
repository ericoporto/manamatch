// new module header
managed struct TypeRandomizer {
  protected float Probability[ePieceMAXTYPES];
  protected float AccProbability[ePieceMAXTYPES];
  
  import void SetProbability(String str);
  import static TypeRandomizer* New(String typeProbabilities);
  
  import PieceType Get();  
};