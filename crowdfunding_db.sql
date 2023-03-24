CREATE TABLE category_df (
    category_id VARCHAR(30)NOT NULL PRIMARY KEY,
    category VARCHAR(30)NOT NULL
);

CREATE TABLE subcategory_df (
    subcategory_id VARCHAR(30)NOT NULL PRIMARY KEY,
    subcategory VARCHAR(30)NOT NULL
);

CREATE TABLE Contacts (
    contact_id INT NOT NULL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(50) NOT NULL
);

CREATE TABLE campaign (
    cf_id INT NOT NULL PRIMARY KEY,
    contact_id INT NOT NULL,
	FOREIGN KEY (contact_id) REFERENCES Contacts(contact_id),
    company_name VARCHAR(50) NOT NULL,
    description VARCHAR(150) NOT NULL,
    goal FLOAT NOT NULL,
    pledged FLOAT NOT NULL,
    outcome VARCHAR(50) NOT NULL,
    backers_count INT NOT NULL,
    country VARCHAR(30) NOT NULL,
    currency VARCHAR(50) NOT NULL,
    launch_date DATE NOT NULL,
    end_date DATE NOT NULL,
    category_id VARCHAR(30) NOT NULL,
	FOREIGN KEY (category_id) REFERENCES category_df (category_id),
    subcategory_id VARCHAR(30) NOT NULL,
	FOREIGN KEY (subcategory_id) REFERENCES subcategory_df(subcategory_id)
);
SELECT * FROM category_df
SELECT * FROM subcategory_df
SELECT * FROM Contacts
SELECT * FROM campaign