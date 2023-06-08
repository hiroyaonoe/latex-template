# latex-template
This repository is a template for writing and building documents with LaTeX.

## Usage
Please write documents in `main.tex`.
If you want to use bibtex, you can write references in `main.bib`.

### latexdiff
You can check diff with latexdiff.

When you run below command, `main-diff.pdf` will be built.
```
./script/latexdiff.sh <commit hash (HEAD if you do not specify it)>
```

## Outputs
### local
You can see `main.pdf` by running command `latexmk`.

### remote
This repository builds PDF with GitHub Action and [container-texlive](https://github.com/hiroyaonoe/container-texlive).
GitHub Action builds PDF when you push a commit or tag.
If you push a tag, GitHub Action create release.

You can see the output PDF of each commit in Artifacts of GitHub Actions Workflow and that of each release in Assets.

Please make Actions Workflow permissions `Read and write permissions` in Settings>Actions>General.
