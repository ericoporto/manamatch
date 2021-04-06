// new module header

struct Animator {
  
  /// animates the swap and returns time in ms of the animation
  import static float AnimateSwap(PieceID pieceA, PieceID pieceB);
  
  
  import static float AnimateRemove(BoardData* board, IntArray* pieces);
  
  import static float AnimateSlide(BoardData* board, IntArray* pieces);
  
  import static float AnimateCreate(BoardData* board, IntArray* pieces);
};