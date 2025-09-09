# tests/test_version.py
from fastapi_tenants.version import __version__


def test_version() -> None:
    assert isinstance(__version__, str)
    assert __version__ == "0.0.1"
