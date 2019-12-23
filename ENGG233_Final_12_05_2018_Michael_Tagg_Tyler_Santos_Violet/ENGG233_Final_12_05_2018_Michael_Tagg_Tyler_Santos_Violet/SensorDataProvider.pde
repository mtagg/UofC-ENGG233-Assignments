class SensorDataProvider{
  String filePath;
  Table dataTable;
  int currentIndex;
  TableRow row;
  
void Initialize (String table){     
     filePath = table;
     dataTable = loadTable(filePath, "header");  
}    
void readNext(){ 
    if (currentIndex<599){
    currentIndex++;
    if(currentIndex==599){
    Selection = 0;
  currentIndex=0;}
  }         
}
float readRPM(){
    row = dataTable.getRow(currentIndex);  
    return row.getFloat("RPM");
}
float readFuelLevel(){
  row = dataTable.getRow(currentIndex);
  return row.getFloat("Fuel Level (liter)");
}
float readRatio(){
  row = dataTable.getRow(currentIndex);
  return row.getFloat("Gear Ratio");
}
float readX(){
  row = dataTable.getRow(currentIndex);
  return row.getFloat("X");
}
float readY(){
  row = dataTable.getRow(currentIndex);
  return row.getFloat("Y");
}  
 
}
