<!--
## Reproducibility
I want the title to stay at the top of the page
-->

<figure>
  <blockquote>
    "Works on my machine"
  </blockquote>
  <figcaption style="font-size: 0.4em; font-style: italic;">— Every developer ever</figcaption>
</figure>


Notes:
- Reproducibility 

---

<style>
  .reveal .slides section .github-readme {
    width: min(82%, 22rem);
    min-height: 14rem;
    margin: 0 auto;
    padding: 1.25rem 1.4rem;
    border: 0.0625rem solid #30363d;
    border-radius: 0.75rem;
    background: #0d1117;
    box-shadow: 0 0.75rem 2rem rgba(0, 0, 0, 0.28);
    box-sizing: border-box;
    text-align: left;
  }

  .reveal .slides section .github-readme-header {
    display: flex;
    align-items: center;
    gap: 0.55rem;
    margin-bottom: 1rem;
    color: #8b949e;
    font-size: 0.34em;
    letter-spacing: 0.01em;
  }

  .reveal .slides section .github-readme-dot {
    width: 0.45rem;
    height: 0.45rem;
    border-radius: 999rem;
    background: #30363d;
    flex: 0 0 auto;
  }

  .reveal .slides section .github-readme-body {
    border-top: 0.0625rem solid #21262d;
    padding-top: 1rem;
    min-height: 9.5rem;
  }

  .reveal .slides section .github-readme-title {
    margin: 0 0 0.9rem 0;
    color: #e6edf3;
    font-size: 0.8em;
    font-weight: 600;
    line-height: 1.2;
  }

  .reveal .slides section .github-readme-rule {
    height: 0.0625rem;
    background: #21262d;
  }

  .reveal .slides section .github-readme-empty {
    display: flex;
    flex-direction: column;
    align-items: center;
    gap: 0.7rem;
    padding-top: 0.2rem;
    text-align: center;
  }

  .reveal .slides section .github-readme-empty-title {
    color: #e6edf3;
    font-size: 0.62em;
    font-weight: 600;
    line-height: 1.2;
  }

  .reveal .slides section .github-readme-empty-copy {
    max-width: 18rem;
    color: #8b949e;
    font-size: 0.38em;
    line-height: 1.35;
  }

  .reveal .slides section .github-readme-button {
    display: inline-flex;
    align-items: center;
    justify-content: center;
    min-height: 2.2rem;
    padding: 0.35rem 0.9rem;
    border: 0.0625rem solid rgba(240, 246, 252, 0.1);
    border-radius: 0.4rem;
    background: #1f6feb;
    color: #ffffff;
    font-size: 0.38em;
    font-weight: 600;
    line-height: 1;
    box-sizing: border-box;
  }
</style>

<!-- .slide: data-auto-animate data-auto-animate-id="readme-images" -->

<div data-id="readme-image" class="github-readme">
  <div class="github-readme-header">
    <span class="github-readme-dot"></span>
    <span>README.md</span>
  </div>
  <div class="github-readme-body github-readme-empty">
    <div class="github-readme-empty-title">Add a README</div>
    <div class="github-readme-empty-copy">Add a README with an overview of the project.</div>
    <div class="github-readme-button">Add a README</div>
  </div>
</div>

Notes:
- I think this might be a silent scream for help in 'corporate'
- Or a challenge to see if you're enough developer to understand the complexity of the codebase
- you know if you see this, that that codebase is going to be an experience ....

---
<!-- .slide: data-auto-animate data-auto-animate-id="readme-images" -->

<div data-id="readme-image" class="github-readme">
  <div class="github-readme-header">
    <span class="github-readme-dot"></span>
    <span>README.md</span>
  </div>
  <div class="github-readme-body">
    <h3 class="github-readme-title">Backend</h3>
    <div class="github-readme-rule"></div>
  </div>
</div>


---

![unixodbc](images/oh-unixodbc-demo.gif)

Notes:
- colleague python project, dependency rabbithole
- please update the README
- why can't we do `uv sync` or `poetry install`
- Java devs lucky - JNA or docker
- at the end of the day we just added `brew install unixodbc` to the README

---

<pre><code class="language-markdown" data-trim data-line-numbers="12-16|6-10">
## Introduction

Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
Fusce ac turpis quis ligula lacinia aliquet. Mauris ipsum. Nulla metus metus, ullamcorper vel, tincidunt sed

## Prerequisites

- Java
- Maven
- Docker

## Quick Start

git clone https://github.com/spring-projects/spring-petclinic.git
cd spring-petclinic
./mvnw spring-boot:run

