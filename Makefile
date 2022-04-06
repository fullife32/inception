# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: eassouli <eassouli@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/03/17 18:23:50 by eassouli          #+#    #+#              #
#    Updated: 2022/03/23 17:50:04 by eassouli         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

all:
	mkdir -p /home/eithan/data/wordpress_website
	mkdir -p /home/eithan/data/wordpress_database
	sudo docker-compose -f ./srcs/docker-compose.yml up --build
# -d to detach
down:
	sudo docker-compose -f ./srcs/docker-compose.yml down
# Need to rework here to delete virtual volumes and check curl 443 vm fix ?

# ----------------- #
#       CLEAN       #
# ----------------- #

clean:
	sudo docker-compose -f ./srcs/docker-compose.yml down --volumes
	sudo rm -rf /home/eithan/data/wordpress_website
	sudo rm -rf /home/eithan/data/wordpress_database

fclean: clean
	sudo docker system prune -af

re:	clean all

.PHONY: all down clean fclean re