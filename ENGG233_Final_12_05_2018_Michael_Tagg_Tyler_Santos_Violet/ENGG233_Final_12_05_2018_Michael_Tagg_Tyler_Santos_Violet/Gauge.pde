class Gauge{
  float maximum;
  float minimum;
  float currentValue;
  float x;
  float y;
  color maxColor;
  color minColor;
  color midColor;
  
  Gauge (){
    maximum=0;
    minimum=0;
    currentValue=0;
    x=0;
    y=0;
    maxColor=(255);
    minColor=(255);
    midColor=(255);
  }
  
  Gauge (float max, float min, float X, float Y, color Max, color Min, color Mid){
    maximum=max;
    minimum=min;
    x=X;
    y=Y;
    currentValue=0;
    maxColor = Max;
    minColor = Min;
    midColor = Mid;
  }
    
    
    
 
float SetCurrentValue(float newValue){  
    float currentValue = 0;
    if (newValue<=maximum&&newValue>=minimum){
    currentValue=newValue;}
    return currentValue;    
  }
  
void drawGauge(float value){   
    if (value>= (maximum*.85)){     
    fill(maxColor);}
        if (value<(maximum*.85)&&value>(maximum*.15)){
        fill(midColor);}    
            if(value<=(maximum*.15)){
            fill(minColor);}
    
   textSize(50); 
   text(value,x,y); 
  }

  


}
