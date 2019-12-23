// This program prompts and reads a province and a taxable income.  Then,
// using if-else structures, the tax rate is computed for the province
// and the taxable income.  The tax rate and the net income are illustrated
// using a simple bar chart 

import javax.swing.JOptionPane;


//Input Variables
String prov_id = "";                  //province_id will contain the user input for the province (E.g. 'AB'). 
float gross_income = 0;               //gorss_income contains the user input for gross income (E.g. 30000). 

//Output Variables:
//You will store the result of your analysis and calculations in these variables
float tax_rate = 0;                        //Variable tax_rate will hold the tax_rate percentage. You will assign a value for tax_rate based on the Taxable Income (Table 1) table given in the studio project document. 
                                           //The value of tax ranges between 0 to 1 (E.g. for Alberta, income of equal or less than $40000 tax = 0.25)

float net_income = 0;                     //Net income is calculated based on tax_rate. It is the take-home income after taxes are deducted. 
                                          //i.e. net_income = gross_income * (1 - tax_rate); 
                                          
float tax_amount = 0;                    //tax amount is the amount of taxes paid based on gross income depending on the province.
                                        //i.e. tax_amount = gross_income * tax_rate;

// prompt for and read the province id 
prov_id = JOptionPane.showInputDialog("Please enter your province's two-letter abbreviation (e.g., AB for Alberta): ");
    
// prompt for and read the gross income
String answer = JOptionPane.showInputDialog("Please enter your taxable income: ");

//convert user input to float
gross_income = Float.parseFloat(answer);
  


  // Alberta
  if ( prov_id.equals("AB") || prov_id.equals("ab")){
   
  if (0<=gross_income&&gross_income<=40000){
    tax_rate = 25.0;
  }else if(40000<gross_income&&gross_income<=80000){
    tax_rate = 32.0;
  }else if(80000<gross_income&&gross_income<=120000){
    tax_rate = 36.0;
  }else if(120000<gross_income){
    tax_rate = 39.0;
  }

  }
if (prov_id.equals("BC") || prov_id.equals("bc")){
  
   if (0<=gross_income&&gross_income<=20000){
    tax_rate = 20.0;
  }else if(20000<gross_income&&gross_income<=35000){
    tax_rate = 22.5;
  }else if(35000<gross_income&&gross_income<=50000){
    tax_rate = 30.0;
  }else if(50000<gross_income&&gross_income<=65000){
    tax_rate = 32.5;
  }else if(65000<gross_income&&gross_income<=80000){
    tax_rate = 36.5;
  }else if(80000<gross_income&&gross_income<=100000){
    tax_rate = 39.3;
  }else if(100000<gross_income&&gross_income<=120000){
    tax_rate = 42.0;
  }else if(120000<gross_income){
    tax_rate = 44.0;
}
}
  
  
if (prov_id.equals("SK") || prov_id.equals("sk")){
    if (0<=gross_income&&gross_income<=40000){
    tax_rate = 25.0;
  }else if(40000<gross_income&&gross_income<=60000){
    tax_rate = 30.0;
  }else if(60000<gross_income&&gross_income<=80000){
    tax_rate = 35.0;
  }else if(80000<gross_income&&gross_income<=100000){
    tax_rate = 40.0;
  }else if(100000<gross_income&&gross_income<=120000){
    tax_rate = 45.0;
  }else if(120000<gross_income){
    tax_rate = 50.0;
  }
}


background(180);
size(800,800);
tax_amount = (gross_income*tax_rate/100);
net_income = (gross_income)-(tax_amount);
println(gross_income);
println(net_income);
println(tax_amount);
textSize(32);
fill(0,255,255);
text("Province:",50,50);
fill(225,0,0);
text("Gross Income:",50,150);
fill(0,255,0);
text("Tax Rate:",50,250);
fill(0,0,225);
text("Tax Amount:",50,350);
fill(0);
text("Net Income:",50,450);
fill(0,255,255);
text(prov_id,300,50);
fill(225,0,0);
text("$ "+gross_income,300,150);
fill(0,255,0);
text("% "+tax_rate,300,250);
fill(0,0,225);
text("$ "+tax_amount,300,350);
fill(0);
text("$ "+net_income,300,450);

fill(0,0,255);
rect(150,650,tax_rate/100*500,20);
fill(0);
rect(150+tax_rate/100*500,650,500-(tax_rate/100*500),20);
fill(255,0,0);
rect(150,700,500,20);


// Draw a bar chart to illustrate the user tax information as shown in the example in the lab assignment
