# SPDX-License-Identifier: GPL-2.0
obj-m += rdma_rxe.o

rdma_rxe-y := \
	rxe.o \
	rxe_comp.o \
	rxe_req.o \
	rxe_resp.o \
	rxe_recv.o \
	rxe_pool.o \
	rxe_queue.o \
	rxe_verbs.o \
	rxe_av.o \
	rxe_srq.o \
	rxe_qp.o \
	rxe_cq.o \
	rxe_mr.o \
	rxe_mw.o \
	rxe_opcode.o \
	rxe_mmap.o \
	rxe_icrc.o \
	rxe_mcast.o \
	rxe_task.o \
	rxe_net.o \
	rxe_hw_counters.o

rxe:
	make -C /lib/modules/$(shell uname -r)/build M=$(shell pwd) modules

clean:
	make -C /lib/modules/$(shell uname -r)/build M=$(shell pwd) clean
