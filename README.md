# Bookmarks App

## User Stories

```
As a user,
To see the pages I’ve saved,
I’d like to see a list of bookmarks.
```

| Object    | Behaviour  |
|-----------|------------|
| pages     | save       |
| bookmarks | list, show |
 

![diagram for first user story](https://i.imgur.com/I622wp4.png)

## How to use

### Getting started:

Clone this repository and then run:

``` 
bundle
```

### To set up a data base

To set up the bookmark_manager database follow the below steps:

1. Connect to `psql`
2. Create the database using the `psql` command `CREATE DATABASE bookmark_manager;`
3. Connect to the database using the `pqsl` command `\c bookmark_manager;`
4. Run the query we have saved in the file `01_create_bookmarks_table.sql`

To set up the bookmark_manager_test database follow the below steps:

1. Connect to `psql`
2. Create the database using the `psql` command `CREATE DATABASE bookmark_manager_test;`
3. Connect to the database using the `pqsl` command `\c bookmark_manager_test;`
4. Run the query we have saved in the file `02_create_all_bookmarks_table.sql`

### To run the Bookmark Manager app:

```
rackup -p 4567
```

To view bookmarks navigate to 'http://localhost:4567/bookmarks`


### To  run tests:

```
rspec
```

### To run linting:

```
rubocop
```

