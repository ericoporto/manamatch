// new module header

managed struct SwapCounter {
  protected FloatingTextID _FloatingTextID;
  protected bool _Visible;    
  protected int _Value;
  protected int _MaxSwaps;
  
  int X;
  int Y;
  
  import void SetPosition(int x, int y);
  
  import void CountOneSwap();
  import void UndoSwap();
  
  import attribute bool Visible;
  import bool get_Visible(); // $AUTOCOMPLETEIGNORE$  
  import void set_Visible(bool visible); // $AUTOCOMPLETEIGNORE$ 
    
  import attribute int MaxSwaps;
  import int get_MaxSwaps(); // $AUTOCOMPLETEIGNORE$  
  import void set_MaxSwaps(int maxSwaps); // $AUTOCOMPLETEIGNORE$  
  
  import attribute int Value;
  import int get_Value(); // $AUTOCOMPLETEIGNORE$  
  import void set_Value(int value); // $AUTOCOMPLETEIGNORE$  
  
  readonly import attribute FloatingTextID FloatingTextID;
  import FloatingTextID get_FloatingTextID(); // $AUTOCOMPLETEIGNORE$  
    
  import protected void _SyncFloatingTextValue();
  import void _InitFloatingText(); // $AUTOCOMPLETEIGNORE$
  
  import protected void _Shake();
    
  import void Delete();  
  import static SwapCounter* Create(Point* position);
};