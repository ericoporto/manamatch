// new module header

enum PieceID {};

enum PieceType {
  ePiece_None=0, 
  ePiece_T1, 
  ePiece_T2, 
  ePiece_T3, 
  ePiece_T4, 
  ePiece_T5, 
  ePieceMAXTYPES
};

struct PieceData extends SpriteInScreen {
  PieceID ID;
  BoardData* board;
  PieceType type;
  int row;
  int col;
  int tsize;
};