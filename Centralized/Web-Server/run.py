from flask import Flask
from flask import render_template
import RPi.GPIO as rpi
import time

app= Flask(__name__)

yellowLed, redLed, whiteLed= 3,5,7

rpi.setwarnings(False)
rpi.setmode(rpi.BOARD)
rpi.setup(yellowLed, rpi.OUT)
rpi.setup(redLed, rpi.OUT)
rpi.setup(whiteLed, rpi.OUT)
rpi.output(yellowLed, 0)
rpi.output(redLed, 0)
rpi.output(whiteLed, 0)
print("Done")

@app.route('/')
def index():
  return render_template('webpage.html')

@app.route('/A')
def yellowLedOn():
  rpi.output(yellowLed,1)
  return render_tempate('webpage.html')

@app.route('/a')
def yellowLedOff():
  rpi.output(yellowLed,0)
  return render_tempate('webpage.html')

@app.route('/B')
def redLedOn():
  rpi.output(redLed,1)
  return render_tempate('webpage.html')

@app.route('/b')
def redLedOff():
  rpi.output(redLed,0)
  return render_tempate('webpage.html')

@app.route('/C')
def whiteLedOn():
  rpi.output(whiteLed,1)
  return render_tempate('webpage.html')

@app.route('/c')
def whiteLedOff():
  rpi.output(whiteLed,0)
  return render_tempate('webpage.html')


if __name__ == "__main__":
  print("Start")
  app.run(debug=True, host='192.168.0.103')
