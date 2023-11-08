![](https://img.shields.io/badge/Status-November_2023-green)

# DBS Assessments Template

This is a LaTeX template and document class for assessments at [Dublin Business School](https://www.dbs.ie). With this template, you can create assessments in a structured and appealing format. It includes pre-made sections, styles, and features that meet the requirements of Dublin Business School (**As of November 2023**).

## Using the Template

To use this template, follow these steps:

1. Click the green "Use this template" button at the top of this GitHub page to create a new repository based on this template.
2. Clone the created repository to your computer.
3. Customize the TitlePage LaTeX file (`titlePage.tex`) to include your assessment information.
4. Insert images into the `images` folder and use the `sections` folder for your text. Name the text files according to the numbering (e.g., `file-01.tex`) to have them automatically inserted into the document.
5. Create the assessment by compiling the `assessment.tex` using LaTeX.

## Used Packages and Features

This template uses various LaTeX packages to facilitate the creation of assessments. Here are some of the packages used and their functions:

- [`babel`](https://ctan.org/pkg/babel): Support for multiple languages.
- [`biblatex`](https://www.ctan.org/pkg/biblatex): Allows source and citation management. The APA citation style is set as default but can be easily changed to other citation styles in the `nak.cls` file. More details can be found [here](https://de.overleaf.com/learn/latex/Biblatex_bibliography_styles).
- [`hyperref`](https://www.ctan.org/pkg/hyperref): Generates hyperlinks within the document.
- [`tikz`](https://www.ctan.org/pkg/pgf): Creates diagrams and graphics.
- [`listings`](https://ctan.org/pkg/listings): Embeds source code with syntax highlighting.
- [`graphicx`](https://ctan.org/pkg/graphicx) and [`subcaption`](https://ctan.org/pkg/subcaption): Inserts images with captions.
- [`cleveref`](https://ctan.org/pkg/cleveref): Automatic references to chapters, figures, etc.
- [`acronym`](https://ctan.org/pkg/acronym): Manages acronyms.
- [`threeparttable`](https://ctan.org/pkg/threeparttable): For tables with footnotes.
- Other packages for tables, fonts, and more.

## Using Minted for Code (Optional)

This template provides the option to insert and format source code using the [`minted` package](https://www.ctan.org/pkg/minted). `minted` is a powerful package that offers syntax highlighting for various programming languages. To use this feature:

1. Uncomment the relevant sections in the `settings.cls` and `main.tex` files.
2. Install the required `python-pygments` package on your system (see [here](https://pypi.org/project/Pygments/)).
3. Configure the code as per the instructions in the comments.
4. Insert your source code into the prepared environment in the `main.tex` file.

For more details on using `minted`, see [here](https://ctan.org/pkg/minted).

## Support

If you have any questions or issues with using this template, I am happy to assist. You can contact me through my GitHub page.
