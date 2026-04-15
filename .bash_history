mkdir test_dir
cd test_dir
touch example.txt
mv example.txt renamed_example.txt
ls
nano grade_checker.py
python3 grade_checker.py
nano student_grades.py
python3 student_grades.py
nano student_grades.py
python3 student_grades.py
nano write_file.py
python3 write_file.py
ls
nano read_file.py
python3 read_file.py
ssh -i linux.pem ec2-user@3.238.126.72
cat /etc/passwd
tail -5 /etc/passwd
grep "root" /etc/passwd
cd ..
zip -r test_dir.zip test_dir
unzip test_dir.zip -d unzipped_dir
ls
cd ~
ls
zip -r test_dir.zip test_dir
unzip test_dir.zip -d unzipped_dir
ls
wget https://www.google.com/robots.txt
ls
touch secure.txt
chmod 444 secure.txt
ls -l secure.txt
export MY_VAR="Hello, Linux!"
echo $MY_VAR
sudo yum update -y
sudo yum install python3 -y
sudo yum install python3-pip -y
mkdir flask-app
cd flask-app
pip3 install flask pymongo
touch app.py data.json
mkdir templates
cd templates
touch form.html success.html
cd ..
nano data.json
nano app.py
nano templates/form.html
nano templates/success.html
python3 app.py
nano app.py
> app.py
nano app.py
python3 app.py
dir
cd flask-app/
python3 app.py
git clone git@github.com:ShivShaktiGanu/flask-practice-tasks.git
cd flask-practice-tasks
sudo yum install git -y
git --version
git clone git@github.com:ShivShaktiGanu/flask-practice-tasks.git
cd flask-practice-tasks
ssh-keygen -t ed25519 -C "varshadubey01693@gmail.com"
cat ~/.ssh/id_ed25519.pub
nano app.py
cd ~/backend
nano app.py
nano requirements.txt
cd ~/backend
ls
cd ~/frontend
nano Dockerfile
cd ~/backend
nano Dockerfile
cd ~
nano docker-compose.yml
docker --version
sudo yum install docker -y
sudo service docker start
docker-compose up --build
sudo curl -L "https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
docker-compose --version
docker-compose up --build
sudo docker-compose up --build
docker-compose up --build
sudo usermod -aG docker ec2-user
exit
mkdir frontend
cd frontend
npm init -y
npm install express body-parser ejs axios
sudo yum update -y
sudo yum install nodejs -y
node -v
npm -v
cd ~/frontend
npm init -y
npm install express body-parser ejs axios
sudo yum install nodejs -y
nano app.js
mkdir views
nano views/form.ejs
ls views
node app.js
ssh -T git@github.com
git clone git@github.com:ShivShaktiGanu/flask-practice-tasks.git
cd flask-practice-tasks
git checkout -b varsha
git push origin varsha
touch app.py data.json
mkdir templates
git add .
git commit -m "Added Flask app with API and JSON file"
git push origin varsha
git checkout main
git pull origin main
git merge varsha
git push origin main
git checkout -b varsha_new
git push origin varsha_new
nano data.json
git add .
git commit -m "Updated JSON with new task"
git push origin varsha_new
git checkout main
nano data.json
git add .
git commit -m "Updated JSON in main branch"
git push origin main
git checkout varsha_new
nano data.json
git add .
git commit -m "Updated JSON in varsha_new branch"
git push origin varsha_new
git checkout main
git merge varsha_new
nano data.json
git add .
git commit -m "Resolved merge conflict"
git push origin main
git checkout main
git checkout -b master_1
git checkout main
git checkout -b master_2
git checkout master_1
nano templates/todo.html
git add .
git commit -m "Added To-Do frontend page"
git push origin master_1
git checkout master_2
pip install pymongo
nano app.py
cd templates
nano form.html
nano success.html
cd ..
git add .
git commit -m "Added HTML templates (form and success)"
git push origin master_2
git checkout main
git merge master_1
git push origin main
git checkout master_1
nano templates/todo.html
git add .
git commit -m "Added Item ID field"
nano templates/todo.html
git add .
git commit -m "Added Item UUID field"
nano templates/todo.html
git add .
git commit -m "Added Item Hash field"
git push origin master_1
git log --oneline
git checkout main
git log --oneline
git reset --soft f36d545
git commit -m "Rollback to Item ID state"
git push origin main --force
git commit -m "Rollback to Item ID state"
git push origin main --force
git checkout master_1
git rebase main
git push origin master_1 --force
nano templates/todo.html
git add templates/todo.html
git rebase --continue
git push origin master_1 --force
git rebase --continue
nano templates/todo.html
git add templates/todo.html
git rebase --continue
