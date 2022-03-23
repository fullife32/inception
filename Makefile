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
	sudo docker-compose -f ./srcs/docker-compose.yml up --build
# -d to detach
down:
	sudo docker-compose -f ./srcs/docker-compose.yml down

# ----------------- #
#       CLEAN       #
# ----------------- #

clean: down
	sudo docker system prune -af --volumes

fclean: clean
	sudo docker volume rm srcs_database srcs_wordpress_data

re:	down all

.PHONY: all down clean fclean re