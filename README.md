# rest-demo-sqlite-database
A simple build system to create the SQLite db file used by my rest-demo-&ast;-backend repos

## Requirements
* [git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git) - version 1.7.10 or later recommended
* [SQLite](https://www.sqlite.org/download.html) - version 3.1.0 or later
* [GNU Make](https://www.gnu.org/software/make/) - version 3.80 or later

## Building

Run the following commands:
```
git clone https://github.com/bmarcotte/rest-demo-sqlite-database.git
cd rest-demo-sqlite-database
make
```

That should produce a `bookmarks.db` file in the current directory.

## Testing

You can also run:
```
make dumps
```
or
```
make bookmarks.dump
```

...to produce a dump file, `bookmarks.dump`, which can be compared to the original `bookmark.sql` to confirm that the database contains roughly equivalent content to what was original declared.  The `.dump` file and the `.sql` file should only have whitespace differences.

## Author

* **Ben Marcotte** - [bmarcotte](https://github.com/bmarcotte)

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details
