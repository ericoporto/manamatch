// new module header
#define MAX_INT_ARRAY_COUNT 512

managed struct IntArray {
  int Item[MAX_INT_ARRAY_COUNT];
  int Count;
  
  import static IntArray* Create(int count = 0);
  import IntArray* Join(IntArray* arr);
  import bool Contain(int element);
  import IntArray* Intersect(IntArray* arr);
  import IntArray* Difference(IntArray* arr);
  import IntArray* Unique();
  import bool IsEmpty();
  import int Head();
  import void Push(int item);
  import void Pop();
};