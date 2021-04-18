// new module header

// The input layer deals primarily with the mouse input but has also other functions, 
// it understands logically enough for input and has functions so the stage can poll it

managed struct InputLayer {
  int X;
  int Y;
  int Width;
  int Height;
  int TileSize;
  int NumRows;
  int NumCols;
  
  bool SwapEnabled;
  bool SetPieceEnabled;
  
  int FromCell_Row;
  int FromCell_Col;
  int ToCell_Row;
  int ToCell_Col;
  
  
  protected int _MouseReleaseX;
  protected int _MouseReleaseY;
  protected int _MouseClickedX;
  protected int _MouseClickedY;
  protected bool _MouseLeftDown;
  protected bool _MouseSwapUnchecked;
  protected bool _MouseSetPieceUnchecked;
  
  import static InputLayer* Create(int x, int y, int width, int height, int tile_size, int numRows, int numCols);
  
  import void AdjustSize(int x, int y, int width, int height, int tile_size, int numRows, int numCols);
  
  import Point* GetRowCol_FromXY(int x, int y);
  
  import void Update();
  import bool HasSwapped();
  import bool HasSetPiece();
};