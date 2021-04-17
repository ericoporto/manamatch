// new module header
#define MATRIX_MAX_CELLS 512

managed struct Matrix {
  int NumRows;
  int NumCols;
  int Cells [MATRIX_MAX_CELLS];
  import static Matrix* Create(int numRows, int numCols);
  import int GetCell(int row, int col);
  import void SetCell(int row, int col, int value);
  
  import IntArray* GetCells();
  
  import void Resize(int numRows, int numCols);
};