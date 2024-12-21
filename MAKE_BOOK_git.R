rmarkdown::find_pandoc(dir = "/usr/local/bin/", cache = FALSE)

fn_RenderBookYML <- function(strPath = ".", strOutputYML = "_output.yml") {
    xfun::in_dir(strPath, bookdown::render_book("index.rmd", output_yaml = strOutputYML))
}


# Make gitbook mit GNU R 404

fn_RenderBookYML(strOutputYML = "_output_vec.yml")

#
## WORD
strBookDir <- "MY_BOOK"
bookdown::render_book("./",
    "bookdown::markdown_document2",
    output_dir = strBookDir,
    output_file = paste0(
        format(Sys.time(), "%Y%m%d_%H%M-"),
        "BOOK",
        # "-Details",
        "-test.docx"
    )
)
