// new module header
struct SpriteInScreen {
  int X;
  int Y;
  int Width;
  int Height;
  int Graphic;
  
  import void RenderSprite();
  
  import static void RenderInit();
  import static int RenderEnd();
};