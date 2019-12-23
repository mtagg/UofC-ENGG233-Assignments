class FuelComputer {
  float avgFuelEconomy;//a moving average of fuel economy based on all data
  float avgConsumption;// liters per 100km
  float fuelEconomy;//fuel economy for each row of table data to then be used in calculating average economy
  float range;//remaining kms based on average fuel economy and how much is left in the tank

void calculateFuelEconomy() {
   
   fuelEconomy = (car.tripComp.totalTravelledDistance)/(car.tank.consumedFuel);//waiting for Trip Computer class to be finished


  }
void AvgFuelEconomy() {
   avgFuelEconomy = (car.tripComp.totalTravelledDistance/(car.tank.tankCapacity - car.tank.fuelLevel));
      float [] temp = fuelEconomyHistory;         
         for (int i = 0; i<fuelEconomyHistory.length-1; i++){
            fuelEconomyHistory[i] = temp[i+1]; }    
         if (car.tank.consumedFuel>0){
            fuelEconomyHistory[fuelEconomyHistory.length-1] = (avgFuelEconomy); }            
 }
     
void calculateFuelConsumption() { //liters per 100kms
      avgConsumption = (100/avgFuelEconomy);
            float [] temp = fuelConsumptionHistory;         
         for (int i = 0; i<fuelConsumptionHistory.length-1; i++){
            fuelConsumptionHistory[i] = temp[i+1]; }    
         if (car.tank.consumedFuel>0){
            fuelConsumptionHistory[fuelConsumptionHistory.length-1] = (avgConsumption); }
    }
void calculateRange() {
      range = (avgFuelEconomy*car.tank.fuelLevel);
    }
  }
