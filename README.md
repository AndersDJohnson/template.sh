# template.sh
Templates files with interpolated variables in Bash.


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
