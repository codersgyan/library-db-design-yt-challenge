-- Seed dataset tailored for SQL challenges

-- Authors
INSERT INTO
    authors (
        full_name,
        country,
        date_of_birth
    )
VALUES (
        'J.K. Rowling',
        'UK',
        '1965-07-31'
    ),
    (
        'George R.R. Martin',
        'USA',
        '1948-09-20'
    ),
    (
        'J.R.R. Tolkien',
        'UK',
        '1892-01-03'
    ),
    (
        'Agatha Christie',
        'UK',
        '1890-09-15'
    ),
    (
        'Stephen King',
        'USA',
        '1947-09-21'
    ),
    (
        'Neil Gaiman',
        'UK',
        '1960-11-10'
    ),
    (
        'Brandon Sanderson',
        'USA',
        '1975-12-19'
    );

-- Books (25 entries)
INSERT INTO
    books (
        title,
        isbn,
        publication_year,
        genre
    )
VALUES (
        'Harry Potter 1',
        '9780439708180',
        1997,
        'Fantasy'
    ),
    (
        'Harry Potter 2',
        '9780439064873',
        1998,
        'Fantasy'
    ),
    (
        'Harry Potter 3',
        '9780439136365',
        1999,
        'Fantasy'
    ),
    (
        'A Game of Thrones',
        '9780553103540',
        1996,
        'Fantasy'
    ),
    (
        'A Clash of Kings',
        '9780553108033',
        1998,
        'Fantasy'
    ),
    (
        'A Storm of Swords',
        '9780553106633',
        2000,
        'Fantasy'
    ),
    (
        'The Hobbit',
        '9780618968633',
        1937,
        'Fantasy'
    ),
    (
        'LOTR: Fellowship',
        '9780618574940',
        1954,
        'Fantasy'
    ),
    (
        'LOTR: Two Towers',
        '9780618574957',
        1954,
        'Fantasy'
    ),
    (
        'LOTR: Return of the King',
        '9780618574971',
        1955,
        'Fantasy'
    ),
    (
        'Murder on the Orient Express',
        '9780062073501',
        1934,
        'Mystery'
    ),
    (
        'Death on the Nile',
        '9780062073556',
        1937,
        'Mystery'
    ),
    (
        'And Then There Were None',
        '9780062073488',
        1939,
        'Mystery'
    ),
    (
        'The Shining',
        '9780385121675',
        1977,
        'Horror'
    ),
    (
        'It',
        '9780670813025',
        1986,
        'Horror'
    ),
    (
        'Carrie',
        '9780307743664',
        1974,
        'Horror'
    ),
    (
        'Pet Sematary',
        '9780670813612',
        1983,
        'Horror'
    ),
    (
        'American Gods',
        '9780380973650',
        2001,
        'Fantasy'
    ),
    (
        'Coraline',
        '9780380807344',
        2002,
        'Fantasy'
    ),
    (
        'Mistborn 1',
        '9780765311788',
        2006,
        'Fantasy'
    ),
    (
        'Mistborn 2',
        '9780765316882',
        2007,
        'Fantasy'
    ),
    (
        'Mistborn 3',
        '9780765320049',
        2008,
        'Fantasy'
    ),
    (
        'The Silmarillion',
        '9780618126989',
        1977,
        'Fantasy'
    ),
    (
        'Fire & Blood',
        '9781524796280',
        2018,
        'Fantasy'
    ),
    (
        'The Casual Vacancy',
        '9780316228534',
        2012,
        'Fiction'
    );

-- Book Authors (many-to-many)
INSERT INTO
    book_authors (book_id, author_id)
VALUES (1, 1),
    (2, 1),
    (3, 1),
    (25, 1),
    (4, 2),
    (5, 2),
    (6, 2),
    (24, 2),
    (7, 3),
    (8, 3),
    (9, 3),
    (10, 3),
    (23, 3),
    (11, 4),
    (12, 4),
    (13, 4),
    (14, 5),
    (15, 5),
    (16, 5),
    (17, 5),
    (18, 6),
    (19, 6),
    (20, 7),
    (21, 7),
    (22, 7);

-- Borrowers
INSERT INTO
    borrowers (
        full_name,
        email,
        phone_number
    )
VALUES (
        'Alice Johnson',
        'alice@example.com',
        '1234567890'
    ),
    (
        'Bob Smith',
        'bob@example.com',
        '2345678901'
    ),
    (
        'Charlie Brown',
        'charlie@example.com',
        '3456789012'
    ),
    (
        'Diana Prince',
        'diana@example.com',
        '4567890123'
    ),
    (
        'Ethan Hunt',
        'ethan@example.com',
        '5678901234'
    ),
    (
        'Frank Castle',
        'frank@example.com',
        '6789012345'
    );

-- Borrow Records (covers all challenge patterns)
INSERT INTO
    borrow_records (book_id, borrower_id, status)
VALUES
    -- some returned
    (1, 1, 'returned'),
    (4, 1, 'returned'),
    (11, 2, 'returned'),
    (14, 3, 'returned'),
    -- currently borrowed
    (7, 2, 'borrowed'),
    (8, 3, 'borrowed'),
    (3, 4, 'borrowed'),
    (5, 5, 'borrowed'),
    (6, 1, 'returned'),
    (12, 1, 'borrowed');