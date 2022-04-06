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
	sudo docker-compose -f ./srcs/docker-compose.yml up -d --build

down:
	sudo docker-compose -f ./srcs/docker-compose.yml down

# ----------------- #
#       CLEAN       #
# ----------------- #

clean:
	sudo docker-compose -f ./srcs/docker-compose.yml down --volumes
	sudo rm -rf /home/eithan/data
	sudo docker network prune -f

fclean: clean
	sudo docker system prune -af

re:	clean all

.PHONY: all down clean fclean re