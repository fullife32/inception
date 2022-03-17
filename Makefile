# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: eassouli <eassouli@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/03/17 18:23:50 by eassouli          #+#    #+#              #
#    Updated: 2022/03/17 20:34:03 by eassouli         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

all:
	sudo docker-compose -f ./srcs/docker-compose.yml up --build
# -d

# ----------------- #
#       CLEAN       #
# ----------------- #

down:
	sudo docker-compose -f ./srcs/docker-compose.yml down

prune:
	sudo docker system prune -af --volumes

re:	down all

.PHONY: all down re