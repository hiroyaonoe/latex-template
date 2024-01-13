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
Please make Actions Workflow permissions `Read and write permissions` in Settings>Actions>General.

#### Commit
You can see `main.pdf` in 
- `main-pdf` branch
- Artifacts of GitHub Actions Workflow

#### Tag
If you push a tag, GitHub Action create release.
You can see `main.pdf` in Assets of the release.
