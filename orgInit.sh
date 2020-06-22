sfdx force:org:create -s -f config/project-scratch-def.json
sfdx force:source:push
sfdx force:user:permset:assign -n ebikes
sfdx shane:user:password:set -g User -l User -p salesforce1
sfdx force:data:tree:import --plan ./data/sample-data-plan.json
sfdx force:org:open -p lightning/n/Product_Explorer
