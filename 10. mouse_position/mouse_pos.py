from pynput.mouse import Listener

def on_move(x, y):
    print('Pointer moved to {0}'.format(
        (x, y)))

# Collect events until released
with Listener(on_move=on_move) as listener:
    listener.join()
