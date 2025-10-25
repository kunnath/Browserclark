# Python Docker App

This project is a Dockerized Python application that includes two main scripts: `app.py` and `copyreport.py`. The application is designed to run a Streamlit web interface for a browser agent and manage file operations related to automation reports.
![Demo Screenshot](demo.png)

## Project Structure

```
python-docker-app
├── demo
│   ├── requirements.txt       # Lists the dependencies required for the Python programs
│   ├── app.py  # Streamlit application for the browser agent
│   └── copyreport.py          # Script to copy files to the automation_reports directory
├── Dockerfile                  # Dockerfile to build the application image
└── README.md                   # Documentation for the project
```

## Requirements

The dependencies for the project are specified in the `demo/requirements.txt` file. Ensure that all necessary packages for running the scripts are included.

## Docker Setup

To build and run the Docker container for this application, follow these steps:

1. **Build the Docker Image:**
   Navigate to the project directory and run the following command:
   ```
   docker build -t python-docker-app .
   ```

2. **Run the Docker Container:**
   After building the image, you can run the container using:
   ```

   docker run -v "$(pwd)/demo/automation_reports:/app/automation_reports" -p 8501:8501 python-docker-app
   ```

   This command will start the Streamlit application, which can be accessed at `http://localhost:8501`.

## Usage

- **Streamlit Application:** The `streamlit_browser_agent_test_async.py` script provides a web interface for interacting with the browser agent.
- **File Operations:** The `copyreport.py` script is responsible for copying files from the agent run folder to the `automation_reports` directory.

## Contributing

Contributions to the project are welcome. Please feel free to submit issues or pull requests for any improvements or bug fixes.

## License

This project is licensed under the MIT License. See the LICENSE file for more details.# Browserclark
