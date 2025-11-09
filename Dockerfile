# Step 1: Use official Python base image
FROM python:3.12-trixie

# Step 2: Set working directory
WORKDIR /app

# Step 3: Copy app files into container
COPY . /app

# Step 4: Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Step 5: Expose port 8080
EXPOSE 8080

# Step 6: Run the Flask app
CMD ["python3", "app.py"]
