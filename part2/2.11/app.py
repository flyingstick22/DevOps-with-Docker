from flask import Flask
app = Flask(__name__)

@app.route('/')
def hello():
	return "This is the exercise 2.11!"

if __name__ == '__main__':
	app.run(debug=True, host='0.0.0.0', port=8000)
