<style>
  .reveal .slides .secret-aside {
    font-size: 0.6em;
    color: #9ca3af;
  }

  .reveal .slides .secret-warning {
    margin-top: 0.9em;
    padding: 0.85em 1em;
    border-left: 0.28rem solid #f59e0b;
    background: rgba(245, 158, 11, 0.12);
    color: #3b2f0b;
    border-radius: 0.45rem;
    font-size: 0.72em;
    text-align: left;
  }

  .reveal .slides .secret-info {
    margin-top: 0.9em;
    padding: 0.85em 1em;
    border-left: 0.28rem solid #60a5fa;
    background: rgba(96, 165, 250, 0.14);
    color: #172554;
    border-radius: 0.45rem;
    font-size: 0.72em;
    text-align: left;
  }

  .reveal .slides .secret-callout-stack {
    position: relative;
    margin-top: 0.9em;
    min-height: 3.15em;
  }

  .reveal .slides .secret-callout-stack .secret-info,
  .reveal .slides .secret-callout-stack .secret-warning {
    position: absolute;
    inset: 0;
    margin-top: 0;
    width: 100%;
    box-sizing: border-box;
  }

  .reveal .slides .direnv-sample {
    width: 100%;
    text-align: left;
  }

  .reveal .slides .direnv-sample pre {
    width: 100%;
    margin: 0.6rem 0 0;
    box-shadow: none;
  }

  .reveal .slides .direnv-sample pre code {
    max-height: none;
    font-size: 0.72em;
    line-height: 1.35;
  }

  .reveal .slides .direnv-caption {
    margin-top: 0.75rem;
    font-size: 0.62em;
    color: #cbd5e1;
  }

  .reveal .slides .direnv-risk {
    margin-top: 0.75rem;
    font-size: 0.62em;
    color: #fca5a5;
    text-align: left;
  }
</style>

## Secrets

<!-- .slide: data-auto-animate data-auto-animate-id="secrets-fragmented" -->

- they're a pain <!-- .element: class="fragment" -->
- they're necessary <!-- .element: class="fragment" -->
- fragmented approach to managing them <!-- .element: class="fragment" -->

Notes:
- 

---
<!-- .slide: data-auto-animate data-auto-animate-id="secrets-fragmented" -->

## Secrets

<ul>
  <li data-id="secrets-point-1" class="fragment">they way we provide secrets in dev and production is never the same</li>
  <li data-id="secrets-point-2" class="fragment">
    devs often do it differently
    <ul>
      <li data-id="secrets-point-3" class="fragment"><code>IDE</code> run configuration</li>
      <li data-id="secrets-point-4" class="fragment">expose a variable</li>
      <li data-id="secrets-point-5" class="fragment">write it to a file</li>
    </ul>
  </li>
</ul>


Notes:
- how many times have you deployed service, and then started scratching your head trying to understand
 why the secret that your provider was supposed to inject wasn't there


---
<!-- .slide: data-auto-animate data-auto-animate-id="secrets-fragmented" -->

## Secrets

<ul>
  <li data-id="secrets-point-1">they way we provide secrets in dev and production is never the same</li>
  <li data-id="secrets-point-2">
    devs often do it differently
    <ul>
      <li data-id="secrets-point-3"><code>IDE</code> run configuration</li>
      <li data-id="secrets-point-4">expose a variable</li>
      <li data-id="secrets-point-5">write it to a file</li>
    </ul>
  </li>
</ul>

<div class="secret-warning" data-id="secrets-warning">
  If you're writing secrets to files you better know your way around <code>git filter-branch</code>.
</div>

---

### `direnv`

![direnv](images/direnv-quickstart.gif)


Notes:
- values are only exposed within your scope
- unknown envrc files are not trusted
- envrc files are bash scripts

---
<!-- .slide: data-auto-animate data-auto-animate-id="direnv-secrets" -->

### `direnv`

<p class="direnv-caption" data-id="direnv-approach">with <code>plaintext</code></p>

<pre data-id="direnv-envrc"><code class="language-bash" data-trim>
# .envrc

export DATABASE_URL="postgres://app:supersecret@localhost:5432/app"
export STRIPE_API_KEY="sk_test_not_great"
export GITHUB_TOKEN="ghp_this_should_not_live_here"
</code></pre>

<div class="secret-warning fragment" data-id="secrets-warning">
  you're now a power user of <code>git filter-branch</code>
</div>

Notes:
- this is the naive interpretation
- it is better than random shell state, but it is still plain text secret material in your repo-adjacent workflow

---
<!-- .slide: data-auto-animate data-auto-animate-id="direnv-secrets" -->

### `direnv`

<p class="direnv-caption" data-id="direnv-approach">with <code>sops</code></p>

<pre data-id="direnv-envrc"><code class="language-bash" data-trim>
# .envrc

# decrypt an encrypted dotenv-style file
# and export the values into the current shell
eval "$(
  sops decrypt --output-type dotenv secrets/dev.enc.env |
  sed 's/^/export /'
)"
</code></pre>

