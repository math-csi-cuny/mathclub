# mathclub

This is source generating the website for the Math Club at CUNY
College of Staten Island. To change the website content, edit the
`.qmd` files or add new files here. For any more advanced tricks,
reach out to @michiexile for help picking or changing a template or
generating more interesting structures.

The top navigation bar is controlled by entries in the file
`_quarto.yml`. Each `.md` or `.qmd` file that has a file header will
generate a page on the website. The Quarto documentation has
[extensive information](https://quarto.org/docs/websites/) for how to write a website with the Quarto system.

## Dependencies

1. quarto (.qmd files)
2.

## local Testing

The website runs off of a index.qmd file (Quarto Markdown). In order to locally run a live preview of the server without making commits to the main or a local branch, you can self host the changes to check the changes using quarto.

#### Commands

The first thing to install is quarto. This is to ensure that the css styles load as you locally test the code. Here are the following commands:

```
// Macos through homebrew
brew install --cask quarto
quarto --version

// Windows install
winget install --id Postit.Quarto -e
quarto --version
```

Now that you have quarto installed you can now begin to test the website locally. Here are the following commands to preview the changes to the website:

```
quarto preview index.qmd
quarto preview
```

To close the local host from the terminal enter in the following command:

```
Ctrl + C
```
