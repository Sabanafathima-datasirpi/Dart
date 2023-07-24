class Books {
  var title;
  var author;
  var pages;

  //Named constructor
  Books.storyBooks(var title, author, pages) {
    this.title = title;
    this.author = author;
    this.pages = pages;
  }
  //Parameterised constructor
  Books(var title, author, pages) {
    this.title = title;
    this.author = author;
    this.pages = pages;
  }
  void details() {
    print("The details are");
    print("Title:$title");
    print("Author:$author");
    print("Page Count:$pages\n");
  }
}

void main() {
  var displayBookInfo =
      new Books.storyBooks("Jungle Book", "Rudyard Kipling", 200);
  displayBookInfo.details();

  var displayBooksInfo =
      new Books("Stuart Little", "E.B.White", 300);
  displayBooksInfo.details();
}

