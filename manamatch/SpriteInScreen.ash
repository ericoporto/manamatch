// new module header
struct SpriteInScreen { 
  int X;
  int Y;
  int Width;
  int Height;
  int Transparency;
  int Graphic;
  float Scale;
  
  import void RenderSprite();  
  import static void RenderInit();
  import static int RenderEnd();
};