<div class="secret-callout-stack">
  <div class="secret-info fragment fade-out" data-fragment-index="0">
    Better than plaintext: the checked-in artifact is encrypted, and <code>direnv</code> just handles the shell export step.
  </div>
  <div class="secret-info fragment fade-in-then-out" data-fragment-index="1">
    Every developer still needs a SOPS decryption key locally.
  </div>
  <div class="secret-warning fragment fade-in-then-out" data-fragment-index="2">
    you've replaced secret distribution with key distribution and bootstrap.
  </div>
</div>

Notes:
- still file based, but the checked-in artifact is encrypted rather than plain text
- good fit when the team already has sops and key distribution solved
- sops removes plaintext secrets from the repo, but you still need a secure way to provision and rotate age keys for developers

---
<!-- .slide: data-auto-animate data-auto-animate-id="direnv-secrets" -->

### `direnv`

<p class="direnv-caption" data-id="direnv-approach">with <code>1Password</code></p>

<pre data-id="direnv-envrc"><code class="language-bash" data-trim>
# .envrc

export DATABASE_URL="$(op read 'op://app-dev/postgres/url')"
export STRIPE_API_KEY="$(op read 'op://app-dev/stripe/api key')"
export GITHUB_TOKEN="$(op read 'op://app-dev/github/token')"

</code></pre>

<div class="secret-callout-stack">
  <div class="secret-info fragment fade-out" data-fragment-index="0">
    Keep the contract in <code>.envrc</code>, but fetch the values from 1Password CLI when the directory is entered.
  </div>
  <div class="secret-warning fragment fade-in-then-out" data-fragment-index="0">
    calls to password managers are <em>slow</em>
  </div>
</div>

Notes:
- this is the most straightforward example if the team already lives in 1Password
- direnv stays as the entry point, but secret material is injected from a real secret store

---

None of this really gets us closer to production secret handling on our laptops but it certainly lays the groundwork

---
<!-- .slide: data-auto-animate data-auto-animate-id="fnox-prod" -->

### `fnox`

<p class="direnv-caption" data-id="fnox-provider">with <code>AWS Secrets Manager</code></p>

<pre data-id="fnox-config"><code class="language-toml" data-trim>
[providers]
aws = { type = "aws-sm", region = "us-east-1", prefix = "myapp/" }

[secrets]
DATABASE_URL = { provider = "aws", value = "database-url" }
STRIPE_API_KEY = { provider = "aws", value = "stripe-api-key" }
GITHUB_TOKEN = { provider = "aws", value = "github-token" }
</code></pre>

Notes:
- based on fnox AWS Secrets Manager provider docs
- prefix means these resolve to myapp/database-url, myapp/stripe-api-key, myapp/github-token

---
<!-- .slide: data-auto-animate data-auto-animate-id="fnox-prod" -->

### `fnox`

<p class="direnv-caption" data-id="fnox-provider">with <code>HashiCorp Vault</code></p>

<pre data-id="fnox-config"><code class="language-toml" data-trim>
[providers]
vault = { type = "vault", path = "secret/myapp" }

[secrets]
DATABASE_URL = { provider = "vault", value = "database/url" }
STRIPE_API_KEY = { provider = "vault", value = "stripe/api-key" }
GITHUB_TOKEN = { provider = "vault", value = "github/token" }
</code></pre>

Notes:
- based on fnox Vault provider docs
- vault provider path is the base path, and each value is appended under that path

---
<!-- .slide: data-auto-animate data-auto-animate-id="fnox-prod" -->

### `fnox`

<p class="direnv-caption" data-id="fnox-provider">with <code>HashiCorp Vault profiles</code></p>

<pre data-id="fnox-config"><code class="language-toml" data-trim>
[providers]
vault = { type = "vault", path = "secret/dev/myapp" }

[secrets]
DATABASE_URL = { provider = "vault", value = "database/url" }
STRIPE_API_KEY = { provider = "vault", value = "stripe/api-key" }
GITHUB_TOKEN = { provider = "vault", value = "github/token" }

[profiles.production.providers]
vault = { type = "vault", path = "secret/prod/myapp" }
</code></pre>

<div class="secret-callout-stack">
  <div class="secret-info fragment fade-out" data-fragment-index="0">
    Same secret names, same Vault provider name, different path by profile.
  </div>
  <div class="secret-warning fragment fade-in-then-out" data-fragment-index="0">
    calls to password managers are <em>slow</em>
  </div>
</div>


Notes:
- profiles let you keep one config file while switching providers or values per environment

---

### `mise` + `fnox`

<pre><code
class="language-toml"
data-trim
data-line-numbers="1-2|4-6"
>[env]
_.fnox-env = { tools = true }

[settings]
env_cache = true
env_cache_ttl = "4h"

[plugins]
fnox-env = "https://github.com/jdx/mise-env-fnox"
</code></pre>

<div class="secret-callout-stack">
  <div class="secret-info" data-line-callout="1-2">
    Load secrets into the <code>mise</code> environment.
  </div>
  <div class="secret-info" data-line-callout="4-6" hidden>
    Cache remote lookups in an encrypted on-disk environment cache.
  </div>
</div>


Notes:
- this is where the tooling starts to feel cohesive
- remote secret stores are great for control, but without caching they can feel too slow for normal dev workflows
