class Books {
  var title;
  var author;
  var pages;

  //Default constructor
  Books() {
    print("The details of Story books:");
  }

  void bookDetails() {
    print("The title of the book is $title");
    print("The author of the book is $author");
    print("The number of pages in the book is $pages");
  }
}

void main() {
  var displayDetails = new Books();
  displayDetails.title = "Jungle Book";
  displayDetails.author = "Rudyard Kipling";
  displayDetails.pages = 200;

  displayDetails.bookDetails();
}
