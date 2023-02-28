my_cars.csv: 01-load_data.R
	Rscript 01-load_data.R

my_cars_cleaned.csv: my_cars.csv 02-clean.R
	Rscript 02-clean.R

03-report.html: 03-report.Rmd my_cars_cleaned.csv
	Rscript -e "rmarkdown::render('03-report.Rmd')"

.PHONY: rstudio
rstudio:
	docker run -p 8787:8787 -e PASSWORD="asdf" -v .:/home/rstudio/my_project rocker/rstudio:4.1.3

.PHONY: clean
clean:
	rm -f *.csv *.html .DS_Store
