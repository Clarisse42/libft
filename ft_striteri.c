/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_striteri.c                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ccharuel <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2016/11/19 01:05:32 by ccharuel          #+#    #+#             */
/*   Updated: 2016/11/23 22:19:29 by ccharuel         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

void	ft_striteri(char *s, void (*f)(unsigned int, char*))
{
	int x;

	x = 0;
	if (s && f)
		while (*s)
		{
			(*f)(x, s);
			x++;
			s++;
		}
}