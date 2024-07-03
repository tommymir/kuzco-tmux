# Kuzco Worker Tmux Scripts

This repository contains scripts to manage multiple Kuzco worker instances using tmux.

## Setup

1. Clone this repository:
   ```
   git clone https://github.com/yourusername/kuzco-worker-scripts.git
   cd kuzco-worker-scripts
   ```

2. Create a `kuzco_config.txt` file with your actual worker ID and code:
   ```
   WORKER_ID=your_actual_worker_id
   WORKER_CODE=your_actual_worker_code
   ```
   **Important:** Never commit this file to the repository. It's listed in `.gitignore` for your security.

3. Make all the tmux scripts executable:
   ```
   chmod +x tmux*.sh
   ```

## Usage

1. Choose the script corresponding to the number of tmux sessions you want to run. For example, to run 8 sessions:
   ```
   ./tmux8.sh
   ```

2. The script will start the specified number of Kuzco workers in separate tmux sessions.

## Helpful Tmux Commands

- List all tmux sessions:
  ```
  tmux list-sessions
  ```

- Attach to a specific session:
  ```
  tmux attach-session -t session_name
  ```

- Kill a specific session:
  ```
  tmux kill-session -t session_name
  ```

- Kill all tmux sessions:
  ```
  tmux kill-server
  ```

- Detach from a session (while inside tmux):
  ```
  Press Ctrl-b, then d
  ```

## Known Issues

- There's a known issue where even if you select a script like `tmux12.sh`, it may only spin up 9 Kuzco instances. The reason for this is currently unclear and under investigation.

## Contributing

Feel free to open issues or submit pull requests if you have suggestions for improvements or encounter any problems.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

MIT License

Copyright (c) 2024 @mattsilv

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
