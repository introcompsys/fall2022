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

```{important}
The grade free zone covers classes 1-5, ending on 2022-09-21.
```


# Review


## Review After Class

After each class, you will need to review the day's material. This includes reviewing prismia chat to see any questions you got wrong and reading the notes. Some days there will be specific additional activities and questions to answer.  These should be in your KWL repo.  



```{code-cell} ipython3
:tags: ["hide-input"]
import os
from IPython.display import Markdown, display

rev_file_list = sorted(os.listdir('../_review/'))


```

```{code-cell} ipython3
:tags: ["hide-input"]

for rev_file in rev_file_list:
    date_str = rev_file[:-3]
    date_link = '[' + date_str + '](../notes/' + date_str + ')'
    display(Markdown(date_link))
    display(Markdown('../_review/' + rev_file))
```



## Collaboration

You will be in a "team" that is your built in collaboration group to practice using Git Collaboratively.  
There will be assignments that are to be completed in that repo as well.  These activities will be marked accordingly.  You will take turns and each of you is required to do the initialization step on a recurring basis.  

This is also where you can ask questions and draft definitions to things.


## Peer Review  


If there are minor errors/typos, suggest corrections inline.

In your summary comments answer the following:
- Is the contribution clear and concise? Identify any aspect of the writing that tripped you up as a reader.
- Are the statements in the contribution verifiable (either testable or cited source)? If so, how do you know they are correct?
- Does the contribution offer complete information? That is, does it rely on specific outside knowledge or could another CS student not taking our class understand it?
- Identify one strength in the contribution, and identify one aspect that could be strengthened further.

Choose an action:
- If the suggestions necessary before merging, select **request changes**.  
- If it is good enough to merge, mark it **approved** and open a new issue for the broader suggestions.
- If you are unsure, post as a **comment** and invite other group members to join the discussion.
