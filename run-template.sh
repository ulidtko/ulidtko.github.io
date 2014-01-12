#!/bin/bash

set -e

cat << EOF
<!doctype html>
<html>
<head>
<meta charset="UTF-8" />
<title>Logo requirements</title>
<style>
html {
    background-color: #444;
}

body {
    width: 210mm;
    margin: 2em auto;
    padding: 2em 4em;
    background-color: #FFF;

    font-family: serif;
    font-size: 12pt;
    text-align: justify;
}

body img {
    max-width: 190mm;
}

h1, h2, h3 {
    font-family: Helvetica, Arial;
}

h1 {
    text-align: center;
}

h2 {
    border-width: 1px 0 0 0;
    border-style: solid;
    border-color: grey;
    padding-top: 0.3em;
}

h3 {
    margin: 0;
    font-style: italic;
}

p {
    margin: 0.3em 0 1.2em 0;
}

figure figcaption {
    font-size: 11pt;
    font-style: italic;
}
</style>
</head>
<body>
$(multimarkdown "$1")
</body>
</html>
EOF

exit $?
