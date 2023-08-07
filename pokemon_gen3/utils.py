import atexit
from contextlib import ExitStack
from typing import ContextManager, TypeVar

T = TypeVar("T")


def atexit_context(contextManager: ContextManager[T]) -> T:
    stack = ExitStack()
    atexit.register(stack.close)
    return stack.enter_context(contextManager)
