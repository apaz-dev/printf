/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strjoin.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: apaz-pri <apaz-pri@student.42madrid.c      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/09/24 16:56:34 by apaz-pri          #+#    #+#             */
/*   Updated: 2024/09/26 18:04:11 by apaz-pri         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

char	*ft_strjoin(char const *s1, char const *s2)
{
	size_t	mxl;
	size_t	i;
	size_t	i2;
	char	*str;

	mxl = ft_strlen(s1) + ft_strlen(s2);
	str = (char *)malloc((mxl + 1) * sizeof(char));
	if (!str)
		return (NULL);
	i = 0;
	while (i < ft_strlen(s1))
	{
		str[i] = s1[i];
		i++;
	}
	i2 = 0;
	while (i2 < ft_strlen(s2))
		str[i++] = s2[i2++];
	str[i] = '\0';
	return (str);
}