## Deep dive

Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
Fusce ac turpis quis ligula lacinia aliquet. Mauris ipsum. Nulla metus metus, ullamcorper vel, tincidunt sed
</code></pre>

<div class="slide-callout-stack">
  <div class="slide-callout slide-callout--info" data-line-callout="12-16">
    You probably only care about the Quick Start
  </div>
  <div class="slide-callout slide-callout--info" data-line-callout="6-10" hidden>
    And if that fails you <em>might</em> go and look at the prerequisites
  </div>
</div>

Notes:
- so what do we actually want from a README - probably just the quickstart right?
- petclinic does this really well
- and then if that fails we'll go and look at the prerequisites section... maybe

---

<div style="display:flex; flex-direction:column; gap:0.9rem; align-items:center;">
  <div style="display:flex; justify-content:space-evenly; align-items:center; width:96%;">
    <img src="images/Apache_Maven_logo.svg" width="16%">
    <img src="images/Gradle_logo.svg" width="16%">
    <img src="images/bazel-logo.svg" width="16%">
  </div>
  <div style="display:flex; justify-content:space-evenly; align-items:center; width:98%;">
    <img src="images/jenv.png" width="18%">
    <img src="images/sdkman-pattern.svg" width="18%">
    <img src="images/backend-asdf.svg" width="18%">
    <img src="images/mise.svg" width="18%">
  </div>
</div>



Notes:
- but for the most part we're actually ok - we don't need to install java or our build tools

---

<!-- .slide: data-auto-animate data-auto-animate-id="readme-prereqs" -->

<pre data-id="readme-prereqs-block"><code class="language-markdown" data-trim data-noescape data-line-numbers="8-10">
## Introduction

Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
Fusce ac turpis quis ligula lacinia aliquet. Mauris ipsum. Nulla metus metus, ullamcorper vel, tincidunt sed

## Prerequisites

- Java
- Maven
- Docker

## Quick Start

git clone https://github.com/spring-projects/spring-petclinic.git
cd spring-petclinic
./mvnw spring-boot:run

## Deep dive
Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
Fusce ac turpis quis ligula lacinia aliquet. Mauris ipsum. Nulla metus metus, ullamcorper vel, tincidunt sed
</code></pre>

Notes:
- so we don't really need to worry about maven and java

---

<!-- .slide: data-auto-animate data-auto-animate-id="readme-prereqs" -->

<pre data-id="readme-prereqs-block"><code class="language-markdown" data-trim data-noescape data-line-numbers="8">
## Introduction

Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
Fusce ac turpis quis ligula lacinia aliquet. Mauris ipsum. Nulla metus metus, ullamcorper vel, tincidunt sed

## Prerequisites

- Docker

## Quick Start

git clone https://github.com/spring-projects/spring-petclinic.git
cd spring-petclinic
./mvnw spring-boot:run

## Deep dive

Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
Fusce ac turpis quis ligula lacinia aliquet. Mauris ipsum. Nulla metus metus, ullamcorper vel, tincidunt sed
</code></pre>

<div class="slide-callout-stack">
  <div class="slide-callout slide-callout--info" data-line-callout="8">
    we want as few of these hard dependencies as possible
  </div>
</div>

---

<!-- .slide: data-auto-animate data-auto-animate-id="readme-prereqs" -->

<pre data-id="readme-prereqs-block"><code class="language-markdown" data-trim data-noescape data-line-numbers="9">
## Introduction

Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
Fusce ac turpis quis ligula lacinia aliquet. Mauris ipsum. Nulla metus metus, ullamcorper vel, tincidunt sed

## Prerequisites

- Docker
- Actionlint

## Quick Start

git clone https://github.com/spring-projects/spring-petclinic.git
cd spring-petclinic
./mvnw spring-boot:run

## Deep dive

Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
Fusce ac turpis quis ligula lacinia aliquet. Mauris ipsum. Nulla metus metus, ullamcorper vel, tincidunt sed
</code></pre>

Notes:
- we are not just in a _java_ world - we need to live and work with other tools
- ok, so we're building with github actions and because I'm 'me' I keep on making mistakes
- and I only see these mistakes after I've pushed and had to twirl my fingers and wait for the new error

---

<!-- .slide: data-auto-animate data-auto-animate-id="readme-prereqs" -->

<pre data-id="readme-prereqs-block"><code class="language-markdown" data-trim data-noescape data-line-numbers="9-10">
## Introduction

Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
Fusce ac turpis quis ligula lacinia aliquet. Mauris ipsum. Nulla metus metus, ullamcorper vel, tincidunt sed

