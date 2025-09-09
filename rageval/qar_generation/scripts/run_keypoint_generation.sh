#!/bin/bash

# Parameters
model_name="gpt-5-mini-2025-08-07" # Name of the OpenAI model to use
INPUT_FILE_PATH="results/DRAGONBALL_Datasets/DRAGONBALL_queries.jsonl" # Directory containing input JSON files
OUTPUT_FILE_PATH="results/DRAGONBALL_Datasets/DRAGONBALL_queries.jsonl" # Directory to save the QRA output

# Function: Run the Python script
run_python_script() {
    local model_name=$1
    local input_file_path=$2
    local output_file_path=$3

    echo "Running QRA generation for model: $model_name, input file: $input_file_path, output file: $output_file_path"
    python -u code/keypoint_generation/keypoint_generation.py \
        "$model_name" "$input_file_path" "$output_file_path"
}


# Main execution
run_python_script "$MODEL_NAME" "$INPUT_FILE_PATH" "$OUTPUT_FILE_PATH"

echo "keypoints generation complete."