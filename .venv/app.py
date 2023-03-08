from flask import Flask, render_template, request
from flask_mail import Mail, Message
import os

app = Flask(__name__)
app.config['MAIL_SERVER'] = 'smtp.gmail.com'
app.config['MAIL_PORT'] = 465
app.config['MAIL_USERNAME'] = 'andresmaltesvarela@gmail.com'
app.config['MAIL_PASSWORD'] = os.environ.get('PASSWORD')
app.config['MAIL_USE_TLS'] = False
app.config['MAIL_USE_SSL'] = True
mail = Mail(app)

@app.route('/', methods=['GET', 'POST'])
def greet():
    return render_template('index.html')


@app.route('/login/',methods=['GET','POST'])
def login():
    #Obtenemos el texto provenientes de login.html
    email = request.form['email']
    if request.method == 'POST':
        msg = Message("Correo de Verificación de ARKYTASS", sender="andresmaltesvarela@gmail.com",
                       recipients=["naceron02@misena.edu.co"])
        msg.body = "Con el siguiente link tendrá acceso a todos los servicios prestados por nosotros."
        mail.send(msg)
        return print("Sent email")
    return render_template('login.html')


if __name__ == '__main__':
    app.run(host='')