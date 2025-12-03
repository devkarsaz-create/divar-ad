
# --- Build Stage ---
FROM golang:1.21-alpine AS builder

WORKDIR /app

# Install air for live-reloading
RUN go install github.com/cosmtrek/air@latest

COPY go.mod go.sum ./
RUN go mod download

COPY . .

# The final command will be executed by air using the .air.toml config
# So we don't need a build step here in the Dockerfile itself for development

# --- Final Stage for Development ---
FROM golang:1.21-alpine

WORKDIR /app

# Copy Go module files
COPY --from=builder /app/go.mod /app/go.sum ./

# Copy go.sum and download dependencies
RUN go mod download

# Copy air binary from builder
COPY --from=builder /go/bin/air /usr/local/bin/

# Copy your application source code
COPY . .

EXPOSE 8080

# Run air to start the dev server with live reload
CMD ["air", "-c", ".air.toml"]

