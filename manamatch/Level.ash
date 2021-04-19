// new module header
#define MAX_SIZE_LEVEL_STRING 512

#define MAX_LEVELS_ENDLESS 32
#define MAX_LEVELS_PUZZLE 16

enum LevelType {
  eLevelType_Endless, 
  eLevelType_Puzzle,   
  eLevelType_PuzzleEdit, 
};

managed struct LevelDetails {
  LevelType Type;
  int MaxSwaps;
  int ScoreThreshold;
  
  int LevelStringLength;
  char LevelStringChars[MAX_SIZE_LEVEL_STRING];
  import void SetLevelString(String str);
  import String GetLevelString();
};

struct Level {
  protected String _LevelString[MAX_LEVELS_PUZZLE];
  protected int _Threshold[MAX_LEVELS_ENDLESS];
  protected int _Level;
  protected int _LevelCount;
  protected LevelType _Type;
  
  readonly import attribute int Level;
  import int get_Level(); // $AUTOCOMPLETEIGNORE$
  
  import bool IsBeyondThreshold(int value);
  import bool LevelUp();
  import void PushLevel(LevelType type, int threshold, String levelString);
  import String GetLevelString();  
  import LevelDetails* GetLevelDetails();  
};

struct EndlessLevel extends Level {
  import bool IsScoreBeyondThreshold(int score);
  import void PushLevelEndless(int scoreThreshold, String typeProbability);
};

struct PuzzleLevel extends Level {
  import bool IsSwapsBeyondThreshold(int swaps);
  import void PushLevelPuzzle(int swaps, String boardString);
};