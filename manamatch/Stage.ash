// new module header

// the stage holds most of the games rules, it understands the board, the pieces, the score and the input layer
// and performs the required logic to connect these

enum MatchDirection {
  eMD_Horizontal, 
  eMD_Vertical
};

struct Stage {
  Board* Board;
  Matrix* MxPieces;
  Score* Score;
  InputLayer* InputLayer;
  
  import void Init(int numRows, int numCols, int tileSize);
  import void PerformSwap(int row_a, int col_a, int row_b, int col_b);
  import void TrySwap(int from_row, int from_col, int to_row, int to_col);
  import bool HasMatchAt(int row, int col);
  import IntArray* DetectMatchesInDir(MatchDirection dir);
  import void RemoveMatches();
  
  import int Render();
  import void Update();
};