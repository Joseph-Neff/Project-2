Create Table yearly_rates (
year int,
service_category VARCHAR,
sex VARCHAR,
spending_per_person int,
out_of_pocket_spending_per_person int,
price int,
out_of_pocket_price int
);
Create Table one_year (
age	int,
sex VARCHAR,
bmi	decimal,
children int,
smoker VARCHAR,
region VARCHAR,	
insurance decimal
);

SELECT one_year.age, one_year.sex, one_year.bmi, one_year.children, one_year.smoker, one_year.region, one_year.insurance
FROM one_year
JOIN yearly_rates
ON one_year.sex = yearly_rates.sex;

Select sex, count(sex) as "male"
From yearly_rates
Where children=1;

SELECT players.first_name, players.last_name, players.hand, matches.loser_rank
FROM matches
INNER JOIN players ON
players.player_id=matches.loser_id;

SELECT one_year.age, one_year.sex, one_year.bmi, one_year.children, one_year.smoker, one_year.region, one_year.insurance,
yearly_rates.year, yearly_rates.service_category, yearly_rates.sex, yearly_rates.spending_per_person, yearly_rates.out_of_pocket_spending_per_person, yearly_rates.price, yearly_rates.out_of_pocket_price
FROM one_year 
FULL OUTER JOIN yearly_rates
ON one_year.sex = yearly_rates.sex;
