# Movies-Database

#### Author: Bocaletto Luca  
#### Description: Structured SQL collection of 10,000 films, ideal for testing, exercises, applications, and analytics  
#### Files Type: SQL  
#### Total Tables: 1  
#### Total Records: 10,000  
#### Range Year: N/A  

[![License: MIT](https://img.shields.io/badge/License-MIT-green)](https://github.com/bocaletto-luca/Movies-Database/blob/main/LICENSE) [![SQL](https://img.shields.io/badge/Format-SQL-blue)](https://github.com/bocaletto-luca/Movies-Database)

Movies-Database delivers a unified `moviedb` table with rich attributes—title, overview, genre, release date, original language, poster URL and vote average—covering 10,000 films. Perfect for film-related research, prototype APIs, data science exercises, or demo applications.

---

## Table of Contents

- [Features](#features)  
- [Schema](#schema)  
- [Repository Structure](#repository-structure)  
- [Quick Start](#quick-start)  
- [Example Queries](#example-queries)  
- [Contributing](#contributing)  
- [License](#license)  

---

## Features

- Single `moviedb` table with 10,000 entries  
- Consistent schema for seamless querying  
- SQL dump generated via phpMyAdmin (MySQL 8.0+ compatible)  
- Supplementary `dates.sql` for date-dimension use cases  
- Ready to import via MySQL CLI or phpMyAdmin  

---

## Schema

| Column             | Type         | Description                               |
| ------------------ | ------------ | ----------------------------------------- |
| id                 | INT          | Auto-increment primary key                |
| title              | VARCHAR(70)  | Movie title                               |
| overview           | VARCHAR(350) | Brief synopsis                            |
| genre              | VARCHAR(100) | Comma-separated genres (e.g., Action)     |
| release_date       | DATE         | Release date (YYYY-MM-DD)                 |
| original_language  | VARCHAR(3)   | ISO language code (e.g., en, ja)          |
| poster_url         | VARCHAR(150) | URL to poster image                       |
| vote_average       | FLOAT        | Average user rating                       |

---

## Repository Structure

```text
LICENSE
README.md
database.sql
dates.sql
moviedb.sql
```

- **database.sql**: Schema setup and transaction settings  
- **dates.sql**: Date-dimension table for advanced time analytics  
- **moviedb.sql**: Dump of `moviedb` table with 10,000 film records  
- **README.md**: Project documentation  

---

## Quick Start

1. Clone the repository  
   ```bash
   git clone https://github.com/bocaletto-luca/Movies-Database.git
   cd Movies-Database
   ```

2. Import into MySQL  
   ```bash
   mysql -u your_user -p < database.sql
   mysql -u your_user -p < dates.sql
   mysql -u your_user -p < moviedb.sql
   ```

3. Or import `moviedb.sql` directly via phpMyAdmin.

4. Connect with any SQL client and start querying.

---

## Example Queries

```sql
-- 1) Top 10 highest-rated films
SELECT title, vote_average
  FROM moviedb
 ORDER BY vote_average DESC
 LIMIT 10;

-- 2) Count of films per genre
SELECT genre, COUNT(*) AS total
  FROM moviedb
 GROUP BY genre
 ORDER BY total DESC;

-- 3) Films released in 2021
SELECT title, release_date
  FROM moviedb
 WHERE YEAR(release_date) = 2021;

-- 4) Distribution by original language
SELECT original_language, COUNT(*) AS count
  FROM moviedb
 GROUP BY original_language;
```

---

## Contributing

Corrections, enhancements, and new data are welcome. Please open an issue or submit a pull request with updates to the SQL dumps or schema.

---

## License

This project is licensed under the [GPL License](https://github.com/bocaletto-luca/Movies-Database/blob/main/LICENSE).
