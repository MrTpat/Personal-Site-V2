<div align="center">
  <img alt="Logo" src="https://raw.githubusercontent.com/bchiang7/v4/main/src/images/logo.png" width="100" />
</div>
<h1 align="center">
  brittanychiang.com - v4
</h1>
<p align="center">
  The fourth iteration of <a href="https://brittanychiang.com" target="_blank">brittanychiang.com</a> built with <a href="https://www.gatsbyjs.org/" target="_blank">Gatsby</a>, forked and hosted with <a href="https://pages.github.com/" target="_blank">GitHub Pages</a>
</p>
<p align="center">
  Previous iterations:
  <a href="https://github.com/bchiang7/v1" target="_blank">v1</a>,
  <a href="https://github.com/bchiang7/v2" target="_blank">v2</a>,
  <a href="https://github.com/bchiang7/bchiang7.github.io" target="_blank">v3</a>
</p>
<p align="center">
  <a href="https://github.com/MrTpat/Personal-Site-V2/actions/workflows/deploy.yml" target="_blank">
    <img src="https://github.com/MrTpat/Personal-Site-V2/actions/workflows/deploy.yml/badge.svg" alt="Deploy Status" />
  </a>
</p>

![demo](https://raw.githubusercontent.com/bchiang7/v4/main/src/images/demo.png)

## 🚨 Forking this repo (please read!)

Many people have contacted me asking me if they can use this code for their own website, and the answer to that question is usually **yes, with attribution**.

I value keeping my site open source, but as you all know, _**plagiarism is bad**_. It's always disheartening whenever I find that someone has copied my site without giving me credit. I spent a non-trivial amount of effort building and designing this iteration of my website, and I am proud of it! All I ask of you all is to not claim this effort as your own.

Please also note that I did not build this site with the intention of it being a starter theme, so if you have questions about implementation, please refer to the [Gatsby docs](https://www.gatsbyjs.org/docs/).

### TL;DR

Yes, you can fork this repo. Please give me proper credit by linking back to [brittanychiang.com](https://brittanychiang.com). Thanks!

## 🛠 Installation & Set Up

1. Install and use the correct version of Node using [NVM](https://github.com/nvm-sh/nvm) (version is pinned in `.nvmrc`)

   ```sh
   nvm install
   nvm use
   ```

2. Install dependencies

   ```sh
   yarn
   ```

3. Make sure `static/resume.pdf` exists (see [Resume PDF](#-resume-pdf) below — it's not committed by default and the build will fail without it)

4. Start the development server

   ```sh
   npm start
   ```

## 🚀 Building and Running for Production

1. Generate a full static production build (built with the `/Personal-Site-V2` path prefix used on GitHub Pages)

   ```sh
   npm run build
   ```

1. Preview the site as it will appear once deployed

   ```sh
   npm run serve
   ```

## 📄 Resume PDF

`src/components/nav.js` and `src/components/menu.js` import `static/resume.pdf` directly, so it must exist on disk or the build (`npm start` / `npm run build`) will fail. It isn't generated automatically — when you update your resume:

```sh
cd static/Awesome-CV
make
cp resume.pdf ../resume.pdf
```

Then commit the updated `static/resume.pdf`.

## ☁️ Deployment

The site is hosted on **GitHub Pages** at https://mrtpat.github.io/Personal-Site-V2/, driven by two workflows in `.github/workflows/`:

- **`deploy.yml`** — on every push to `main`, builds the site and publishes `public/` to the `gh-pages` branch.
- **`pr-preview.yml`** — on every pull request, builds and publishes a live preview to `https://mrtpat.github.io/Personal-Site-V2/pr-preview/pr-<number>/`, comments the link on the PR, and tears the preview down automatically when the PR closes.

No manual deploy steps are needed — merging to `main` is the only thing that ships to production.

## 🎨 Color Reference

| Color          | Hex                                                                |
| -------------- | ------------------------------------------------------------------ |
| Navy           | ![#0a192f](https://via.placeholder.com/10/0a192f?text=+) `#0a192f` |
| Light Navy     | ![#172a45](https://via.placeholder.com/10/0a192f?text=+) `#172a45` |
| Lightest Navy  | ![#303C55](https://via.placeholder.com/10/303C55?text=+) `#303C55` |
| Slate          | ![#8892b0](https://via.placeholder.com/10/8892b0?text=+) `#8892b0` |
| Light Slate    | ![#a8b2d1](https://via.placeholder.com/10/a8b2d1?text=+) `#a8b2d1` |
| Lightest Slate | ![#ccd6f6](https://via.placeholder.com/10/ccd6f6?text=+) `#ccd6f6` |
| White          | ![#e6f1ff](https://via.placeholder.com/10/e6f1ff?text=+) `#e6f1ff` |
| Green          | ![#64ffda](https://via.placeholder.com/10/64ffda?text=+) `#64ffda` |
