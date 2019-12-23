class TripComputer{
float gearRatio;
float totalTravelledDistance;// odometer will be drawn on screen
float rpm;
float X;
float pastX;
float Y;
float pastY;
float distanceTravelled; // the travelled distance per second, to be used when updating total distance, and to calculate km/liter in fuel computer class
String quadrant;

float getCurrentSpeed(float RPM, float ratio, float radius){
  float speed = (RPM/60)*(1/ratio)*2*PI*radius*3.6;
  return speed;
}

void updateTotalDistance(){
  if(currentData.currentIndex==0){
  totalTravelledDistance = 0;}
  
  distanceTravelled = speed.currentValue/3600;
  totalTravelledDistance += distanceTravelled;
  
}

String calculateDirection(){//determine direction the vehicle is moving
if (currentData.currentIndex==0);
quadrant = " ";
if (currentData.currentIndex>0){
  
    if(pastX>X){
      if(pastY>Y){
        quadrant = "SW";}
        if(pastY<Y){
          quadrant = "NW";}
         if(pastY==Y){
           quadrant = "W";}
    }
    if(pastX<X){
      if(pastY>Y){
       quadrant = "SE";}
       if(pastY<Y){
         quadrant = "NE";}
         if (pastY==Y){
           quadrant = "E";}
    }
    if (pastX==X){
      if(pastY>Y){
        quadrant = "S";}
        if (pastY<Y){
          quadrant = "N";}
          if (pastY==Y){
            quadrant = " ";}
    }  
}
   pastX = X;
   pastY = Y;
    return quadrant;
   
}
}
