// new module header

enum PieceID {};

enum PieceState {
  ePState_Normal=0, 
  ePState_Removing, 
};

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
  PieceState State;
  int row;
  int col;
  int tsize;  
};