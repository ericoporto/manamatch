// new module header
managed struct Matrix {
  int NumRows;
  int NumCols;
  int Cells [2048];
  import static Matrix* Create(int numRows, int numCols);
  import int GetCell(int row, int col);
  import void SetCell(int row, int col, int value);
};