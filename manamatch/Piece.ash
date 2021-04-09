// new module header

#define MAX_PIECES 2048

struct Piece {
  
  /// gets a random piece from the existing types, will probably be moved to a different place soon...  
  import static PieceType RandomPieceType();
  
  /// Creates a new Piece and returns the ID, use this id to manipulate further
  import static PieceID New(PieceType piece_type, int tsize, Point* xy, Point* posRowCol, BoardData* board);
  /// Deletes a Piece by ID
  import static void Delete(PieceID id);
  
  // methods to read and write manipulate piece RENDERING
  
  import static Point* GetXY(PieceID id);
  import static int GetX(PieceID id);
  import static int GetY(PieceID id);
  import static float GetScale(PieceID id);
  import static int GetTransparency(PieceID id);
  
  import static void SetXY(PieceID id, Point* p);
  import static void SetPosition(PieceID id, int x, int y);
  import static void SetScale(PieceID id, float scale);
  import static void SetTransparency(PieceID id, int transparency);
  import static void SetTsize(PieceID id, int tsize);
  
  
  // methods to set and get piece BEHAVIORS
  
  import static Point* GetRowCol(PieceID id);
  import static PieceType GetType(PieceID id);
  import static PieceState GetState(PieceID id); 
  
  import static void SetRowCol(PieceID id, Point* p);  
  import static void SetType(PieceID id, PieceType piece_type);
  import static void SetState(PieceID id, PieceState state);
  
  // utility methods
  
  import static void SyncXYfromRowCol(PieceID id);
  import static Point* PointXYfromRowCol(PieceID id);
  
  // actually render the piece by id
  
  import static void Render(PieceID id); 
};