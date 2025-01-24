#!/bin/sh

# Prompt user for protein ID and assign to variable
read -p "Enter Protein ID: " PROTEIN_ID
SUBSTRING=${PROTEIN_ID:1:2}


# Create directory named after the protein ID
mkdir -p "$PROTEIN_ID"

# Define base URL for downloads
BASE_URL="https://files.rcsb.org/download"
VAL_URL="https://files.rcsb.org/pub/pdb/validation_reports/${SUBSTRING}/${PROTEIN_ID}/${PROTEIN_ID}_full_validation.pdf"

# Download the specified files into the created directory
wget -P "$PROTEIN_ID" "$BASE_URL/${PROTEIN_ID}-sf.cif"
wget -P "$PROTEIN_ID" "$BASE_URL/${PROTEIN_ID}.cif"
wget -P "$PROTEIN_ID" "$BASE_URL/${PROTEIN_ID}.pdb"
wget -P "$PROTEIN_ID" "$VAL_URL"
