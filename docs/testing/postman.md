# Postman

## Load testing (Python)

Prerequisites: Newman CLI

```python
import subprocess

import click

base_command = "newman run "
linker_command = " & "


@click.command()
@click.argument('filename', type=click.Path(exists=True))
@click.option('--count', default=3, help='Number of parallel executions')
def test(filename, count):
    print("Running {0} parallel executions!!!".format(count))
    final_cmd = (base_command + filename + linker_command) * (count - 1)

    run_cmd = final_cmd + base_command + filename
    subprocess.run(run_cmd, shell=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE)


if __name__ == '__main__':
    test()

```