## Prerequisites

- Docker
- Actionlint
- Hadolint

## Quick Start

git clone https://github.com/spring-projects/spring-petclinic.git
cd spring-petclinic
./mvnw spring-boot:run

## Deep dive

Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
Fusce ac turpis quis ligula lacinia aliquet. Mauris ipsum. Nulla metus metus, ullamcorper vel, tincidunt sed
</code></pre>

Notes:
- friends don't let friends build dockerfiles, but if you do ... please lint them

---
<!-- .slide: data-auto-animate -->

<div style="display:flex; flex-direction:column; gap:0.9rem; align-items:center;">
  <div class="fragment semi-fade-out" style="display:flex; justify-content:space-evenly; align-items:center; width:96%;">
    <img src="images/Apache_Maven_logo.svg" width="16%">
    <img src="images/Gradle_logo.svg" width="16%">
    <img src="images/bazel-logo.svg" width="16%">
  </div>
  <div style="display:flex; justify-content:space-evenly; align-items:center; width:98%;">
    <img src="images/jenv.png" width="18%">
    <img src="images/sdkman-pattern.svg" width="18%">
    <img src="images/backend-asdf.svg" width="18%">
    <img src="images/mise.svg" width="18%">
  </div>
</div>

Notes:
- this is were we start getting really opinionated
- for me jenv, and sdkman fall short in that they only manage the Java runtime

---
<!-- .slide: data-auto-animate -->

![mise](images/mise.svg)  
mise.jdx.dev
<!-- mise.jdx.dev this should be link coloured -->


- mise is heavily influence by asdf <!-- .element: class="fragment fade-in-then-semi-out" -->
- supply chain security <!-- .element: class="fragment fade-in-then-semi-out" -->
- direnv functionality <!-- .element: class="fragment fade-in-then-semi-out" -->
- task runner <!-- .element: class="fragment fade-in-then-semi-out" -->
- performance <!-- .element: class="fragment fade-in-then-semi-out" -->
- lockfiles <!-- .element: class="fragment fade-in-then-semi-out" -->
- integration with hk,pitchfork, fnox <!-- .element: class="fragment " -->

Notes:
- asdf backend in mise is deprecated
- all plugins are managed in mise-plugins repo which is tightly controlled
- instead of calling shims on every command mise updates the path, and then changes it on directory change

---
<!-- .slide: class="backend-slide" -->

<style>
  .reveal .slides section.backend-slide {
    height: 100%;
    box-sizing: border-box;
    text-align: left;
  }

  .reveal .slides section.backend-slide .backend-layout {
    height: 100%;
    gap: 0.35rem;
  }

  .reveal .slides section.backend-slide .backend-grid {
    flex: 1 1 auto;
    min-height: 0;
    display: grid;
    grid-template-columns: repeat(5, minmax(0, 1fr));
    grid-template-rows: repeat(3, minmax(0, 1fr));
    gap: 0.6rem 0.9rem;
    align-items: stretch;
  }

  .reveal .slides section.backend-slide .backend-card {
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
    padding: 0.2rem;
    min-width: 0;
    min-height: 0;
    text-align: center;
    font-size: 0.42em;
    line-height: 1.15;
  }

  .reveal .slides section.backend-slide .backend-logo {
    position: relative;
    flex: 1 1 auto;
    min-width: 0;
    min-height: 0;
    width: 100%;
    display: flex;
    align-items: center;
    justify-content: center;
    padding: 0.45rem;
    border: 0.14rem solid rgba(255, 255, 255, 0.55);
    border-radius: 0.7rem;
    background: rgba(148, 163, 184, 0.18);
    box-shadow:
      inset 0 0 0 0.0625rem rgba(255, 255, 255, 0.12),
      0 0 0 0.0625rem rgba(255, 255, 255, 0.2);
    box-sizing: border-box;
    margin-bottom: 0.28rem;
  }

  .reveal .slides section.backend-slide .backend-logo img {
    max-width: 82%;
    max-height: 82%;
    width: auto;
    height: auto;
    margin: 0;
    object-fit: contain;
    background: transparent;
    border: 0;
    box-shadow: none;
  }

  .reveal .slides section.backend-slide h3 {
    margin: 0 0 0.15em 0;
    text-align: center;
  }

  .reveal .slides section.backend-slide .backend-badge {
    position: absolute;
    top: 0.95rem;
    left: -1.15rem;
    transform: rotate(-28deg);
    padding: 0.36rem 1.35rem;
    border-radius: 0.2rem;
    font-size: 0.36em;
    font-weight: 700;
    line-height: 1;
    letter-spacing: 0.04em;
    text-transform: uppercase;
    color: #fff;
    box-shadow: 0 0.125rem 0.5rem rgba(0, 0, 0, 0.18);
    pointer-events: none;
    white-space: nowrap;
  }

  .reveal .slides section.backend-slide .backend-badge.deprecated {
    background: #6b7280;
  }

  .reveal .slides section.backend-slide .backend-badge.experimental {
    background: #4f46e5;
  }
