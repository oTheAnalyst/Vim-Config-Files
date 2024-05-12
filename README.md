# 💤 LazyVim

A starter template for [LazyVim](https://github.com/LazyVim/LazyVim).
Refer to the [documentation](https://lazyvim.github.io/installation) to get started.
# Installation

- Make a backup of your current Neovim files:
```
# required
mv ~/.config/nvim{,.bak}

# optional but recommended
mv ~/.local/share/nvim{,.bak}
mv ~/.local/state/nvim{,.bak}
mv ~/.cache/nvim{,.bak}
```



## Custom .Rprofile file

Dependencies in R:
```r 
install.packages("httpgd")
install.packages("languageserver")
```


To create an R profile use the following command:

```shell
touch ~/.Rprofile
```

than nano into ``~/.Rprofile`` and copy paste this:

```r

options(width = 100)
.libPaths(c(.libPaths(), "~/Rpackages/"))
.libPaths(c(.libPaths(), "~/R/x86_64-pc-linux-gnu-library/4.3/"))

if (interactive()) {
  view_xl <- function(.data) {
    tmp <- tempfile(fileext = ".csv")
    data.table::fwrite(.data, tmp)
    browseURL(tmp, browser = "gnumeric")
  }

  httpgd::hgd()

  options(browser = "brave",
    reactable.theme = reactable::reactableTheme(
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

  view <- function(.data) {
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
      defaultPageSize = 30
    )
    htmlwidgets::saveWidget(html, file = tmp)

    # Open the temporary HTML file in Brave browser
    # Replace "firefox" with the path to the firefox executable if necessary
    browseURL(tmp, browser = "brave")
  }
}

print(".Rprofile loaded successfully")


```
