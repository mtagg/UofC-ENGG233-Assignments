





void setup(){
int [] a = {1,2,3,5,7,5,3,2,8};
int [] b = {7,6,8,10,17,62,86};
int [] c;
c = concatSORT(a,b);
println(c);


}






//function sorting two arrays

int [] concatSORT(int[]a, int[]b){
    a = sort(a);
    b = sort(b);

    int [] c = new int [a.length +b.length];

    int i = (a.length - 1);
    int j = (b.length -1);
    int k = (c.length - 1);

    for (;i>=0 && j>=0 && k>=0; k--){
        if (a[i]>b[j]){
            c[k] = a[i];
            i--;

        }else{
            c[k] = b[j];
            j--;
        }

    }      
    if (i>j && i==k){
            for (;i>=0;k--, i--)  c[k] = a[i]; 
                         
    }else if (j>i && j==k){
            for (;j>=0; k--, j--) c[k] = b[j];

    }

        return c;
    
}
