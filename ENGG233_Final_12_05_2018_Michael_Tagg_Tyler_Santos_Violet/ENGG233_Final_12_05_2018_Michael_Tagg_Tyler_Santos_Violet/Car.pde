class Car{
FuelComputer fuelComp = new FuelComputer();
FuelTank tank = new FuelTank();
TripComputer tripComp = new TripComputer();
float radius;

void processInput (){
//RPM value assigning, verifying and gauge drawing calls
  tripComp.rpm= currentData.readRPM(); 
  rpm.currentValue = rpm.SetCurrentValue(tripComp.rpm);
  rpm.drawGauge(rpm.currentValue);
    
    //fuel value assigning, verifying and gauge drawing calls
  tank.fuelLevel = currentData.readFuelLevel();
  fuel.currentValue = fuel.SetCurrentValue(tank.fuelLevel);
  fuel.drawGauge(fuel.currentValue);
  
   //speed value assigning, verifying and gauge drawing calls 
  tripComp.gearRatio = currentData.readRatio();  
  speed.currentValue = speed.SetCurrentValue(tripComp.getCurrentSpeed(tripComp.rpm, tripComp.gearRatio, radius));
  speed.drawGauge(speed.currentValue);
      
  //vehicle direction value assigning
  tripComp.updateTotalDistance();
  tripComp.X = currentData.readX();
  tripComp.Y = currentData.readY();
  fill(255,170,0);
  text(tripComp.calculateDirection(),direction.x+100,direction.y);
      
  //fuel value updates within class "FuelComputer"
 tank.getConsumedFuel(); 
 fuelComp.calculateFuelEconomy();
 fuelComp.AvgFuelEconomy();
 fuelComp.calculateFuelConsumption();
 fuelComp.calculateRange();
 

  
  
}
  
  
  
 
}
