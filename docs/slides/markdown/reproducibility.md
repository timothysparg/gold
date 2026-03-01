<!--
## Reproducibility
I want the title to stay at the top of the page
-->

<figure>
  <blockquote>
    "Works on my machine"
  </blockquote>
  <figcaption style="font-size: 0.4em; font-style: italic;">— Every developer ever</figcaption>
</figure> <!-- .element: class="fragment" -->


Notes:
- I should really find easier words to use than a 7 syllable words when I'm on a stage

---

![Empty README](images/empty-readme.png)

Notes:
- I think this might be a silent scream for help in 'corporate'
- Or a challenge to see if you're enough developer to understand the complexity of the codebase
- you know if you see this, that that codebase is going to be an experience ....

---


![minimal README](images/minimal-readme.png)


---

![unixodbc](images/oh-unixodbc-demo.gif)

Notes:
- I was helping a colleague setup a python project and we just went down this rabbithole of tools that needed to be installed, but weren't documented
- My initial remark was to ask that he please update the README
- but I was curious - was there a way in which we could automatially install all of the deps - why can't we do `uv sync` or `poetry install`
- As Java devs this is something that we fortunately don't run into very often, unless you're working with JNA style apps
- at the end of the day we just added `brew install unixodbc` to the README


---

```markdown [13-15|7-10]
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
```

Notes:
- so what do we actually want from a README - probably just the quickstart right?
- I think the petclinic app actually does this pretty well - they're pretty close to that holy grail of git clone & run
- and then if that fails we'll go and look at the prerequisites section... maybe

---

<div style="display:flex; gap:20px; justify-content:center;">
  <img src="images/jenv.png" width="25%">
  <img src="images/sdkman-pattern.svg" width="25%">
  <img src="images/backend-asdf.svg" width="25%">
  <img src="images/mise.svg" width="25%">
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

<div style="display:flex; gap:20px; justify-content:center;">
  <img src="images/jenv.png" width="25%">
  <img src="images/sdkman-pattern.svg" width="25%">
  <img src="images/backend-asdf.svg" width="25%">
  <img src="images/mise.svg" width="25%">
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
    box-shadow: 0 2px 8px rgba(0, 0, 0, 0.18);
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
- ok, so we're building with github actions and because I'm 'me' I keep on making mistakes
- and I only see these mistakes after I've pushed and had to twirl my fingers and wait for the new error

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

Notes:
- ok, so we're building with github actions and because I'm 'me' I keep on making mistakes
- and I only see these mistakes after I've pushed and had to twirl my fingers and wait for the new error
