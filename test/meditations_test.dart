import 'package:meditations/mediations.dart';
import 'package:test/test.dart';

void main() {
  test('Checking the existance of a Book that exists.', () {
    expect(Meditations.existBook(0), true);
  });

  test('Checking the existance of a Book that can not exist.', () {
    expect(Meditations.existBook(-1), false);
  });

  test('Checking the existance of a Book that does not exist.', () {
    expect(Meditations.existBook(40), false);
  });

  test('Checking the existance of a Book Section that exists.', () {
    expect(Meditations.existBookSection(0, 1), true);
  });

  test('Checking the existance of a Book Section that can not exist.', () {
    expect(Meditations.existBookSection(0, -10), false);
  });

  test('Checking the existance of a Book Section in a non-existent Book.', () {
    expect(Meditations.existBookSection(40, 0), false);
  });

  test(
      'Checking the existance of a Book Section that does not exist in an existing Book.',
      () {
    expect(Meditations.existBookSection(0, 40), false);
  });

  test('Getting the first part of Meditations returns Book 1, Section 1.', () {
    BookSectionText bst = Meditations.getFirst();
    var firstText = Meditations.book1.first;
    var expectedBookNr = 0;
    var expectedSectionNr = 0;
    expect(bst.bookNr, expectedBookNr);
    expect(bst.sectionNr, expectedSectionNr);
    expect(bst.text, firstText);
  });

  test(
      'Getting the last part of Meditations returns last Section of the last Book.',
      () {
    BookSectionText bst = Meditations.getLast();
    var lastText = Meditations.books.last.last;
    var expectedBookNr = Meditations.books.length - 1;
    var expectedSectionNr = Meditations.books.last.length - 1;
    expect(bst.bookNr, expectedBookNr);
    expect(bst.sectionNr, expectedSectionNr);
    expect(bst.text, lastText);
  });

  test('Getting a specific Section of a specific Book.', () {
    BookSectionText bst = Meditations.getText(0, 2);
    var expectedBookNr = 0;
    var expectedSectionNr = 2;
    var text = Meditations.books[expectedBookNr][expectedSectionNr];
    expect(bst.bookNr, expectedBookNr);
    expect(bst.sectionNr, expectedSectionNr);
    expect(bst.text, text);
  });

  test('Getting the next Section of a Book.', () {
    BookSectionText bst = Meditations.getNextSection(11, 3);
    var expectedBookNr = 11;
    var expectedSectionNr = 4;
    var expectedText = Meditations.books[expectedBookNr][expectedSectionNr];
    expect(bst.bookNr, expectedBookNr);
    expect(bst.sectionNr, expectedSectionNr);
    expect(bst.text, expectedText);
  });

  test('Getting the next Section of a Book when not available.', () {
    BookSectionSearchResult bst = Meditations.getNextSection(12, 30);
    expect(bst is NoSuchBookSection, true);
  });

  test('Getting the next Section in the next Book', () {
    BookSectionText bst = Meditations.getNextSection(0, 16);
    var expectedBookNr = 1;
    var expectedSectionNr = 0;
    var expectedText = Meditations.books[expectedBookNr][expectedSectionNr];
    expect(bst.bookNr, expectedBookNr);
    expect(bst.sectionNr, expectedSectionNr);
    expect(bst.text, expectedText);
  });

  test('Getting the previous Section of a Book.', () {
    BookSectionText bst = Meditations.getPreviousSection(0, 3);
    var expectedBookNr = 0;
    var expectedSectionNr = 2;
    var expectedText = Meditations.books[expectedBookNr][expectedSectionNr];
    expect(bst.bookNr, expectedBookNr);
    expect(bst.sectionNr, expectedSectionNr);
    expect(bst.text, expectedText);
  });

  test('Getting the previous Section of a Book when not available.', () {
    BookSectionSearchResult bst = Meditations.getPreviousSection(0, 0);
    expect(bst is NoSuchBookSection, true);
  });

  test('Getting the previous Section in the previous Book', () {
    BookSectionText bst = Meditations.getPreviousSection(1, 0);
    var expectedBookNr = 0;
    var expectedSectionNr = 16;
    var expectedText = Meditations.books[expectedBookNr][expectedSectionNr];
    expect(bst.bookNr, expectedBookNr);
    expect(bst.sectionNr, expectedSectionNr);
    expect(bst.text, expectedText);
  });
}
