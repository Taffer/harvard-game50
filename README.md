# harvard-game50

Update the game50 Love2D code for Love2D 11.

Note that the MIT license only applies to the bits I've provided; the original
code is Harvard's, part of their
[CS50G](https://courses.edx.org/courses/course-v1:HarvardX+CS50G+Games/course/)
course, _CS50's Introduction to Game Development_. Their
[GitHub repo](https://github.com/games50) doesn't specify a license.

The projects are, in order:

    url =

* Lecture 1: [Pong](https://github.com/games50/pong.git)
* Lecture 2: [Fifty Bird](https://github.com/games50/fifty-bird.git)
* Lecture 3: [Breakout](https://github.com/games50/breakout.git)
* Lecture 4: [Match-3](https://github.com/games50/match3.git)
* Lecture 5: [Super Mario Bros.](https://github.com/games50/mario.git)
* Lecture 6: [Legend of Zelda](https://github.com/games50/zelda.git)
* Lecture 7: [Angry Birds](https://github.com/games50/angrybirds.git)

The other game50 projects are for Unity 3D.

## Using harvard-game50

I've copied the game repos in here because I need to modify the code; if they
weren't all separate repos I could've just branched.

The common libraries are pulled into this repo as git submodules. To clone
everything at once:

```shell
git clone --recursive https://github.com/Taffer/harvard-game50.git
```

If you've cloned it without `--recursive`, do this to grab all the submodules:

```shell
git submodule update --init --recursive
```

Each project set has a single Sublime Text 3 project file so you can easily
look through the code while following along with the lectures.

The `common` directory has additional submodules used by the game50 projects.

## The Changes

My changes aren't extensive, and the interesting ones have a comment explaining
what I did, tagged with `- Chris H.` so you know not to blame Colton for them.

My changes:

* Use current versions of the dependencies:
  * `class` from the [`hump`](https://github.com/vrld/hump) library
  * [`push`](https://github.com/Ulydev/push)
* Adjust colour ranges from 0 - 255 to 0.0 - 1.0.
