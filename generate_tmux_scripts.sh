#!/bin/bash

# Name of the config file
CONFIG_FILE="kuzco_config.txt"

# Create a sample config file
cat > sample_config.txt << EOL
WORKER_ID=sample_worker_id
WORKER_CODE=sample_worker_code
EOL

echo "Created sample_config.txt. Please create $CONFIG_FILE with your actual worker ID and code."

# Function to generate tmux script
generate_tmux_script() {
    num_processes=$1
    filename="tmux${num_processes}.sh"

    cat > "$filename" << EOL
#!/bin/bash

# Source the config file
source $CONFIG_FILE

# Define the command to run
COMMAND="kuzco worker start --worker \$WORKER_ID --code \$WORKER_CODE"

EOL

    for i in $(seq 1 $num_processes); do
        echo "# Start worker $i" >> "$filename"
        echo "tmux new-session -d -s worker$i \"\$COMMAND\"" >> "$filename"
    done

    echo "echo \"Started $num_processes kuzco workers in parallel tmux sessions.\"" >> "$filename"

    chmod +x "$filename"
    echo "Created $filename"
}

# Generate scripts for 5 to 15 processes
for i in $(seq 5 15); do
    generate_tmux_script $i
done

echo "Generated tmux scripts from tmux5.sh to tmux15.sh"
echo "Please ensure you create $CONFIG_FILE with your actual worker ID and code before running these scripts."
