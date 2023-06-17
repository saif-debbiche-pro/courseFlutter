
void main(){
testEnumirations();
testEnumirationsAnimalType(AnimalType.bunny);
testClasses();
}
// Enumiration (named list ofrelated items)
enum PersonProperties{
  firstName,lastName,age
}
void testEnumirations(){
  const name="saif";
  const othername='saif';
  print(PersonProperties.firstName);//PersonProperties.firstName
  print(PersonProperties.firstName.name);//firstName
}

enum AnimalType{
  cat,dog,bunny
}
void testEnumirationsAnimalType(AnimalType animalType){
  // tetsing the animalType
  // if(animalType==AnimalType.cat){
  //   print('Oh  i love cuts');
  // }else if(animalType==AnimalType.dog){
  //   print('Oh  i love dogs');
  // }else{
  //   print('Oh  i love animals');
  // }
  switch(animalType){
    case AnimalType.cat:
      print("Oh  i love cuts");
      break;
    case AnimalType.dog:
      print("Oh  i love dogs");
      break;
    case AnimalType.bunny:
      print("Oh  i love animals");
  }
}

// classes 
class Person {
  final String name;

  Person(this.name);

  void run(){
    print("Running");
  }
  void breathe(){
    print("Breathing");
  }
  void printName(){
    print(name);
  }
}
void testClasses(){
  final person=Person("saif");
  person.run();
  print(person.name);

}

// inheriance and subclassing
abstract class LivingThing{
  void breathe(){
    print("living thing can breathe");
  }
}
class Cat extends LivingThing{
 final String name;
 Cat(this.name);
//  factory constructor
 factory Cat.fluffBall(){
  return Cat("Fluff ball");
  }

}
void testInheritance(){
  final cat=Cat();
  cat.breathe();
  }