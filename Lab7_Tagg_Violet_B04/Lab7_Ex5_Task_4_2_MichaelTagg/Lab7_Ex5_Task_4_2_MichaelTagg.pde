void setup ()
{
float [] first_array = {6.7, 5.9, 10, 23, 44, 4.6, 9.1};
float [] second_array = {11, 12, 13, 14, 15, 16, 17};
SwapArrays (first_array, second_array);
println (first_array);
println (second_array);
}

void SwapArrays (float[]a,float[]b){
  
  if (a.length == b.length){
    float [] tempa = new float [a.length];
      for (int i = 0; i<a.length; i++){
        tempa[i] = a[i];
        a[i] = b[i];
        b[i] = tempa[i];
    }
   
}else{ 
  println ("Array lengths are not the same, could not perform SwapArrays fumnction");
}

}
