// new module header
#define MAX_LEVELS_ENDLESS 32

struct EndlessLevel{
  String Probability[MAX_LEVELS_ENDLESS];
  int ScoreThreshold[MAX_LEVELS_ENDLESS];
  int Level;
  int LevelCount;
  import bool IsScoreBeyondThreshold(int score);
  import void LevelUp();
  import void PushLevel(int scoreThreshold, String typeProbability);
  import String GetLevelProbabilities();
};