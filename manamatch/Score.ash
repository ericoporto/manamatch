// new module header
managed struct Score {
  protected FloatingTextID _FloatingTextID;
  protected bool _Visible;    
  protected int _Value;
  
  int ChainInteraction;
  int X;
  int Y;  
  
  import void SetPosition(int x, int y);
  
  import attribute bool Visible;
  import bool get_Visible(); // $AUTOCOMPLETEIGNORE$  
  import void set_Visible(bool visible); // $AUTOCOMPLETEIGNORE$ 
  
  import attribute int Value;
  import int get_Value(); // $AUTOCOMPLETEIGNORE$  
  import void set_Value(int value); // $AUTOCOMPLETEIGNORE$  
  
  readonly import attribute FloatingTextID FloatingTextID;
  import FloatingTextID get_FloatingTextID(); // $AUTOCOMPLETEIGNORE$  
    
  import protected void _SyncFloatingTextValue();
  import void _InitFloatingText(); // $AUTOCOMPLETEIGNORE$  
    
  import protected void _Shake();
  
  import void StartChain();
  import void NextChain();
  import void ScoreCellMatches(IntArray* pieces, Board* board);
  
  import void Delete();  
  import static Score* Create(Point* position);
};

