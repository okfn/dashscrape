exec 1>&2

# Ensure repo is up to date
git pull -f 

# Generate scrape files
redo clean
redo -j4 all

# Sync to S3
s3cmd sync $S3CMD_ARGS --acl-public out/*.json out/*.js 's3://assets.okfnlabs.org/activity/'
