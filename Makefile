ROOT_DIR:=$(shell dirname $(realpath $(firstword $(MAKEFILE_LIST))))

proto: internal/proto/asynq.proto
	protoc -I=$(ROOT_DIR)/internal/proto \
				 --go_out=$(ROOT_DIR)/internal/proto \
				 --go_opt=module=github.com/AsynqLab/asynq/internal/proto \
				 $(ROOT_DIR)/internal/proto/asynq.proto
