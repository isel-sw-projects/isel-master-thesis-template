# ISEL Master's Thesis Template

A lightweight, ready-to-use LaTeX template for writing a Master's Thesis (Dissertation, Project, or Internship Report) at Instituto Superior de Engenharia de Lisboa (ISEL). Designed around the institutional formatting guidelines of ISEL's Technical-Scientific Council, it uses essential packages for layout, figures, code listings, and references and is organized for easy editing in VS Code.

The modular structure separates content from formatting. Built on the standard `report` class, `iselthesis.cls` handles typography, ISEL colors, 2.5 cm margins, 1.5 line spacing, and the chapter and section hierarchy.

The template includes the full-page orange grid cover (Anexo I) and a detailed title page with supervisors, jury members, and affiliations (Anexo II). Dedicated front-matter files provide a Declaration of Integrity, Portuguese Resumo, English Abstract, acknowledgements, and an Acronyms list.

## Get started in VS Code

1. Install a LaTeX distribution with `pdflatex`, `bibtex`, and `latexmk` available on your `PATH`.
2. Install the **LaTeX Workshop** extension in VS Code. See its [installation guide](https://github.com/James-Yu/LaTeX-Workshop/wiki/Install) for platform setup, including lightweight distributions.
3. Open this project folder and select `isel-MsC-2026-Dissertation.tex`.
4. Use the LaTeX Workshop **TeX** sidebar to build the project and preview the PDF.

The template uses standard LaTeX packages, including `geometry`, `setspace`, `titlesec`, `caption`, `graphicx`, `xcolor`, `listings`, `helvet`, `hyperref`, `pdfpages`, and TikZ. A minimal LaTeX installation may need additional packages; install any reported as missing using your distribution's package manager. References use BibTeX with the `IEEEtran` bibliography style.

## What to edit

| File or folder | Purpose |
| --- | --- |
| `isel-MsC-2026-Dissertation.tex` | Main document and chapter order |
| `tex/cover.tex` | Anexo I: orange grid cover with title, author, degree, supervisors, and date |
| `tex/titlepage.tex` | Anexo II: detailed title page with jury members and affiliations |
| `tex/` | Chapters, abstracts, acknowledgements, and other front matter |
| `refs.bib` | Bibliography entries |
| `img/` | Logos, cover background, and figures |
| `iselthesis.cls` | Fonts, ISEL colors, margins, headings, and captions |
| `sintax-highlight.sty` | Code syntax highlighting |

Replace the sample text with your content. To add a chapter, create a `.tex` file in `tex/` and add an `\include{tex/filename}` entry to the main document.

## Build from the terminal

Run from the project folder:

```sh
latexmk -pdf isel-MsC-2026-Dissertation.tex
```

This generates `isel-MsC-2026-Dissertation.pdf` and handles bibliography and cross-reference passes automatically.

Without `latexmk`, run:

```sh
pdflatex isel-MsC-2026-Dissertation.tex
bibtex isel-MsC-2026-Dissertation
pdflatex isel-MsC-2026-Dissertation.tex
pdflatex isel-MsC-2026-Dissertation.tex
```
