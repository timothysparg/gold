<style>
  .reveal .slides section [data-clone-run-badge] {
    display: inline-block;
    padding: 0.14em 0.5em;
    border-radius: 0.45em;
    background: rgba(251, 191, 36, 0.28);
    border: 0.07rem solid rgba(245, 158, 11, 0.75);
    color: #111827;
    font-family: var(--r-code-font);
    font-variant-ligatures: contextual;
    font-feature-settings: "calt" 1, "liga" 1;
    font-weight: 700;
    font-size: 0.92em;
    letter-spacing: 0.01em;
    box-shadow: 0 0.12rem 0.35rem rgba(0, 0, 0, 0.12);
  }
</style>

## Why are we here?

Developers lives are getting more complicated by the day, and we all feel that increase in complexity.

<ul>
  <li class="fragment">how can we manage that complexity?</li>
  <li class="fragment">can we make it easier to onboard new devs?</li>
  <li class="fragment">how close can we get to production on our laptops?</li>
  <li class="fragment">how close can we get to <span data-clone-run-badge>$ git clone --> run</span></li>
</ul>

<!-- ```bash
git clone
./mvnw spring-boot:run

``` -->

Notes:
- the breadth of knowledge that you have to have right now is breathtaking
- Just to give you an idea: I was happy that I learnt Java just before generics were introduced - It's been a long time since I was accused of being an intelligent man
- if you're the progenitor you might not even have thought about how dev #2 should setup their project
- if you've got it up and running, you've now been indoctrinated
- nevermind setting up all of the prerequisites - one of the places where we really fall short is how apps are run and credentials and settigns are passed to your application
- How nice would it be to just be able to git clone and run your project - how close can we get to that?

---

Is this a silver bullet? <br/> <!-- .element: class="fragment semi-fade-out shrink" -->

<figure>
  <blockquote>
    It's an opinionated approach to improved developer experience over time
    </blockquote>
</figure>
<!-- .element: class="fragment" -->

Notes:
- absolutely not. We spend time thinking about architecture - should we do hexagonal ,Clean, layered, Onion or Sliced Onion ?
- but how much time do we spend on developer experience?
