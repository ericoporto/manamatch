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
  protected TypeRandomizer* TypeRandomizer;
  protected DynamicSprite* RenderSprite;
  protected DynamicSprite* BgSprite;
  protected Board* Board;
  protected Matrix* MxPieces;
  Score* Score;
  protected InputLayer* InputLayer;
  GravityDirection GravityDir;
  bool ReplacePieces;
  bool CountMoves;  
  protected bool IsEditMode;
  PieceType PieceTypeEditMode;
  
  protected GUI* ScoreGui;
  protected Label* ScoreLabel;
   
  import void Delete();
  import void Init(Point* pxPosition, Point* widthHeight, Point* rowCols, int tileSize, String levelDescription = 0, GravityDirection dir = eGD_Down);
  
  import void SetTypeProbabilities(String typeProbabilities);
  import void LoadBoardFromString(String boardStr);
  import String GetBoardString();
  
  import void SetEditMode(bool isEdit);
  
  import Point* GetRowColSize();
  import void ResizeRowCol(int numRows, int numCols);
  
  import void PerformSwap(int row_a, int col_a, int row_b, int col_b);
  import void TrySwap(int from_row, int from_col, int to_row, int to_col);
  
  import bool HasMatchAt(int row, int col);
    
  /// this removes any leftovers if they exist...
  import protected void RemoveRemovingPieces();
  
  // I think most of the below will be protected
  import protected void _SetPiece(int row, int col, PieceType type);
  import protected void UpdateBgLayer();
  import protected void DeletePiece(PieceID id);
  import protected IntArray* DetectMatchesInDir(MatchDirection dir);
  import protected void RemoveMatches();
  import protected PieceID CellAtDir(int row, int col,  GravityDirection dir = eGD_Down);
  import protected IntArray* SlideHoles(GravityDirection dir = eGD_Down);
  import protected IntArray* CreateNewPices(GravityDirection dir = eGD_Down);
  
  import protected void UpdateVisualScore();
  import protected Point* _GetSpawnPos(Point* emptyPos, IntArray* countsByLine, GravityDirection dir);
  import protected void _CheckAfterRemove();
  import protected void _CheckAfterTrySwap();
  import protected void _CheckAfterSlide();
  
  
  protected Timer* _TimerAfterTrySwap;
  protected Timer* _TimerAfterRemove;
  protected Timer* _TimerAfterSlide;
  protected IntArray* _CellsToRemove;
  protected bool _TwiceRemoveSlide;
  
  import int GetBgLayer();
  import int Render();
  import void Update();
};