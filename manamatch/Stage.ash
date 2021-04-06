// new module header

// the stage holds most of the games rules, it understands the board, the pieces, the score and the input layer
// and performs the required logic to connect these

enum MatchDirection {
  eMD_Horizontal, 
  eMD_Vertical
};

enum GravityDirection {
  eGD_Down = 0, 
  eGD_Left, 
  eGD_Right, 
  eGD_Up,   
};

struct Stage {
  Board* Board;
  Matrix* MxPieces;
  Score* Score;
  InputLayer* InputLayer;
  GravityDirection GravityDir;
  bool ReplacePices;
  
  import void Init(int numRows, int numCols, int tileSize, GravityDirection dir = eGD_Down);
  
  import void PerformSwap(int row_a, int col_a, int row_b, int col_b);
  import void TrySwap(int from_row, int from_col, int to_row, int to_col);
  
  // I think most of the below will be protected
  import bool HasMatchAt(int row, int col);
  import IntArray* DetectMatchesInDir(MatchDirection dir);
  import void RemoveMatches();
  import PieceID CellAtDir(int row, int col,  GravityDirection dir = eGD_Down);
  import IntArray* SlideHoles(GravityDirection dir = eGD_Down);
  import IntArray* CreateNewPices(GravityDirection dir = eGD_Down);
  
  import protected Point* _GetSpawnPos(Point* emptyPos, IntArray* countsByLine, GravityDirection dir);
  import protected void _CheckAfterRemove();
  import protected void _CheckAfterTrySwap();
  import protected void _CheckAfterSlide();
  
  import int Render();
  import void Update();
};