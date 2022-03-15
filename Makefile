# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: eassouli <eassouli@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/10/31 17:38:13 by lvirgini          #+#    #+#              #
#    Updated: 2022/03/11 18:05:33 by eassouli         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

all:
	sudo docker-compose -f ./srcs/docker-compose.yml up --build

# ----------------- #
#       CLEAN       #
# ----------------- #

down:
	sudo docker-compose -f ./srcs/docker-compose.yml down

prune:
	sudo docker system prune -af --volumes

re:	down all

.PHONY: all down re