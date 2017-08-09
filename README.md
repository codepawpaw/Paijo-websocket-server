# Run Instruction

1. install ruby

2. Run the app
```bash
nohup bundle exec ruby app.rb &> /dev/null &
```

3. Checking the server 

Run this command in your browser console.
```bash
var ws = new WebSocket("ws://localhost:8080")
```
