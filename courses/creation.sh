#!/bin/bash

# List of subjects
subjects=(
    "AQA Design Technology GCSE"
    "AQA German GCSE Higher"
    "AQA German GCSE Foudnation"
    "AQA Spanish GCSE Higher"
    "AQA Spanish GCSE Foundation"
    "AQA French GCSE Higher"
    "AQA French GCSE Foundation"
    "AQA Maths GCSE Higher"
    "AQA Maths GCSE Foundation"
    "AQA Biology GCSE Higher"
    "AQA Chemistry GCSE Higher"
    "AQA Physics GCSE Higher"
    "AQA Level 2 Further Maths"
    "AQA GCSE English Language"
    "Edexcel iGCSE Biology"
    "Edexcel iGCSE Chemistry"
    "Edexcel iGCSE English Language"
    "Edexcel iGCSE English Literature"
    "Edexcel iGCSE History"
    "Edexcel iGCSE Maths"
    "Edexcel iGCSE Physics"
    "OCR Classical Civilisation GCSE"
)

# Loop through the array
for subject in "${subjects[@]}"; do
    # 1. Convert to lowercase
    # 2. Replace spaces with hyphens
    filename=$(echo "$subject" | tr '[:upper:]' '[:lower:]' | tr ' ' '-')
    
    # Create the empty .json file
    touch "${filename}.json"
    
    echo "Created: ${filename}.json"
done

echo "Done! All files generated."