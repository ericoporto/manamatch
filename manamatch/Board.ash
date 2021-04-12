// new module header

//Matrix* matrix,

managed struct Board extends BoardData{
  import static Board* Create(Point* pxPosition, Point* widthHeight, Point* rowsCols, Matrix* mxPieces, int tileSize, TypeRandomizer* typeRandomizer);
  
  import static void Clear(Matrix* mxPieces);
  
  import void RandomFill(Matrix* mxPieces, TypeRandomizer* typeRandomizer);
  import Point* PosToXY(int pos_x, int pos_y);
  import Point* XYToPos(int x, int y);  
};