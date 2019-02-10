git add .
echo 'Enter the commit message:'
read CommitMessage
git commit -m "$CommitMessage"
git push origin master
read
  
