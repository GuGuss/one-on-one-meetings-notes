# 1:1 meetings notes

I've built this tool to track 1:1 mettings notes with my team members.

Maybe it can be helpful to you too!

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
* Move the new file to the Charlie directory.
* Add the related link to `SUMMARY.md` (_and create a backup of the file in case something went wrong_).

## Review your notes

Thanks to [Gitbook](https://github.com/GitbookIO/gitbook), you can see your notes in your browser by running:

```
cd one-on-one-meetings-notes/
gitbook serve
```