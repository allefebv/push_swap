/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_striter.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: allefebv <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/11/09 10:04:39 by allefebv          #+#    #+#             */
/*   Updated: 2018/11/15 14:00:43 by allefebv         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <string.h>

void	ft_striter(char *s, void (*f)(char *))
{
	if (s != NULL)
	{
		while (*s != '\0' && f != NULL)
		{
			f(s);
			s++;
		}
	}
}
