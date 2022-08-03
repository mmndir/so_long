/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: mndir <mndir@student.42.fr>                +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/08/03 17:43:42 by mndir             #+#    #+#             */
/*   Updated: 2022/08/03 17:53:51 by mndir            ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "so_long.h"

int	m(int a, int b, char *c)
{
	mlx_init();
	mlx_new_window(mlx_init(), a, b, c);
	return (mlx_loop(mlx_init()));
}

int	main(int ac, char **av)
{
	m(atoi(av[1]), atoi(av[2]), av[3]);
}