</style>

<div class="backend-layout r-vstack items-stretch justify-start">
  <h3>Backends</h3>

  <div class="backend-grid">
    <div class="backend-card">
      <div class="backend-logo"><img src="images/backend-aqua.svg" alt="aqua"></div>
    </div>
    <div class="backend-card">
      <div class="backend-logo">
        <img src="images/backend-asdf.svg" alt="asdf">
        <div class="backend-badge deprecated">Deprecated</div>
      </div>
    </div>
    <div class="backend-card">
      <div class="backend-logo"><img src="images/backend-cargo.png" alt="cargo crates"></div>
    </div>
    <div class="backend-card">
      <div class="backend-logo">
        <img src="images/backend-conda-forge.png" alt="conda">
        <div class="backend-badge experimental">Experimental</div>
      </div>
    </div>
    <div class="backend-card">
      <div class="backend-logo"><img src="images/backend-dotnet.svg" alt="dotnet"></div>
    </div>
    <div class="backend-card">
      <div class="backend-logo"><img src="images/backend-forgejo.svg" alt="forgejo"></div>
    </div>
    <div class="backend-card">
      <div class="backend-logo"><img src="images/backend-gem.png" alt="gem"></div>
    </div>
    <div class="backend-card">
      <div class="backend-logo"><img src="images/backend-github.svg" alt="github"></div>
    </div>
    <div class="backend-card">
      <div class="backend-logo"><img src="images/backend-gitlab.svg" alt="gitlab"></div>
    </div>
    <div class="backend-card">
      <div class="backend-logo"><img src="images/backend-go.svg" alt="go"></div>
    </div>
    <div class="backend-card">
      <div class="backend-logo"><img src="images/backend-http.svg" alt="http"></div>
    </div>
    <div class="backend-card">
      <div class="backend-logo"><img src="images/backend-npm.svg" alt="npm"></div>
    </div>
    <div class="backend-card">
      <div class="backend-logo"><img src="images/backend-python.png" alt="uv / pipx"></div>
    </div>
    <div class="backend-card">
      <div class="backend-logo">
        <img src="images/backend-swift.svg" alt="swift">
        <div class="backend-badge experimental">Experimental</div>
      </div>
    </div>
    <div class="backend-card">
      <div class="backend-logo"><img src="images/backend-vfox.png" alt="vfox"></div>
    </div>
  </div>
</div>

Notes:
- mise real super power is how much tooling it opens your project up to
- it's goal is not to replace all of these package managers - its to give you and your project an accesible way of leveraging them

---

<!-- .slide: data-auto-animate data-auto-animate-id="readme-prereqs" -->

<pre data-id="readme-prereqs-block"><code class="language-markdown" data-trim data-noescape data-line-numbers="9-10">
## Introduction

Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
Fusce ac turpis quis ligula lacinia aliquet. Mauris ipsum. Nulla metus metus, ullamcorper vel, tincidunt sed

## Prerequisites

- Docker
- Actionlint
- hadolint

## Quick Start
git clone https://github.com/spring-projects/spring-petclinic.git
cd spring-petclinic
./mvnw spring-boot:run

## Deep dive
Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
Fusce ac turpis quis ligula lacinia aliquet. Mauris ipsum. Nulla metus metus, ullamcorper vel, tincidunt sed
</code></pre>

Notes:

---

<!-- .slide: data-auto-animate data-auto-animate-id="readme-prereqs" -->

<pre data-id="readme-prereqs-block"><code class="language-markdown" data-trim data-noescape data-line-numbers="11">
## Introduction

Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
Fusce ac turpis quis ligula lacinia aliquet. Mauris ipsum. Nulla metus metus, ullamcorper vel, tincidunt sed

## Prerequisites

- Docker
- Actionlint
- hadolint
- sqlfluff

## Quick Start
git clone https://github.com/spring-projects/spring-petclinic.git
cd spring-petclinic
./mvnw spring-boot:run

## Deep dive
Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
Fusce ac turpis quis ligula lacinia aliquet. Mauris ipsum. Nulla metus metus, ullamcorper vel, tincidunt sed
</code></pre>

