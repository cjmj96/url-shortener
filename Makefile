.PHONY: test pre-commit run

test:
	uv run pytest -n auto
pre-commit:
	uv run pre-commit run --all-files
run:
	uv run uvicorn shortener_app.main:app --reload