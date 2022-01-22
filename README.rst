SMake
=====

Wrapper that enables `GNU Make`_ to make use of a Slurm_ cluster.


Quick Start
-----------

A normal ``Makefile`` can be used by overriding the ``SHELL`` variable.

::

   make "SHELL=./wrapper" -j 100

Alternatively, this can be set in the ``Makefile`` itself.

.. code-block:: make

    SHELL := ./wrapper

The ``SBATCH`` environment variable can be used for setting default sbatch_
options.

::

    export SBATCH="--mem=1G"

Alternatively, this can be set in the ``Makefile`` itself.

.. code-block:: make

    export SBATCH := --mem=1G

Defaults can be overridden per rule using the ``SBATCH`` variable.

.. code-block:: make

    SBATCH="--mem=2G" mycommand


.. _Slurm: https://slurm.schedmd.com/
.. _`GNU Make`: https://www.gnu.org/software/make/
.. _sbatch: https://slurm.schedmd.com/sbatch.html
