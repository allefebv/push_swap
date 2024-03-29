/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   rev_rotate_b.c                                     :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: allefebv <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/02/01 15:38:36 by allefebv          #+#    #+#             */
/*   Updated: 2019/03/06 18:04:09 by allefebv         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "push_swap.h"

char	*ft_rev_rotate_b(t_list **stack_a, t_list **stack_b)
{
	t_list	*before_last;
	t_list	*last;

	(void)stack_a;
	if (*stack_b == NULL || (*stack_b)->next == NULL)
		return ("rrb");
	before_last = *stack_b;
	while (before_last->next->next != NULL)
		before_last = before_last->next;
	last = before_last->next;
	before_last->next = NULL;
	last->next = *stack_b;
	*stack_b = last;
	return ("rrb");
}