Notes:

------

<!-- .slide: data-auto-animate data-auto-animate-id="readme-prereqs" -->

<pre data-id="readme-prereqs-block"><code class="language-markdown" data-trim data-noescape data-line-numbers="11-12|11|12|9-12" data-fragment-index="0">
## Introduction

Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
Fusce ac turpis quis ligula lacinia aliquet. Mauris ipsum. Nulla metus metus, ullamcorper vel, tincidunt sed

## Prerequisites

- Docker
- Actionlint
- hadolint
- sqlfluff
- markdownlint

## Quick Start
git clone https://github.com/spring-projects/spring-petclinic.git
cd spring-petclinic
./mvnw spring-boot:run

## Deep dive
Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
Fusce ac turpis quis ligula lacinia aliquet. Mauris ipsum. Nulla metus metus, ullamcorper vel, tincidunt sed
</code></pre>

<div class="slide-callout-stack">
  <div class="slide-callout slide-callout--info" data-line-callout="11">
    This linter quietly implies that we need Python
  </div>
  <div class="slide-callout slide-callout--info" data-line-callout="12" hidden>
    This linter quietly implies that we need Nodejs
  </div>
  <div class="slide-callout slide-callout--warning" data-line-callout="9-12" hidden>
    our tooling ecosystem is growing
  </div>
  <div class="slide-callout slide-callout--warning fragment current-visible" data-line-callout="9-12" data-fragment-index="3" hidden>
    Do we now shove this into CI, or ask the devs to install all of it?
  </div>
</div>


Notes:

---

<!-- .slide: data-auto-animate data-auto-animate-id="readme-prereqs" -->

<pre data-id="readme-prereqs-block"><code class="language-markdown" data-trim data-noescape data-line-numbers="9">
## Introduction

Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
Fusce ac turpis quis ligula lacinia aliquet. Mauris ipsum. Nulla metus metus, ullamcorper vel, tincidunt sed

## Prerequisites

- Docker
- mise

## Quick Start
git clone https://github.com/spring-projects/spring-petclinic.git
cd spring-petclinic
./mvnw spring-boot:run

## Deep dive
Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
Fusce ac turpis quis ligula lacinia aliquet. Mauris ipsum. Nulla metus metus, ullamcorper vel, tincidunt sed
</code></pre>

<div class="slide-callout slide-callout--info" data-line-callout="9">
  <code>mise</code> gives you one place to manage a polyglot toolchain
</div>


Notes:
and spoiler for Docker, we can't quite manage it, but we can use mise to give people a heads up
---
<!-- .slide: data-auto-animate data-auto-animate-id="github-actions-ci" -->

<p><img src="images/backend-github.svg" alt="GitHub" style="height: 1.6em;"></p>

<pre data-id="github-actions-workflow"><code class="language-yaml" data-trim data-line-numbers="13">
name: ci

on:
  push:
  pull_request:

jobs:
  build:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
      - uses: jdx/mise-action@v2
      - run: mise run build
</code></pre>

---
<!-- .slide: data-auto-animate data-auto-animate-id="github-actions-ci" -->

<p><img src="images/backend-github.svg" alt="GitHub" style="height: 1.6em;"></p>

<pre data-id="github-actions-workflow"><code class="language-yaml" data-trim data-line-numbers="13-17|19-28|30-31|33" data-fragment-index="0">
name: ci

on:
  push:
  pull_request:

jobs:
  build:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4

      - name: Install mise
        run: |
          curl https://mise.run | sh
          echo "$HOME/.local/share/mise/bin" >> $GITHUB_PATH
          echo "$HOME/.local/share/mise/shims" >> $GITHUB_PATH

      - name: Restore mise cache
        id: mise-cache
        uses: actions/cache@v4
        with:
          path: |
            ~/.local/share/mise
            ~/.cache/mise
          key: mise-${{ runner.os }}-${{ hashFiles('mise.toml', '.tool-versions', '**/mise.toml') }}
          restore-keys: |
            mise-${{ runner.os }}-

      - name: mise install
        run: mise install

      - run: mise run build
</code></pre>

<div class="slide-callout slide-callout--info" data-line-callout="13-17">
  Install mise
</div>

<div class="slide-callout slide-callout--info" data-line-callout="19-28">
  Take advantage of caching
</div>

<div class="slide-callout slide-callout--info" data-line-callout="30-31">
  Install tools defined in mise.toml
</div>

---

![demo](images/mise-in-docker-demo.gif)

Notes:
- and what would that look like in action
