// new module header

enum FloatingTextID {};


struct FloatingText { 
  /// Creates a new Floating Text and returns the ID, use this id to manipulate further
  import static FloatingTextID New(Point* position, String text, FontType font = eFontbfZXout);
  /// Deletes a Floating Text by ID
  import static void Delete(FloatingTextID id);

  import static void SetPosition(FloatingTextID id, int x, int y);
  
  import static int GetX(FloatingTextID id);

  import static int GetY(FloatingTextID id);

  import static void SetText(FloatingTextID id, String text, FontType font = eFontbfZXout);
  
  import static void SetVisible(FloatingTextID id, bool visible);

  import static void ChangeText(FloatingTextID id, String text);

  import static void Shake(FloatingTextID id, float timing, int amplitude, TweenEasingType easingType=Tween_EASING_TYPE, TweenStyle style=Tween_STYLE, float startDelay=Tween_START_DELAY, TweenTimingType timingType=Tween_TIMING);

  import static void TweenPosition(FloatingTextID id, float timing, int toX, int toY, TweenEasingType easingType=Tween_EASING_TYPE, TweenStyle style=Tween_STYLE, float startDelay=Tween_START_DELAY, TweenTimingType timingType=Tween_TIMING);
  
  import static void TweenTransparency(FloatingTextID id, float timing, int toTransparency, TweenEasingType easingType=Tween_EASING_TYPE, TweenStyle style=Tween_STYLE, float startDelay=Tween_START_DELAY, TweenTimingType timingType=Tween_TIMING);
};
