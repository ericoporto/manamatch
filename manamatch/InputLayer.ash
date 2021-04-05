// new module header
managed struct InputLayer {
  int X;
  int Y;
  int Width;
  int Height;
  int TileSize;
  int NumRows;
  int NumCols;
  
  int FromCell_Row;
  int FromCell_Col;
  int ToCell_Row;
  int ToCell_Col;
  
  import static InputLayer* Create(int x, int y, int width, int height, int tile_size, int numCols, int numRows);
  
  import Point* GetRowCol_FromXY(int x, int y);
  
  import bool HasSwapped();
};