// new module header
#define MAX_POINT_ARRAY_COUNT 512

managed struct PointArray {
  int _Item_X[MAX_POINT_ARRAY_COUNT]; // $AUTOCOMPLETEIGNORE$
  int _Item_Y[MAX_POINT_ARRAY_COUNT]; // $AUTOCOMPLETEIGNORE$
  
  int Count;
  
  import attribute Point* Item[];
  import Point* geti_Item(int index); // $AUTOCOMPLETEIGNORE$
  import void seti_Item(int index, Point* value); // $AUTOCOMPLETEIGNORE$
 
 
  import static PointArray* Create(int count = 0);
  import PointArray* Join(PointArray* arr);
  import PointArray* Unique();
  import void Push(Point* item);
  import void Pop();
};