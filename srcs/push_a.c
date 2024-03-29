/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   pa.c                                               :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: allefebv <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/02/01 13:44:26 by allefebv          #+#    #+#             */
/*   Updated: 2019/03/06 18:03:37 by allefebv         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "push_swap.h"

char	*ft_push_a(t_list **stack_a, t_list **stack_b)
{
	t_list	*start_b;
	t_list	*start_a;

	if (*stack_b == NULL)
		return ("pa");
	start_b = *stack_b;
	if (*stack_a)
		start_a = *stack_a;
	else
		start_a = NULL;
	*stack_b = (*stack_b)->next;
	*stack_a = start_b;
	(*stack_a)->next = start_a;
	return ("pa");
}
