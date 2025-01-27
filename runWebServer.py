import http.server
import socketserver

#May also be 8081 on Lab Computers
PORT = 8080

Handler = http.server.SimpleHTTPRequestHandler
Handler.extensions_map.update({
 ".js" : "application/javascript",
})

httpd = socketserver.TCPServer(("", PORT), Handler)
httpd.serve_forever()