/*
 * Basis of OOP 
 * Classes are containers that holds data, with the functionality to manipulate that data;
 * Classes can encapsulate the state of our programs 
 */

//? How to declare and use classes


class Book {
  //property field 
  final String title; 
  final String author; 
  final int pages; 

   //Generative (primary) constructor 
  Book(this.title, this.author, this.pages); 

 //Named constructor
  Book.unknown() : this('Unknown', 'Unknown', 203); 

  void printSummary(){ //method that prints the summary 
    print("$title by: $author, pages: $pages"); 
  }


}


void main(){
  Book book1 = Book("El viejo y el mar", "Hemingway", 203); //instantiating the book class 
  book1.printSummary(); //calling the method from the book1 object 

  Book oldBook = Book.unknown(); //instantiating the named constructor 
  print(oldBook.author); 

}