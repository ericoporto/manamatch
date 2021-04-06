// new module header

#define MAX_PIECES 2048

struct Piece {
  import static PieceType RandomPieceType();
  
  import static PieceID New(PieceType piece_type, int tsize, Point* xy, Point* posRowCol, BoardData* board);
  import static void Delete(PieceID id);
  
  import static Point* GetXY(PieceID id);
  import static int GetX(PieceID id);
  import static int GetY(PieceID id);
  import static Point* GetRowCol(PieceID id);
  import static PieceType GetType(PieceID id);
  
  import static float GetScale(PieceID id);
  import static int GetTransparency(PieceID id);
  
  import static void SetTsize(PieceID id, int tsize);
  import static void SetXY(PieceID id, Point* p);
  import static void SetRowCol(PieceID id, Point* p);
  import static void SetScale(PieceID id, float scale);
  import static void SetTransparency(PieceID id, int transparency);
  import static void SetPosition(PieceID id, int x, int y);
  
  import static void SyncXYfromRowCol(PieceID id);
  import static Point* PointXYfromRowCol(PieceID id);
  
  import static void SetType(PieceID id, PieceType piece_type);
  
  import static void Render(PieceID id); 
};