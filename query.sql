--
-- Dokumentācija:
-- https://www.w3schools.com/sql/default.asp
-- vai
-- https://sqlzoo.net/wiki/SQL_Tutorial
-- Palaist kodu:
-- https://sqlfiddle.com/sqlite/online-compiler (SQLite vai MySQL)
-- or
-- https://sqlite.org/fiddle/ 
--

-- Uzdevums: uzrakstīt zemāk minētus skripts un saglabāt šajā failā

-- Izveidot tabulu atbilstoši faila books.json struktūrai (CREATE) ir
-- Ierakstīt 10 jebkuru grāmatu ierakstus jaunā tabulā (INSERT) ir
-- Atlasīt tikai grāmatu nosaukumu, ISBN un lapu skaitu (SELECT) ir 
-- Atlasīt grāmatu ar konkrētu ISBN (SELECT, WHERE) ir
-- Sakārtot tabulu pēc lapu skaita, no lielāka uz mazāko (SELECT, ORDER BY) ir


CREATE TABLE books (
    title text,
    isbn text,
    pageCount integer,
    authors text,
    publishDate text,
    description text
);

INSERT INTO books( title, isbn, pageCount, authors, publishDate, description)
VALUES ("Unlocking Android", "1933988673", 416, "W. Frank Ableson, Charlie Collins, Robi Sen", "2009-04-01T00:00:00.000-0700", "Unlocking Android: A Developer's Guide provides concise, hands-on instruction for the Android operating system and development tools. This book teaches important architectural concepts in a straightforward writing style and builds on this with practical and useful examples throughout."),
("Zend Framework in Action", "1933988320", 432, "Rob Allen, Nick Lo, Steven Brown", "2008-12-01T00:00:00.000-0800", "Zend Framework in Action is a comprehensive tutorial that shows how to use the Zend Framework to create web-based applications and web services. This book takes you on an over-the-shoulder tour of the components of the Zend Framework as you build a high quality, real-world web application."),
("Flex on Java", "1933988797", 265, "Bernerd Allmon, Jeremy Anderson", "2010-10-15T00:00:00.000-0700", "   A beautifully written book that is a must have for every Java Developer.       Ashish Kulkarni, Technical Director, E-Business Software Solutions Ltd."),
("Griffon in Action", "1935182234", 375, "Andres Almiray, Danno Ferrin, , James Shingler", "2012-06-04T00:00:00.000-0700", "Griffon in Action is a comprehensive tutorial written for Java developers who want a more productive approach to UI development. In this book, you'll immediately dive into Griffon. After a Griffon orientation and a quick Groovy tutorial, you'll start building examples that explore Griffon's high productivity approach to Swing development. One of the troublesome parts of Swing development is the amount of Java code that is required to get a simple application off the ground."),
("OSGi in Depth", "193518217X", 325, "Alexandre de Castro Alves", "2011-12-12T00:00:00.000-0800", "Enterprise OSGi shows a Java developer how to develop to the OSGi Service Platform Enterprise specification, an emerging Java-based technology for developing modular enterprise applications. Enterprise OSGi addresses several shortcomings of existing enterprise platforms, such as allowing the creation of better maintainable and extensible applications, and provide a simpler, easier-to-use, light-weight solution to enterprise software development."),
("Hello! Flex 4", "1933988762", 258, "Peter Armstrong", "2009-11-01T00:00:00.000-0700", "Hello! Flex 4 progresses through 26 self-contained examples selected so you can progressively master Flex. They vary from small one-page apps, to a 3D rotating haiku, to a Connect Four-like game. And in the last chapter you'll learn to build a full Flex application called SocialStalkr   a mashup that lets you follow your friends by showing their tweets on a Yahoo map."),
("Coffeehouse", "1884777384", 316, "Levi Asher, Christian Crumlish",  "1997-07-01T00:00:00.000-0700", "Coffeehouse is an anthology of stories, poems and essays originally published on the World Wide Web."),
("Brownfield Application Development in .NET", "1933988711", 550, "Kyle Baley, Donald Belcham", "2010-04-16T00:00:00.000-0700", "Brownfield Application Development in .Net shows you how to approach legacy applications with the state-of-the-art concepts, patterns, and tools you've learned to apply to new projects. Using an existing application as an example, this book guides you in applying the techniques and best practices you need to make it more maintainable and receptive to change."),
("Jaguar Development with PowerBuilder 7", "1884777864", 550,  "Michael Barlotta", "1999-08-01T00:00:00.000-0700", "Jaguar Development with PowerBuilder 7 is the definitive guide to distributed application development with PowerBuilder. It is the only book dedicated to preparing PowerBuilder developers for Jaguar applications and has been approved by Sybase engineers and product specialists who build the tools described in the book."),
("iBATIS in Action", "1932394826", 384, "Clinton Begin, Brandon Goodin, Larry Meadors", "2007-01-01T00:00:00.000-0800", "   Gets new users going and gives experienced users in-depth coverage of advanced features.       Jeff Cunningham, The Weather Channel Interactive");

SELECT title, isbn, pageCount 
FROM books;

SELECT * FROM books WHERE isbn == "1933988320"

SELECT * FROM books
ORDER BY pageCount DESC;


