.PHONY: update restart

update:
	# 拉取最新代码
	@git pull
	# 拉取镜像
	@docker-compose pull
    # 关闭容器
	@docker-compose down
	# 启动容器
	@docker-compose up -d

restart:
    # 关闭容器
	@docker-compose down
	# 启动容器
	@docker-compose up -d