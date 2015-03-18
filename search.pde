int[] primes = {2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97};
int ind = 0;
void setup(){
   println(search(67,primes));
}
void draw(){
  
}

int search(int needle, int[] haystack){
  printArray(haystack);
  println("~~~~~~~~~~~");
  int midPoint = haystack.length/2;
  if( haystack.length == 1) {
    if( haystack[0] == needle){
      return ind; 
    }else{
      println("length of one... not needle ("+haystack[0]+")");
      return -1; 
    }
  }
    if(needle== haystack[midPoint]){
        ind = ind + midPoint;
        return ind; 
    } else if(needle < midPoint){
        int[] e = new int[midPoint];
        arrayCopy(haystack, 0, e, 0, haystack.length/2);
        ind = ind +  midPoint; 
        return search(needle, e);
    } else{
        int[] m = new int[midPoint];
        arrayCopy(haystack, midPoint, m, 0, haystack.length/2);
        ind = ind + midPoint;
        return search(needle, m); 
      }
}
