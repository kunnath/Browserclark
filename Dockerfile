FROM python:3.12-slim

WORKDIR /app

COPY demo/requirements.txt /app/
RUN pip install --no-cache-dir -r requirements.txt

# Install Playwright and its browser dependencies
RUN pip install playwright \
	&& playwright install --with-deps
RUN mkdir -p /app/automation_reports/screenshots && chmod -R 777 /app/automation_reports

COPY demo/app.py /app/
COPY demo/copyreport.py /app/

# Set default command to run the main automation app
CMD ["streamlit", "run", "app.py"]