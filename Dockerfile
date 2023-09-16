FROM oven/bun

# Create app user
RUN addgroup --system app && adduser --system --ingroup app app

# Create app directory
RUN mkdir /app
COPY . /app
RUN chown -R app:app /app

# Switch to app user and working directory
USER app
WORKDIR /app

# Install dependencies and build
RUN bun install
RUN bun run build

# Expose port and run
EXPOSE 3000
CMD ["bun", "run", "start"]