/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   rotate_ab.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: allefebv <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/02/01 15:40:26 by allefebv          #+#    #+#             */
/*   Updated: 2019/02/15 18:39:03 by allefebv         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "push_swap.h"

char	*ft_rotate_ab(t_list **stack_a, t_list **stack_b)
{
	ft_rotate_a(stack_a, stack_b);
	ft_rotate_b(stack_a, stack_b);
	return ("rra");
}
