from flask import Flask
app = Flask(__name__)

@app.route('/')
def hello_world():
    sign = sample_function('!',3)
    return f'Hello, Azure DevOps{sing}'

def sample_function(str1, num2):
    return str1 * num2