---
jupytext:
  text_representation:
    extension: .md
    format_name: myst
    format_version: 0.13
    jupytext_version: 1.10.3
kernelspec:
  display_name: Python 3
  language: python
  name: python3
---

# KWL Chart

(kwlworkflows)=
## Working with your KWL Repo

```{important}
The `main` branch should only contain material that has been reviewed and approved by the instructors.
```

````{margin}
```{tip}
You could apply branch protections on your feedback branch if you like
```
````


1. Work on a specific branch for each activity you work on
1. when it is ready for review, create a PR from the item-specifc branch to `main`.
1. when it is approved, merge into main.

<!--
```{tip}
After your KWL repo is a jupyterbook, you may want to move your chart into a chart.md from the README. You could then put content from this section in the README to have an in-place reminder.
``` -->

(kwlmin)=
## Minimum Rows




```Markdown
# KWL Chart


<!-- replace the  _ in the table or add new rows as needed -->

| Topic | Know | Want to Know | Learned |
| ------| ------- | ------ | ------- |
| Git | _ | _ | _ |
| GitHub | _ | _ | _ |
| Terminal | _ | _ | _ |
| IDE | _ | _ | _ |
| text editors | _ | _ | _ |
|file system | _ | _ |_ |
|bash | _ | _ | _ |
|abstraction | _ | _ | _ |
|programming languages | _ | _ | _ |
|git workflows | _ | _ | _ |
| git branches | _ | _ | _ |
| bash redirects | _ | _ | _ |
|number systems | _ | _ | _ |
| merge conflicts | _ | _ | _ |
| documentation | _ | _ | _ |
| templating | _ | _ | _ |
|bash scripting | _ | _ | _ |
| developer tools | _ | _ | _ |
| networking | _ | _ | _ |
|ssh | _ | _ | _ |
| ssh keys | _ | _ | _ |
|compiling | _ | _ | _ |
| linking   | _ | _ | _ |
| building | _ | _ | _ |
| machine representation  | _ | _ | _ |
| integers   | _ | _ | _ |
| floating point  | _ | _ | _ |
|logic gates | _ | _ | _ |
| ALU | _ | _ | _ |
| binary operations | _ | _ | _ |
| memory | _ | _ | _ |
| cache | _ | _ | _ |
| register | _ | _ | _ |
| clock | _ | _ | _ |
| Concurrency | _ | _ | _ |
```



## Required Files


```{code-cell} ipython3
:tags: ["hide-input"]

import pandas as pd

with open('../_data/review_list.txt','r') as f:
    rev = f.readlines()

rev_df = pd.DataFrame([[date_file[0][:10],date_file[1]] for date_file in [a.split() for a in rev]],
                      columns = ['date','file'])
rev_df['type'] = 'review'

with open('../_data/prepare_list.txt','r') as f:
    pre = f.readlines()

prep_df = pd.DataFrame([[date_file[0][:10],date_file[1]] for date_file in [a.split() for a in pre]],
                      columns = ['date','file'])
prep_df['type'] = 'prepare'

with open('../_data/practice_list.txt','r') as f:
    pra = f.readlines()

prac_df = pd.DataFrame([[date_file[0][:10],date_file[1]] for date_file in [a.split() for a in pra]],
                      columns = ['date','file'])
prac_df['type'] = 'practice'

check_df = pd.concat([rev_df,prep_df,prac_df])
check_df.sort_values(by='date')
```
