import org.gicentre.utils.stat.*;

//global variables
String BMW;
String Ford;
char Selection;

  float [] fuelEconomyHistory;      // graphing value that is constantly added to in "Fuel Computer" class
  BarChart Fuel_Economy_Bar;
  float [] fuelConsumptionHistory;      // graphing value that is constantly added to in "Fuel Computer" class                    
  BarChart Fuel_Consumption_Bar;

SensorDataProvider currentData = new SensorDataProvider();
Car car = new Car();
Gauge fuel = new Gauge(50,0,1100,250,color(0,255,0),color(255,0,0),color(255));
Gauge rpm = new Gauge(2500,0,170,250,color(255,0,0),color(0,255,0),color(255));
Gauge speed = new Gauge(200,0,650,250,color(255,0,0),color(0,255,0),color(255));
Gauge direction = new Gauge(0,0,15,525,color(0),color(0),color(0));


void setup(){
  size(1500,1000);
  ellipseMode(RADIUS);
  
  BMW = "car_status_BMW_323i.csv";
  Ford = "car_status_Truck_F150.csv";
  car.tank.tankCapacity = 50;
  
//setup of bar graphs  
  fuelEconomyHistory = new float [20];
  Fuel_Economy_Bar = new BarChart(this);
  Fuel_Economy_Bar.setData(fuelEconomyHistory);
  Fuel_Economy_Bar.setMinValue(0);
  Fuel_Economy_Bar.setMaxValue(20);
  
  fuelConsumptionHistory = new float [20];
  Fuel_Consumption_Bar = new BarChart(this);
  Fuel_Consumption_Bar.setData(fuelConsumptionHistory);
  Fuel_Consumption_Bar.setMinValue(0);
  Fuel_Consumption_Bar.setMaxValue(30);
  
}

void draw(){
//Selection Screen
  frameRate(25);
  background(120);
  textSize(30);
  fill(255);
  text("Please press one of the following numbers:",500,400);
  text("1. BMW 323i",500,450);
  text("2. Ford F150",500,500);
  text("3. Quit the program",500,550);
  
//Gauge overlay once selection has been chosen
  if(Selection=='1'||Selection=='2'){
    background(0);
  display();//static-unchanging display
  car.processInput();//updates all car info     
  currentData.readNext();//updates index on table to display new information

  }
}
   
//key press function to choose which table to load and display
void keyPressed(){ 
  if(key=='1'){
     Selection = '1';
     currentData.Initialize(BMW);
     car.radius=(23.0/100);  }
        if(key=='2'){
          Selection='2';
          currentData.Initialize(Ford);
          car.radius=(25.4/100);  }
            if(key=='3'){
               exit();}
}
