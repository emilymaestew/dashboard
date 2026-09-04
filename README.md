# Dashboard

My semester dashboard for Fall 2026. Classes, work, personal, and the AI in Finance club,
with everything due grouped by week.

Live at: (filled in once GitHub Pages is switched on)

## How to change it

Everything is in `index.html`. There is no build step and nothing to install.

- To change what the page looks like, edit the CSS at the top of the file.
- To change the task list, find `var ITEMS = [` and edit the entries. Each one looks like:

      { id: "f4-hw1", c: "fin400", t: "Homework 1", due: "2026-09-07 23:55" }

  `id` has to stay unique, `c` is the class, `t` is the title, `due` is the date and time.
  Add `big: true` for something major, or `prep: true` for reading and practice work.

## How to publish a change

    git add .
    git commit -m "what I changed"
    git push

GitHub Pages picks it up in about a minute.

## Where things save

Checkmarks, edits and anything added save in the browser you are using, so the laptop and
the phone each keep their own. Syncing the two needs a database, which is a later project.

## Notes

Class notes are Google Docs, linked from the Notes row on the page.
