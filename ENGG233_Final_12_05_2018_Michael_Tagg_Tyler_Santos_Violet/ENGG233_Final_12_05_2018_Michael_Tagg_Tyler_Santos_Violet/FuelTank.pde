class FuelTank {
  float tankCapacity;
  float previousLevel;
  float fuelLevel;
  float consumedFuel;//consumed fuel per second to be used with drawn bar graph


void getConsumedFuel() {
 fuelLevel = currentData.readFuelLevel();
     if (previousLevel ==0){
     consumedFuel = tankCapacity-fuelLevel; }
         if (previousLevel>0){
         consumedFuel = tankCapacity-fuelLevel; }     
 previousLevel = fuelLevel;  
  }
}
