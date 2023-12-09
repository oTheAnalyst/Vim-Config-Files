# 💤 LazyVim

A starter template for [LazyVim](https://github.com/LazyVim/LazyVim).
Refer to the [documentation](https://lazyvim.github.io/installation) to get started.
# Vim-Config-Files



## Custom .Rprofile file

Dependencies in R:
```r 
install.packages('httpg')
```


To create an R profile use the following command:

```shell
touch ~/.Rprofile```
than nano into ``~/.Rprofile`` and copy paste this:

```r

view_xl <- function(.data) {
  if (interactive()) {
    tmp <- tempfile(fileext = ".csv")
    data.table::fwrite(.data, tmp)
    browseURL(tmp, browser = "gnumeric")
  }
}

httpgd::hgd()

options(reactable.theme = reactable::reactableTheme(
          color = "hsl(233, 9%, 87%)",
          backgroundColor = "#002b36",
          borderColor = "#eee8d5",
          stripedColor = "#586e75",
          highlightColor = "#6c71c4",
          inputStyle = list(backgroundColor = "hsl(233, 9%, 25%)"),
          selectStyle = list(backgroundColor = "hsl(233, 9%, 25%)"),
          pageButtonHoverStyle = list(backgroundColor = "hsl(233, 9%, 25%)"),
          pageButtonActiveStyle = list(backgroundColor = "hsl(233, 9%, 28%)")
        ))

view <- function(.data){
  if(interactive()) {
    # Use a temporary HTML file to display the table
    tmp <- tempfile(fileext = ".html")
    
    # Write the reactable output to the temporary HTML file
    html <- reactable::reactable(.data,
              filterable = TRUE,
              searchable = TRUE,
              showPageSizeOptions = TRUE,
              striped = TRUE,
              highlight = TRUE,
              compact = TRUE,
              defaultPageSize = 30)
    htmlwidgets::saveWidget(html, file = tmp)

    # Open the temporary HTML file in Brave browser
    # Replace "firefox" with the path to the firefox executable if necessary
    browseURL(tmp, browser = "firefox")
  }
}


print(".Rprofile loaded successfully")


```
