// new module header
#define MAX_INT_ARRAY_COUNT 512

managed struct IntArray {
  int Item[MAX_INT_ARRAY_COUNT];
  int Count;
  
  import static IntArray* Create(int count = 0);
  import IntArray* Join(IntArray* arr);
  import IntArray* Unique();
  import void Push(int item);
};