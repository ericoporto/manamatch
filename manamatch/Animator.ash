// new module header

struct Animator {
  
  /// animates the swap and returns time in ms of the animation
  import static float AnimateSwap(PieceID pieceA, int rowA, int colA, PieceID pieceB, int rowB, int ColB);
  
  
  import static float AnimateRemove(BoardData* board, IntArray* pieces);
  
  import static float AnimateSlide(BoardData* board, IntArray* pieces);
  
  import static float AnimateCreate(BoardData* board, IntArray* pieces);
};