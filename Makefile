# ------------------------------------------------------------------------------
# Makefile for fastapi-tenants
#
# Provides shortcuts for common development tasks:
#   - Linting and formatting
#   - Static type checking
#   - Running the test suite
#   - Cleaning build artifacts
#
# Usage examples:
#   make lint         # Run ruff linter
#   make format       # Auto-format code with black
#   make typecheck    # Run mypy type checker
#   make test         # Run tests with pytest
#   make clean        # Remove build and cache files
# ------------------------------------------------------------------------------

.PHONY: lint format typecheck test clean

# Run linter (ruff) to check for code quality issues
lint:
	uv run ruff check .

# Format code using black
format:
	uv run black .

# Static type checking with mypy
typecheck:
	uv run mypy fastapi_tenants

# Run test suite with pytest
test:
	uv run pytest --cov=fastapi_tenants --cov-report=term-missing

# Remove Python cache and build artifacts
clean:
	rm -rf .mypy_cache .pytest_cache .ruff_cache dist build *.egg-info
