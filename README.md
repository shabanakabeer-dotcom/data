# 🎬 Netflix Titles – Data Cleaning & Exploratory Analysis (Python)

An exploratory data analysis of the Netflix catalogue using **Python and pandas** in Jupyter Notebook. The project covers data inspection, cleaning, feature engineering and answering basic business questions about the content available on Netflix.

---

## 📂 Dataset

- **File:** `netflix_titles.csv` (Netflix Movies and TV Shows, from Kaggle)
- **Size:** 8,807 titles × 12 columns

| Column | Description |
|---|---|
| `show_id` | Unique ID of the title |
| `type` | Movie or TV Show |
| `title` | Name of the title |
| `director` | Director(s) |
| `cast` | Cast members |
| `country` | Country of production |
| `date_added` | Date the title was added to Netflix |
| `release_year` | Original release year |
| `rating` | Maturity rating (e.g. TV-MA, PG-13) |
| `duration` | Minutes (movies) or seasons (TV shows) |
| `listed_in` | Genres / categories |
| `description` | Short summary |

---

## 🛠️ Tools Used

- Python 3
- pandas
- Jupyter Notebook

---

## 🔎 What I Did

### 1. Data Inspection
- Loaded the CSV and checked `shape`, `columns`, `dtypes` and missing values
- Checked the number of unique ratings (17)

### 2. Filtering & Querying
- Movies only, titles from India, titles released after 2015
- Title keyword search (e.g. "Love", "Martin")
- Dropped rows with a missing `director`

### 3. Data Cleaning
- Filled missing `country` values with `"unknown"`
- Filled missing `rating` values with `"Not Rated"`
- Converted `date_added` to a proper datetime format
- Converted `listed_in` to lowercase for consistency

### 4. Feature Engineering
| New column | Meaning |
|---|---|
| `year_added` | Year the title was added to Netflix |
| `month_added` | Month name the title was added |
| `title_length` | Number of characters in the title |
| `content_age` | Age of the content (reference year – `release_year`) |
| `is_movie` | `True` if the title is a Movie |
| `duration_int` | Numeric part of the `duration` column |

### 5. Analysis
- Count of movies vs TV shows
- Titles added by year and by month
- Top countries by number of titles
- Number of TV shows released per year
- Oldest titles in the catalogue and sorting by release year / title

---

## 📊 Key Findings

- The catalogue has **6,131 movies** and **2,676 TV shows**.
- **United States (2,818)**, **India (972)** and **United Kingdom (419)** are the top three countries.
- **July** is the month when the most titles were added (827); **February** has the fewest (563).
- **1,879 titles** were added in 2020.
- Most titles were released between 2016 and 2020, with **2018** the peak year (1,147 titles).
- TV show releases grew steadily, peaking at **436 in 2020**.
- **825** titles have no cast information listed.

---

## ▶️ How to Run

1. Download the dataset from Kaggle and place `netflix_titles.csv` in your working folder.
2. Install the requirements:
   ```bash
   pip install pandas jupyter
   ```
3. Update the file path in the first cell, for example:
   ```python
   netflix = pd.read_csv("netflix_titles.csv")
   ```
4. Open `netflix_review.ipynb` and run all cells.

---

## 👩‍💻 Author

**Shabana Sherin RV**
Data Analytics student

📌 Part of my data analytics portfolio.
