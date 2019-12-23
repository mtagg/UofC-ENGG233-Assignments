class Point{
float x;
float y;
float z;
}

void FillPoint (Point p){
p.x = random(1,100);
p.y = random(1,100);
p.z = random(1.100);
}

float DistanceBetweenPoints (Point pt1, Point pt2){
 float x = pt1.x-pt2.x;
 float y = pt1.y-pt2.y;
 float z = pt1.z-pt2.z;
 float distance = sqrt(pow(x,2)+pow(y,2)+pow(z,2));
 return distance;
}


void setup(){
  
  Point a = new Point();
  Point b = new Point();
  
  FillPoint (a);
  FillPoint (b);
  
  float distance = DistanceBetweenPoints(a,b);
  println("The distance between the two random points is:  "+distance);



}
