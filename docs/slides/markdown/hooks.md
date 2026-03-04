<style>
  .reveal .slides section .ai-agent-gradient {
    font-weight: 500;
    font-size: 0.9em;
    background: linear-gradient(
      to right,
      #67d8df 0%,
      #7eaee6 25%,
      #c49bd6 50%,
      #d38a97 75%,
      #67d8df 100%
    );
    background-size: 200% auto;
    -webkit-background-clip: text;
    -webkit-text-fill-color: transparent;
    display: inline-block;
    animation: gradientFlow 8s linear infinite;
  }

  @keyframes gradientFlow {
    0% {
      background-position: 0% center;
    }
    100% {
      background-position: 200% center;
    }
  }

  .reveal .slides section .hooks-logo-row {
    display: flex;
    align-items: center;
    justify-content: space-evenly;
    width: 100%;
    padding: 0 1.5rem;
    margin-top: 1.5rem;
  }

  .reveal .slides section .hooks-card {
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
    gap: 0.55rem;
    width: 9rem;
    min-height: 8rem;
    padding: 0.9rem 1rem 0.8rem;
    border-radius: 0.9rem;
    background: rgba(255, 255, 255, 0.08);
    border: 0.0625rem solid rgba(255, 255, 255, 0.16);
    box-shadow: 0 0.625rem 1.5rem rgba(0, 0, 0, 0.12);
    box-sizing: border-box;
  }

  .reveal .slides section .hooks-card-media {
    height: 3.4rem;
    width: 100%;
    display: flex;
    align-items: center;
    justify-content: center;
  }

  .reveal .slides section .hooks-card-label {
    font-size: 0.46em;
    font-weight: 600;
    line-height: 1.1;
    letter-spacing: 0.02em;
    white-space: nowrap;
  }

  .reveal .slides section .hooks-logo-row img {
    max-width: 100%;
    max-height: 100%;
    width: auto;
    height: auto;
    margin: 0;
    object-fit: contain;
    background: transparent;
    border: 0;
    box-shadow: none;
  }

  .reveal .slides section .hooks-logo-row .hooks-dog {
    font-size: 2.2rem;
    line-height: 1;
  }

  .reveal .slides section.hooks-code-slide pre {
    width: 95%;
  }

  .reveal .slides section.hooks-code-slide pre code {
    max-height: none;
  }

  .reveal .slides section.hooks-code-slide .slide-callout {
    margin: 0.8rem auto 0;
    width: 95%;
  }
</style>

<h2 data-id="hooks-title">Git hooks</h2>
<!-- .slide: data-auto-animate data-auto-animate-id="git-hooks-ai" -->

<ul>
  <li data-id="hooks-line-1" class="fragment">nobody wants to argue about tabs or spaces</li>
  <li data-id="hooks-line-2" class="fragment">if our conventions aren't codified they may as well not exist</li>
  <li data-id="hooks-line-3" class="fragment">don't wait 10 minutes for a CI server to find a syntax error</li>
</ul>

Notes:
- or at least just argue about it once and then be done with it
- ah so you've made an agreement and put it in confluence? You know what that is? forgotten

---
<h2 data-id="hooks-title">Git hooks</h2>
<!-- .slide: data-auto-animate data-auto-animate-id="git-hooks-ai" -->

<ul>
  <li data-id="hooks-line-1">nobody wants to argue about tabs or spaces with an <span class="ai-agent-gradient">AI agent</span></li>
  <li data-id="hooks-line-2">if our conventions aren't codified an <span class="ai-agent-gradient">AI agent</span> <em>will</em> break them</li>
  <li data-id="hooks-line-3">don't wait 10 minutes for a CI server to find a syntax error from your <span class="ai-agent-gradient">AI agent</span></li>
</ul>

<div class="hooks-logo-row fragment">
  <div class="hooks-card">
    <div class="fragment grow">
        <div class="hooks-card-media"><span class="hooks-dog">🐶</span></div>
        <div class="hooks-card-label">Husky</div>
     </div>   
  </div>
  <div class="hooks-card">
    <div class="fragment grow">
        <div class="hooks-card-media"><img src="images/hooks-precommit.svg" alt="pre-commit"></div>
        <div class="hooks-card-label">pre-commit</div>
     </div>   
  </div>
  <div class="hooks-card">
    <div class="fragment grow">
        <div class="hooks-card-media"><img src="images/hooks-lefthook.svg" alt="lefthook"></div>
        <div class="hooks-card-label">Lefthook</div>
     </div>   
  </div>  
  <div class="hooks-card">
    <div class="fragment grow">
        <div class="hooks-card-media"><img src="images/hooks-hk.png" alt="hk"></div>
        <div class="hooks-card-label">hk</div>
     </div>   
  </div>  
</div>

Notes:
- there are some great options out there just pick that fits your case best
- If you're in the Node ecosystem Husky is a good bet, otherwise it feels odd to need node just for your hook manager
- precommit - great tool if you're in the python ecosystem, if you're not then it feels a bit odd
- lefthook - I just want to use it for it's name. Single binary, no node, or python
- hk - new kid on the block, much the same as lefthook - single binary, but this ones written in rust not go
- but for me it's killer feature is that it is part of the mise ecosystem , and even though it's still a young project, that integration is only going to grow

---
<!-- .slide: class="hooks-code-slide" data-auto-animate data-auto-animate-id="hk-pre-hook" data-auto-animate-unmatched="false" -->

<pre data-id="hk-config"><code class="language-pkl" data-trim data-line-numbers="1-20|1-2|4-19|5-10|11-19">
local linters = new Mapping&lt;String, Step&gt; {
}

