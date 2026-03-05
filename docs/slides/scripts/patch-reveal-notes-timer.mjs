import { readFileSync, writeFileSync } from "node:fs";
import { resolve } from "node:path";

const files = [
  {
    path: "reveal.js/plugin/notes/plugin.js",
    from: `\tfunction callRevealApi( methodName, methodArguments, callId ) {\n\n\t\tlet result = deck[methodName].apply( deck, methodArguments );\n\t\tspeakerWindow.postMessage( JSON.stringify( {\n`,
    to: `\tfunction callRevealApi( methodName, methodArguments, callId ) {\n\n\t\tlet result;\n\n\t\t// Speaker view only needs timing-related config fields. Returning the\n\t\t// full config can include circular references from plugin objects.\n\t\tif( methodName === 'getConfig' ) {\n\t\t\tconst config = deck.getConfig();\n\t\t\tresult = {\n\t\t\t\ttotalTime: config.totalTime,\n\t\t\t\tminimumTimePerSlide: config.minimumTimePerSlide,\n\t\t\t\tdefaultTiming: config.defaultTiming\n\t\t\t};\n\t\t}\n\t\telse {\n\t\t\tresult = deck[methodName].apply( deck, methodArguments );\n\t\t}\n\n\t\tspeakerWindow.postMessage( JSON.stringify( {\n`,
  },
  {
    path: "reveal.js/plugin/notes/notes.js",
    from: `function r(i){if(function(t){try{return window.location.origin===t.source.location.origin}catch(t){return!1}}(i))try{`,
    to: `function r(i){if(function(t,e){if(!t||"string"!=typeof t.origin)return!1;if(t.origin===window.location.origin)return!0;if("*"===t.origin||"null"===t.origin)return!!e&&t.source===e;return!1}(i,n))try{`,
  },
  {
    path: "reveal.js/plugin/notes/notes.js",
    from: `function(t,i,s){let r=e[t].apply(e,i);n.postMessage(JSON.stringify({namespace:"reveal-notes",type:"return",result:r,callId:s}),"*")}`,
    to: `function(t,i,s){let r;if("getConfig"===t){const t=e.getConfig();r={totalTime:t.totalTime,minimumTimePerSlide:t.minimumTimePerSlide,defaultTiming:t.defaultTiming}}else r=e[t].apply(e,i);n.postMessage(JSON.stringify({namespace:"reveal-notes",type:"return",result:r,callId:s}),"*")}`,
  },
  {
    path: "reveal.js/plugin/notes/notes.esm.js",
    from: `function(t,i,s){let r=e[t].apply(e,i);n.postMessage(JSON.stringify({namespace:"reveal-notes",type:"return",result:r,callId:s}),"*")}`,
    to: `function(t,i,s){let r;if("getConfig"===t){const t=e.getConfig();r={totalTime:t.totalTime,minimumTimePerSlide:t.minimumTimePerSlide,defaultTiming:t.defaultTiming}}else r=e[t].apply(e,i);n.postMessage(JSON.stringify({namespace:"reveal-notes",type:"return",result:r,callId:s}),"*")}`,
  },
];

for (const { path, from, to } of files) {
  const fullPath = resolve(path);
  const source = readFileSync(fullPath, "utf8");

  if (source.includes(to)) {
    continue;
  }

  if (!source.includes(from)) {
    throw new Error(`Patch pattern not found in ${path}`);
  }

  writeFileSync(fullPath, source.replace(from, to), "utf8");
}

console.log("Applied reveal.js notes timer patch");
