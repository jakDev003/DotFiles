# Copy configs to dotfiles directory
Robocopy "C:\Users\jkagiwada\AppData\Local\nvim" "C:\Users\jkagiwada\Documents\Git-Repos\Dotfiles\nvim" /MIR /FFT /Z /XA:H /W:5 /XD "C:\Users\jkagiwada\AppData\Local\nvim\undo"
# Go to dir
$path= [Environment]::GetFolderPath("MyDocuments") + "\Git-Repos\Dotfiles" 
cd $path
# Pull latest changes from git and add new ones
git pull
git add .
$message= Read-Host -Prompt "Enter commit message"
git commit -m "$message"
git push

pause
