# FECKBACK
A specifically-tailored backup script collection. Works well for my situation. It may also work well for yours!

*Licence* 3BSD. Not GPL because I don't want contributions.

# Requirements
* Bash
* ssh with keys installed
* tar
* rsync (optional)

## Configuration
Run setup.sh.

Edit `~/.config/feckback.conf` to suit your environment.

Edit `~/.config/feckback.exclude` specify any directories for exclusion. 

**Note:** For feckback.exclude, all directories are relative to the root of the backupDir.
This isn't pattern matched, so you'll have to specify each subdirectory for exclusion manually.

### Configuration - multiple jobs
It's possible you may want to have more than one backup job on your system.

In that case, run `./setup.sh <newjob>` to install a new job with that name..

Then, edit `~/.config/feckback.d/<newjob>.conf` and `<newjob>.exclude` for your job.

Call `./feckback.sh <jobname>` and the config and exclude files for that job will be read from `feckback.d`. Then the job will begin.

## Usage
Run `./feckback.sh`. If your hosts are configured correctly, this should work.

## Auxilary Scripts
`syncnas.sh` Run this on any host to sync the contents of the network destination drive with portable storage. It's always wise to backup your backups.

## Coming soon
`backupwin.cmd` - Windows Files Matter.
