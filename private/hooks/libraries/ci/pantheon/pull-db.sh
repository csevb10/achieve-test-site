#!/usr/bin/env bash

# Authenticate to Terminus and pull our DB from Pantheon.
terminus auth login --machine-token=$MACHINETOKEN
echo "terminus drush 'sql-dump' --site=$PAASSITE --env=$PAASENV"
`terminus drush "sql-dump" --site=$PAASSITE --env=$PAASENV` > db.sql
