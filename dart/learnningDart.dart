// const means that the variable is constante neve change during compile and execution time
// finale means that the variable is constant during the execution(the value did not change
// after the initialize during the execution)
// when we made a const that tell dart that it havent to execute that code during 
// execution because the value is alrady initialized in compilation and will not change 
// every line shoud and with ; in dart
import 'dart:collection';

const age=22;
const twiceTheAge=age*2;
var name="saif";
// we cant reassing variables outside of functions !
// name="ali" 
final lastName="debbiche";
void firstFunction(){
    name="ali";
}
String makeName(String firstName ,String lastName){
    var concatName1=firstName+" "+lastName;
    var concatName2='$firstName $lastName';
    print(concatName1);
    print(concatName2);
    return concatName2;
}

// arrow functions in dart
String returnMyName(String firstName,String lastName)=>'$firstName $lastName';


// ok dart like java start with executing the main function
void main(){
  testNullSafety();

}




// controll statement in dart
void test(){
    final name="saif";
    final age=18;
    if(name == 'saif'){
        print('Hello $name');
    }else{
        print("who are you !");
    }
    if(age<18){
        print("you still so yong");
    }else if (age>=18 && age<=25){
        print("you are welcome");
    }else{
        print("realy ?!!");
    }

}

// some operators in dart
void testOperators(){
    //  + - / * == =
    var age=20;
    // it change both age and return the result to ageMinusOne  
    final ageMinusOne=--age;
    print(age);//19
    print(ageMinusOne);//19

    const name="saif";
    final name20=name*20;
    print(name20);//saifsaifsaifsaifsaifsaifsaifsaifsaifsaif....
}

// list in dart(list of values with same type)=>if types are diffrent dart will assume
// that the type is Object like java
void testList(){
    final colors =["green","blue","orange",2];
    final green=colors[0];
    final blue=colors[1];
    final orange=colors[2];
    // final red=colors[3];//error RangeError
    // length of list
    final length =colors.length;
    colors.add("yello");
}
// set in dart(list of values with same type and unique values)=>if types are diffrent dart will assume
// that the type is Object like java
void testSet(){
    var colors ={"green","blue","orange"};
    colors.add("red");
   
    // final red=colors[3];//error RangeError
    // length of list
    final length =colors.length;
}

// maps in dart
void testMaps(){
    // keys need to be unique
    final person={
        'age':20,
        "name":"saif"
    };//map <String,Object>
    print(person["name"]);
}

// Null Safety
void testNullSafety(){
  String? myName;
  myName=returnMyName("saif", "debbiche");
  myName="hello";
  myName=null;
  // the list it self can be null not values in it
  List<String>? names=["saif","ali"];
  names=null;
  // the list can contain null values in it
  List<String?> names2=["saif","ali",null];
  // here both the list and the values in it can be null 
  List<String?>? names3=["saif","ali",null];
  names3=null;

  // Cherry-picking non-null values (,, ?. ??=)
  const String? firstName=null;
  const String? lastName="debbiche";
  const String? scool="esprit";

  // didnt execute the rest like js
  const firstNonNullValue=firstName ??lastName??scool;
  print(firstNonNullValue);// debbiche

  String? name ;
  // if name is null then it will assign firstNonNullValue to it else it didnt assign
  name??=firstNonNullValue;
  void acceptList(List<String>? lastNames){
   final num=lastNames?.length ?? 0; 
   lastNames?.add('Ben Hamed');

  }



}