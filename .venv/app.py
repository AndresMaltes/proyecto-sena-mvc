from flask import Flask, render_template, request


app = Flask(__name__)


@app.route('/', methods=['GET', 'POST'])
def greet():
    return render_template('index.html')


@app.route('/login/',methods=['GET','POST'])
def login():
    return render_template('login.html')

@app.route('/gerente/',methods=['GET','POST'])
def gerente():
    return render_template('gerente.html')

if __name__ == '__main__':
    app.run(host='')