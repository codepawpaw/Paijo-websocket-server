# Run Instruction

1. install ruby

3. run this command
```bash
bundle install
```

4. Run the app
```bash
nohup bundle exec ruby app.rb &> /dev/null &
```

5. Checking the server 

Run this command in your browser console.
```bash
var ws = new WebSocket("ws://localhost:8080")
```
