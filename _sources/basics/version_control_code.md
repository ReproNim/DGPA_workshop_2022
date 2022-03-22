# Version control - intro

Each and every project depends on a large amount of files, no matter if `documentation`, `notes` or `analyses scripts`. All of them will change more or less prominently during the project and your research workflows: `updates`, `deletions`, etc. . If not taken care of, all these changes to all these files can result in tremendous problems concerning `data management` and `reproducibility`. Just imagine you're trying out a few new things in your `analysis scripts` and after trying to rerun the things you did some days ago nothing works anymore... At what point did you change what aspects, when did it break, what happened? What keeping track of changes, there's no way to recover this information.

<center>
<img src="https://pbs.twimg.com/media/EiG-dwJVkAA-J0L.jpg" alt="data standardization" style="height: 300px;">
</center>

What most folks is to have multiple versions of the same files simultaneously, using file names to indicate or refer to a certain status. However, this is very cumbersome and also prone to errors. A fantastic alternative is to use [version control]() 


## Content 💡👩🏽‍🏫  

In the following you'll find the `objectives` and `materials` for each of the topics we'll discuss during this session.

#### Objectives 📍
- Learn about `Version Control Systems`
- Learn about `Git`
- Get first experience working with `Git`:
    - creating a new repository
    - adding and modifying files
    - working with branches
- Learn about remotes and `GitHub`

#### Materials 📓

You can find the `slides` [here](https://www.dropbox.com/s/xgey7kau40l397v/EuropeReproNim-Git.pdf?dl=0) or [download them directly.](https://www.dropbox.com/s/xgey7kau40l397v/EuropeReproNim-Git.pdf?dl=1)

### Questions you should be able to answer based on this lecture 🖥️✍🏽📖

:::{admonition} What kind of files should you track with version control systems?
:class: tip, dropdown
Pretty much everything, including text files, scripts and data, but for bid files you should use git-annex or datalad.
:::

:::{admonition} Do you need internet to work with your Git repository?
:class: tip, dropdown
No! Git is a distributed system without the central server. You can have everything on your laptop.
:::


:::{admonition} What are the three stages of files under Git?
:class: tip, dropdown
Modified, Staged, and Committed (or Unmodified)
:::



### optional reading/further materials

- [Software Carpentry: Version Control with Git](https://swcarpentry.github.io/git-novice/)
- [Pro Git Book](https://git-scm.com/book/en/v2)
- [The Git Parable](https://tom.preston-werner.com/2009/05/19/the-git-parable.html)