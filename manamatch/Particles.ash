// new module header
enum ParticleID { };

enum Particle_TicksToLive {
  ePTtoT_Forever = -999
};

struct Particle {
  
  import static ParticleID New(int x, int y, int graphic, Particle_TicksToLive ticks_to_live = ePTtoT_Forever);
  
  import static void Delete(ParticleID id);
  
  import static void TweenPosition(ParticleID id, float timing, int toX, int toY, TweenEasingType easingType=Tween_EASING_TYPE, TweenStyle style=Tween_STYLE, float startDelay=Tween_START_DELAY, TweenTimingType timingType=Tween_TIMING);
  
  import static void TweenTransparency(ParticleID id, float timing, int toTransparency, TweenEasingType easingType=Tween_EASING_TYPE, TweenStyle style=Tween_STYLE, float startDelay=Tween_START_DELAY, TweenTimingType timingType=Tween_TIMING);
  
};