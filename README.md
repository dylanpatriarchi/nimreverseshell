# nimreverseshell
The Nim Reverse Shell is a simple reverse shell client written in Nim that allows a remote server to execute commands on a client machine and receive the results.

## Configuration

Open the nimreverseshell.nim file with a text editor and modify the ip and port variables to match the IP address and port of the target server.
```bash
const
  ip = "ip"
  port = port
```

## Usage

Once the configuration is complete, compile the Nim code using the Nim compiler:
```bash
nim c -d:release nimreverseshell.nim
```

Then, run the compiled .exe:
```bash
./nimreverseshell
```

## Security Considerations

Please note that the Nim Reverse Shell can be used for legitimate purposes such as remote administration, but it can also be abused for malicious activities if not properly secured. Always use it responsibly and ensure that proper authentication and authorization mechanisms are in place to prevent unauthorized access.