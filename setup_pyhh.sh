#!/bin/bash

# Stop on error
set -e

if [[ "$VIRTUAL_ENV" == "" ]]; then
  echo "❌ Please activate your virtual environment first."
  exit 1
fi

echo "📥 Cloning pyHH..."
git clone https://github.com/swharden/pyHH.git
cd pyHH

echo "📦 Installing dependencies..."
pip install numpy matplotlib

echo "🚀 Running demo..."
python tests/demo.py