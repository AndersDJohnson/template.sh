# template.sh
Templates files with interpolated variables in Bash.

## Functions

### `template`

Accepts an argument as a file name to be read & used as a template.

Writes the rendered template to standard out.

#### Example

```sh
source template.sh

NAME="Anders"
DATE=date

template tmpl.txt > tmpl-render.txt
```

where `tmpl.txt` is, for example:

```
This is a template file by ${NAME} on ${DATE}.

Newlines are OK too.

You can even do Bash things like ${NAME/A/B} replacements and $(echo "command substitution").
```

resulting in `tmpl-render.txt`:

```
This is a template file by Anders on Fri Jun 19 16:52:18 CDT 2015.

Newlines are OK too.

You can even do Bash things like Bnders replacements and command substitution.
```

### `templateStr`

Like `template`, but accepts a string argument rather than a file name.

#### Example

```
source template.sh

WHAT_IT_IS="awesome"
templateStr "This template is ${WHAT_IT_IS}."
```