hooks {
    // any git hook
    ["pre-commit"] {
        fix = true
        stash = "git"
        steps = linters
    }
    // `$> hk fix`
    ["fix"] {
        fix = true
        steps = linters
    }
    // `$> hk check`
    ["check"] {
        steps = linters
    }
}
</code></pre>

<div class="slide-callout slide-callout--info" data-line-callout="1-20">
  The whole file is just two parts: define reusable steps, then wire them into named hooks.
</div>
<div class="slide-callout slide-callout--info" data-line-callout="1-2" hidden>
  Start by defining a mapping of linter steps that can be reused across hooks.
</div>
<div class="slide-callout slide-callout--info" data-line-callout="4-19" hidden>
  The <code>hooks</code> block maps reusable steps onto both git hooks and direct <code>hk</code> commands.
</div>
<div class="slide-callout slide-callout--info" data-line-callout="5-10" hidden>
  Here <code>pre-commit</code> is configured to run those steps, with fixes enabled and git stash handling.
</div>
<div class="slide-callout slide-callout--info" data-line-callout="11-19" hidden>
  These named commands let you run the same checks directly with <code>hk fix</code> and <code>hk check</code>.
</div>

Notes:
- this is the anatomy of hk config file, it's written in the Apple pkl config language
- you can register any of the git hooks here - pre-commit is just the most common
- fix and check will call hk check and fix respectively

---
<!-- .slide: class="hooks-code-slide" data-auto-animate data-auto-animate-id="hk-pre-hook" data-auto-animate-unmatched="false" -->

<pre data-id="hk-config"><code class="language-pkl" data-trim data-line-numbers="6">
local linters = new Mapping&lt;String, Step&gt; {
}

hooks {
    // any git hook
    ["pre-push"] {
        fix = true
        stash = "git"
        steps = linters
    }
    // `$> hk fix`
    ["fix"] {
        fix = true
        steps = linters
    }
    // `$> hk check`
    ["check"] {
        steps = linters
    }
}
</code></pre>

<div class="slide-callout slide-callout--info" data-line-callout="6">
  If <code>pre-commit</code> feels too intrusive, the same checks can be moved to <code>pre-push</code> so local commits stay fast.
</div>

Notes:
- I know some people get frustrated by the pre-commit, especially if you've got WIP
- just change it to a pre-push hook then , you get to commit your work, and people upstream don't have to deal with your WIP


---
<!-- .slide: class="hooks-code-slide" -->


<pre data-id="hk-config"><code class="language-pkl" data-trim data-line-numbers="2|3-4|5-7|8-13">
local linters = new Mapping&lt;String, Step&gt; {
    ["check-conflicts"] = Builtins.check_merge_conflict
    ["sql_fluff"] = Builtins.sql_fluff
    ["hadolint"] = Builtins.hadolint
    ["yaml"] = (Builtins.yamlfmt) {
        exclude = List("**/*.lock.yml")
    }
    ["google_java_format"] {
        glob = List("**/*.java")
        exclude = List("**/target/**")
        check = "google-java-format --dry-run --set-exit-if-changed {{files}}"
        fix = "google-java-format --replace {{files}}"
    }
}

hooks {
    // any git hook
    ["pre-push"] {
        fix = true
        stash = "git"
        steps = linters
    }
    // `$> hk fix`
    ["fix"] {
        fix = true
        steps = linters
    }
    // `$> hk check`
    ["check"] {
        steps = linters
    }
}
</code></pre>

<div class="slide-callout slide-callout--info" data-line-callout="2">
  <code>hk</code> ships with useful built-ins, like merge-conflict detection, so you do not have to define everything from scratch.
</div>
<div class="slide-callout slide-callout--info" data-line-callout="3-4" hidden>
  Standard tools like <code>sqlfluff</code> and <code>hadolint</code> can be pulled in directly as reusable steps.
</div>
<div class="slide-callout slide-callout--info" data-line-callout="5-7" hidden>
  Built-ins are still configurable, here <code>yamlfmt</code> is tweaked to ignore lockfiles.
</div>
<div class="slide-callout slide-callout--info" data-line-callout="8-13" hidden>
  And when a builtin is not enough, you can define a custom step.
</div>

Notes:
- hk has some nice checks built into hk itself, 
- it's also got a pretty good standard set of configs for linters available
- modifying a builtin linter is pretty straightforward
- and adding a new one is also pretty straightforward

---
<!-- .slide: class="hooks-code-slide" -->

### mise.toml
<pre data-id="mise-config"><code class="language-toml" data-trim data-line-numbers="1-7|2|9-15">
[tools]
hk = { version = "latest", postinstall = "hk install --mise" }
pkl = "latest"
"pipx:sqlfluff" = "latest"
uv = "latest"
yamlfmt = "latest"
"github:google/google-java-format" = "latest"

[tasks.check]
description = "hk validation checks"
run = "hk check"

[tasks.fix]
description = "Apply hk automatic fixes"
run = "hk fix"

[env]
HK_MISE = true
</code></pre>

<div class="slide-callout slide-callout--info" data-line-callout="1-7">
  <code>mise</code> installs the entire toolchain for this workflow, not just <code>hk</code> itself.
</div>
<div class="slide-callout slide-callout--info" data-line-callout="2" hidden>
  The <code>postinstall</code> hook lets <code>hk</code> register its git hooks as part of tool setup.
</div>
<div class="slide-callout slide-callout--info" data-line-callout="9-15" hidden>
  These tasks can make <code>mise</code> the central place to register and discover project commands, not just hook-related ones.
</div>

Notes:
- this is where we start seeing the benefit of the ecosystem
- with a mise install, all of our tools are installed for us
- the tasks aren't strictly necessary, but it makes sense to find a central place to register all your commands
- this is the weakest part of the integration for me, I wish there was a better way to make sure that local devs actually added the git hooks
