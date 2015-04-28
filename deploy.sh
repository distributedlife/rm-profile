s3cmd sync --acl-public --guess-mime-type --recursive --rexclude '^\.' --rexclude '\/\.' . s3://rm-profile/

s3cmd modify --acl-public --guess-mime-type --add-header="Cache-Control: max-age=86400" --add-header="Content-Encoding: gzip" s3://rm-profile/*.svg

s3cmd modify --acl-public --guess-mime-type --add-header="Cache-Control: max-age=86400" s3://rm-profile/*.png

s3cmd modify --acl-public --guess-mime-type --add-header="Cache-Control: max-age=86400" s3://rm-profile/*.jpg

s3cmd modify --acl-public --guess-mime-type --add-header="Content-Type: utf-8" s3://rm-profile/index.html