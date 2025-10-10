class Book {
  final String title;
  final String author;
  final int pages;
  bool isPaperback; //is trye by default

  Book(this.title, this.author, this.pages, this.isPaperback);

  void getSummary(){
    print("title: $title, author : $author, pages: $pages, paperback: $isPaperback"); 
  }
}

void main() {
  final Book book1 = Book("Fall of Will Smith", "Jada", 540, true); 
  final Book book2 = Book("Fall of Jada", "Will Smith", 357, true); 
  book1.getSummary(); 
  book2.getSummary(); 
}
