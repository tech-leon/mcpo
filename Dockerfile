FROM python:3.11-slim
WORKDIR /app
RUN pip install mcpo uv
COPY config.json /app/config.json
# Replace with your MCP server command; example: uvx mcp-server-time
# CMD ["uvx", "mcpo", "--host", "0.0.0.0", "--port", "9050", "--", "uvx", "mcp-server-time", "--local-timezone=Australia/Perth"]
CMD ["uvx", "mcpo", "--config", "./config.json"]