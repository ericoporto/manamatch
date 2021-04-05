// new module header
enum PieceType {
  ePiece_None=0, 
  ePiece_T1, 
  ePiece_T2, 
  ePiece_T3, 
  ePiece_T4, 
  ePiece_T5, 
  ePieceMAXTYPES
};

enum PieceID {};

struct Piece {
  import static PieceType RandomPieceType();
  
  import static PieceID New(PieceType piece_type, int tsize, Point* xy, Point* posRowCol, BoardData* board);
  import static void Delete(PieceID id);
  
  import static Point* GetXY(PieceID id);
  import static Point* GetRowCol(PieceID id);
  import static PieceType GetType(PieceID id);
  
  import static void SetTsize(PieceID id, int tsize);
  import static void SetXY(PieceID id, Point* p);
  import static void SetRowCol(PieceID id, Point* p);
  
  import static void SyncXYfromRowCol(PieceID id);
  import static Point* PointXYfromRowCol(PieceID id);
  
  import static void SetType(PieceID id, PieceType piece_type);
  
  import static void Render(PieceID id);
  import static void Update(PieceID id);
  
  import static void TweenPosition(PieceID id, float timing, int toX, int toY, TweenEasingType easingType=Tween_EASING_TYPE, TweenStyle style=Tween_STYLE, float startDelay=Tween_START_DELAY, TweenTimingType timingType=Tween_TIMING);
};