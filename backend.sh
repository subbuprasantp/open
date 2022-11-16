#!/bin/bash
cat > backend_generated.tf <<-EOF
    backend "s3" {
      bucket = "$1"
      key    = "$2"
      region = "$3"
      dynamodb_table = "$4"
      encrypt = true  
    }
EOF
sed -i '$d' $5
cat backend_generated.tf >> $5
echo "}" >> $5
