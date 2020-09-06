from nose.tools import assert_true
import requests


def test_request_response():
    # Send a request to the API server and store the response.
    response = requests.get('http://localhost:8000')

    # Confirm that the request-response cycle completed successfully.
    assert_true(response.ok)
