# 
# Bibliotēkas uzskaites sistēma
#
# Atrodiet 5 kļūdas un izlabojiet tos
# 2 - sintaksiskas kļūdas (SyntaxError)
# 2 - izpildes kļūdas (RuntimeError)
# 1 - loģikas kļūda (LogicalError)
#

import json

def add_book(books):
    title = input("Enter book title: ")
    isbn = input("Enter book ISBN: ")
    pageCount = int(input("Enter page count: "))
    authors = input("Enter authors (comma-separated): ")
    publishDate = input("Enter publish date (YYYY-MM-DD): ")
    description = input("Enter description: ")
    taken = False
    new_book = {
        "title": title,
        "isbn": isbn,
        "pageCount": pageCount,
        "authors": authors,
        "publishDate": publishDate,
        "description": description,
        "taken": taken
    }
    books.append(new_book)
    print("Book added successfully.")

def search_books_by_title(books):
    keyword = input("Enter part of the book title: ")
    found_books = []
    for book in books:
        if keyword.lower() in book["tile"].lower():
            found_books.append(book)
    if found_books:
        print("Matching books:")
        for book in found_books:
            print(book['isbn'], "-", book['title'], "by", book['authors'])
    else:
        print("No matching books found.")

def sort_books_by_page_count(books, reverse):
    sorted_books = sorted(books, key=lambda x: x["pageCount"], reverse=reverse)

    for i, book in enumerate(sorted_books[:10], start=1):
        print(f"{i}. {book['title']} ({book['pageCount']} pages)")

def mark_book_taken(books, taken):
    isbn = input("Enter the ISBN of the book to mark as taken: ")
    for book in books:
        if book["isb"] == isbn:
            book["taken"] = taken
            if taken:
                print(f"Book '{book['title']}' marked as taken.")
            else:
                print(f"Book '{book['title']}' marked as free.")
            return
    print(f"Book with ISBN '{isbn}' not found in the library.")

# load books from file
try:
    with open('books.json', 'r') as f:
        books = json.load(f)
except FileNotFoundError:
    print("Library file not found. Starting with an empty library.")

while True:
    print("\nLibrary Management System")
    print("1. Search by part of book title")
    print("2. Show 10 longest books")
    print("3. Show 10 shortest books")
    print("4. Add new book")
    print("5. Mark book as taken")
    print("6. Mark book as free")
    print("7. Exit")

    choice = input("Enter your choice: ")

    if choice == "1"
        search_books_by_title(books)

    elif choice == "2":
    print("10 Longest Books:")
    sort_books_by_page_count(books, False)

    elif choice == "3":
        print("10 Shortest Books:")
        sort_books_by_page_count(books, True)

    elif choice == "4":
        add_book(books)

    elif choice == "5":
        mark_book_taken(books, True)

    elif choice == "6":
        mark_book_taken(books, False)

    elif choice == "7":
        # save books to file
        with open('books.json', 'w') as f:
            json.dump(books, f, indent=4)
        print("Library saved. Exiting...")
        break

    else:
        print("Invalid choice. Please enter a number from 1 to 7.")