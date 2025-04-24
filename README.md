# rxe
An out-of-tree RXE kernel driver from linux kernel (linux/drivers/infiniband/sw/rxe)

There is no RDMA support on the GitHub CI machine, so the CI jobs cannot run the RDMA tests.
Sadly, there is no RXE or SIW in the linux-modules-extra-`uname -r` package.
By building this out-of-tree RXE to set up software-level RDMA support,
the CI can test the functionality.

# Version
RXE: linux-6.11

For: 'ubuntu-latest' with linux 6.11.0-1012-azure

# License
All of these file are part of Linux kernel, and licensed as same as Linux kernel.
