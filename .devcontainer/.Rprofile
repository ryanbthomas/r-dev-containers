# Source: https://renkun.me/2020/04/14/writing-r-in-vscode-working-with-multiple-r-sessions/
Sys.setenv(TERM_PROGRAM = "vscode")
source(
  file.path(
    if (.Platform$OS.type == "windows") file.path(Sys.getenv("HOMEDRIVE"), Sys.getenv("HOMEPATH")) else Sys.getenv("HOME"), 
  ".vscode-R", "init.R"
))

# Source: https://github.com/REditorSupport/vscode-R/wiki/Plot-viewer#svg-in-httpgd-webpage
if (interactive() && Sys.getenv("TERM_PROGRAM") == "vscode") {
  if ("httpgd" %in% .packages(all.available = TRUE)) {
    options(vsc.plot = FALSE)
    options(device = function(...) {
      httpgd::hgd(silent = TRUE)
      .vsc.browser(httpgd::hgd_url(history = FALSE), viewer = "Beside")
    })
  }
}

# Set CRAN Mirror
options(repos = c(CRAN = Sys.getenv("CRAN_MIRROR")))
options(repos = c(CRAN = "https://cran.rstudio.com/"))
options(repos = c(CRAN = "https://cran.rstudio.com/"))
#