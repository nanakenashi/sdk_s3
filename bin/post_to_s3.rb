require 'aws-sdk'

BUCKET_NAME = 'nanakenashi-sdk-test'

Aws.config[:region] = 'ap-southeast-1'
s3 = Aws::S3::Client.new

file = File.open("hoge.json")
s3.put_object(
  bucket: BUCKET_NAME,
  body: file,
  key: 'foo/bar/hoge.json',
)
