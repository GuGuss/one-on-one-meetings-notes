# 1:1 meetings notes

I've built this tool to track 1:1 mettings notes with my team members.

Maybe it can be helpful to you too!

[![demo](https://asciinema.org/a/7c2vri806d3tltj3rbk42vn8e.png)](https://asciinema.org/a/7c2vri806d3tltj3rbk42vn8e)

## Get Started

Requirements: [NPM](https://www.npmjs.com/).

```
npm install gitbook-cli -g
git clone git@github.com:GuGuss/one-on-one-meetings-notes.git
cd one-on-one-meetings-notes/
```

Edit `SUMMARY.md` to list all your team members.

## Prepare a 1:1 meeting

The day of your 1:1 meeting with Charlie, run the script:

```
./prepare-notes.sh Charlie
```

This will do the following:
* Copy `TEMPLATE.md` and rename with today's date.
* Move the new file to the Charlie directory. Create the directory if it doesn't exist yet.
* Add the related link to `SUMMARY.md`. Create a backup of the file in case something went wrong.

## Review your notes

Thanks to [Gitbook](https://github.com/GitbookIO/gitbook), you can see your notes in your browser by running:

```
cd one-on-one-meetings-notes/
gitbook serve
```
