import sys
from pathlib import Path

here = Path(__file__).parent
sys.path.append((here / ".." / "code").as_posix())

from count import count_words


def test_count_words():
    text = "Hello, world! Bye world!"
    expected = {"world": 2, "Hello": 1, "Bye": 1}
    actual = count_words(text)

    assert actual == expected
