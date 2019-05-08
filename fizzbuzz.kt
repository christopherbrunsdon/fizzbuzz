// Fizzbuzz in Kotlin
//
// To run : 
//   $ kotlinc fizzbuzz.kt -include-runtime -d fizzbuzz.jar
//   $ java -jar fizzbuzz.jar
//
// Christopher Brunsdon
// christopher@brunsdon.co.za
// 

fun fizzbuzz() {
  for (i in 1..100) {
    var result:String = "";
    if (i%3 == 0) {
      result += "fizz";
    }
    if (i%5 == 0) {
      result += "buzz";
    }
    if(result == "") {
      result = i.toString();
    }
    println(result);
  }
}

fun main(args: Array<String>) {
  fizzbuzz();
}

