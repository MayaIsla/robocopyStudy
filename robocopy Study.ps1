$someEmptyDir = "C:\Dir\that\is\empty" #empty directory
$deleteFile = "C:\files\you\want\deleted" #directory that files will be deleted

$moveFile = "C:\files\you\want\moved"
$copiedFiles = "C:\directory\you\want\copied\files"


robocopy $someEmptyDir $deleteFile /mir /mt:32 #alt. remove-item

#purge and mir have similiar properties... mt WORKS. but be careful is prone to breaking. 
#you'll have to initialize an empty dir for this to work. Since it is 'MIRroring the empty dir 

#will do the same thing... Holy crap is mt fast..

robocopy $someEmptyDir $deleteFile /purge /mt:32 #alt. remove-item

#moving with robocopy is easy..
#crap..seems to move files and delete original directory..

robocopy $moveFile $deleteFile /move /mt:32 #don't use this.. unless you want to delete the original directory with it.

#let's try this..
#wow.. so stupid..this will move files and keep the original directory.

robocopy $moveFile $deleteFile /mov /mt:32 #alt. move-item

#Let's try a normal copy..
#awesome...

robocopy $moveFile $copiedFiles /mt:32 #alt. xcopy/copy-item



