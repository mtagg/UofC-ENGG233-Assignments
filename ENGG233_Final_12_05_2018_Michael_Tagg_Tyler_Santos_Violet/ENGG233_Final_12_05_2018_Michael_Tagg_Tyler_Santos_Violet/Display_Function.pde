void display(){
 //draw all static items
     if(Selection=='1'){
      fill(155,0,0);
      textSize(25);
      ellipse(fuel.x+100,fuel.y-20,150,150);
      text("FUEL (Liters)",fuel.x+30,fuel.y+160);
      ellipse(rpm.x+130,rpm.y-20,150,150);
      text("R.P.M.",rpm.x+100,rpm.y+160);
      ellipse(speed.x+100,speed.y-20,150,150);
      text("SPEED (Km/h)",speed.x+30,speed.y+160);
      ellipse(direction.x+130,direction.y-20,75,75);
      
      fill(80);
      ellipse(fuel.x+100,fuel.y-20,140,140);
      ellipse(rpm.x+130,rpm.y-20,140,140);
      ellipse(speed.x+100,speed.y-20,140,140);
      ellipse(direction.x+130,direction.y-20,65,65);
     }
      
      if(Selection=='2'){
      fill(0,0,205);
      textSize(25);
      ellipse(fuel.x+100,fuel.y-20,150,150);
      text("FUEL (Liters)",fuel.x+30,fuel.y+160);
      ellipse(rpm.x+130,rpm.y-20,150,150);
      text("R.P.M.",rpm.x+100,rpm.y+160);
      ellipse(speed.x+100,speed.y-20,150,150);
      text("SPEED (Km/h)",speed.x+30,speed.y+160);
      ellipse(direction.x+130,direction.y-20,75,75);
      
      fill(80);
      ellipse(fuel.x+100,fuel.y-20,140,140);
      ellipse(rpm.x+130,rpm.y-20,140,140);
      ellipse(speed.x+100,speed.y-20,140,140);
      ellipse(direction.x+130,direction.y-20,65,65);
     }
     
      //draw all rtext values
      if(Selection=='1'){
      fill(155,0,0);
      }
      if (Selection=='2'){
      fill(0,0,205);
      }
      text("Odometer (Kms): ",400,500);
      text(car.tripComp.totalTravelledDistance,650,500);
      text("Range (Kms): ",400,550);
      text(car.fuelComp.range,650,550);
      text("Fuel Economy (Kms/ Liter): ",850,500);
      text(car.fuelComp.fuelEconomy,1300,500);
      text("Fuel Consumption(Liters/100km): ",850,550);
      text(car.fuelComp.avgConsumption,1300,550);
      
      //fuel economy bar graph
      fill(255);
      textSize(16);
      Fuel_Economy_Bar.showValueAxis(true);
      Fuel_Economy_Bar.setValueFormat("#");
      Fuel_Economy_Bar.showCategoryAxis(true);
      Fuel_Economy_Bar.setBarColour(color(204, 102, 0));
      Fuel_Economy_Bar.setBarGap(1);
      Fuel_Economy_Bar.draw(50, 700, 650, 150);      
      fill(255);
      text("Average Fuel Economy (Km/Litre)", 280, 900);
      
      //fuel consumption bar graph
      Fuel_Consumption_Bar.showValueAxis(true);
      Fuel_Consumption_Bar.setValueFormat("#");
      Fuel_Consumption_Bar.showCategoryAxis(true);
      Fuel_Consumption_Bar.setBarColour(color(204, 102, 0));
      Fuel_Consumption_Bar.setBarGap(1);
      Fuel_Consumption_Bar.draw(750,700,650,150);
      text("Average Fuel Consumption (Litres/100Km)", 830,900);
      
      

      
   }
