// new module header
struct BoardEditor {
  import static void Show();
  import static void Hide();
  
  import static void Control_OnClick(GUIControl *control, MouseButton button);
  import static void Sdlr_OnChange(GUIControl *control);
  
  import static void Init(Point* pxPosition, Point* widthHeight, GravityDirection dir = eGD_Down);
  import static int Render();
  import static int GetBgLayer();
  import static void Update();
  import static void Delete();
};