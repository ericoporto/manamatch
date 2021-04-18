// new module header

//Matrix* matrix,

managed struct Board extends BoardData{
  import static Board* Create(Point* pxPosition, Point* widthHeight, Point* rowsCols, Matrix* mxPieces, int tileSize, TypeRandomizer* typeRandomizer);
  
  import static void Clear(Matrix* mxPieces);
  
  import void ResizeRowCol(Matrix* mxPieces, int numRows, int numCols);
  
  import void RandomFill(Matrix* mxPieces, TypeRandomizer* typeRandomizer);
  import bool FromString(Matrix* mxPieces, String boardDescription);
  import String ToString(Matrix* mxPieces);  
  import Point* PosToXY(int row, int col);
  import Point* XYToPos(int x, int y);  
};