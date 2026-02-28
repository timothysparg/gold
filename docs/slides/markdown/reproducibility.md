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
  <img src="images/asdf.png" width="25%">
  <img src="images/mise.svg" width="25%">
</div>



Notes:
- but for the most part we're actually ok - we don't need to install java or our build tools
---

```markdown[8]
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
```

---

```markdown[9|10]
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
```

Notes:
- ok, so we're building with github actions and because I'm 'me' I keep on making mistakes
- and I only see these mistakes after I've pushed and had to twirl my fingers and wait for the new error
- friends don't let friends build dockerfiles, but if you do ... please lint them

---
<!-- .slide: data-auto-animate -->

<div style="display:flex; gap:20px; justify-content:center;">
  <img src="images/jenv.png" width="25%">
  <img src="images/sdkman-pattern.svg" width="25%">
  <img src="images/asdf.png" width="25%">
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
- environment variables for different project directories <!-- .element: class="fragment fade-in-then-semi-out" -->
- task runner <!-- .element: class="fragment fade-in-then-semi-out" -->
- performance <!-- .element: class="fragment fade-in-then-semi-out" -->
- lockfiles <!-- .element: class="fragment fade-in-then-semi-out" -->
- integration with hk,pitchfork, fnox <!-- .element: class="fragment " -->

Notes:
- asdf backend in mise is deprecated
- all plugins are managed in mise-plugins repo which is tightly controlled
- instead of calling shims on every command mise updates the path, and then changes it on directory change
