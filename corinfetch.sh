#    corinFetch  Copyright (C) 2024  https://github.com/cbrbygones
#    This program comes with ABSOLUTELY NO WARRANTY; This is free software, 
#    and you are welcome to redistribute it under certain conditions.
#
#    Please review the GNU General Public License v3.0:
#    https://www.gnu.org/licenses/gpl-3.0.html

# VARIABLES SECTION - PLEASE DO NOT EDIT UNLESS YOU KNOW WHAT YOU'RE DOING

SYS_NAME=$(echo "$USER")
SYS_HOSTNAME=$(uname -n)
SYS_DISTRO=$(. /etc/os-release && echo "$ID")
SYS_DISTRO_OS=$(uname -o)
SYS_DIMMS=$(xdpyinfo | grep dimensions | sed 's/dimensions\s*:\s*\([0-9x]*\)\s*.*/\1/')
SYS_DE=$(echo "$XDG_CURRENT_DESKTOP")
SYS_KERNEL=$(uname -s -r)
SYS_CPU=$(grep -m 1 'model name' /proc/cpuinfo | sed 's/model name\s*:\s*//')
SYS_CPU_MHZ=$(grep -m 1 'cpu MHz' /proc/cpuinfo | sed 's/cpu MHz\s*:\s*//')
SYS_PRCSSRS=$(grep -m 1 'cpu cores' /proc/cpuinfo | sed 's/cpu cores\s*:\s*//')
SYS_MEMORY_FREE=$(grep -m 1 'MemFree' /proc/meminfo | sed 's/MemFree\s*:\s*//')
SYS_MEMORY_AVAIL=$(grep -m 1 'MemAvailable' /proc/meminfo | sed 's/MemAvailable\s*:\s*//')

# DO NOT EDIT PAST THIS LINE UNLESS YOU KNOW WHAT YOU'RE DOING

echo " "

if [[ $SYS_DISTRO ]]; then
	LOGO="${SYS_DISTRO}"
else
	LOGO=0
fi

	case ${LOGO} in

		arch)
			ASCII=$(base64 -d <<< "H4sIAAAAAAAAA5XUQQ6AIAwEwPu+gjP7//8ZNEaguy322DoUaqA1E+yuAkvIv6bTI2Nu4pAxDzFH0oZvnBsyRcqQOar6KBTNGFlPUTQMUZpIAtqNIoWRZFc4IomxZEU4IwuCIXfG/CZIkiehql9ZdoIi07VRS0EdX8+lvQXIiZk+fTKeyBKWvHvSVoTivYhumH03pWs4/v5zF5iTi5evBQAA" | gunzip)
			echo "$ASCII"
		;;

		ubuntu)
			ASCII=$(base64 -d <<< "H4sIAAAAAAAAA53USw6AIAwE0L2naNJlw/2vZ7AKTD9Y7Q7DUwqDRIViGB0FoPXFMFsUG5lFjkSmGUSGeNN6AeqMJDftro7MIiUxbZqgudCExKNjef4g2+JQYMaL9kYio8gbrNp38Fxr/WAUKvtmE1c4HxfSNAc6hZeixIy8sZm9zajmGoBdbXx/VuJbfL+nfl8K/4Mf37kYjE4kpjSOqwQAAA==" | gunzip)
			echo "$ASCII"
		;;

		fedora)
			ASCII=$(base64 -d <<< "H4sIAAAAAAAAA63UQQ7EIAgF0D2nMDHdQOQAJr3/tUY7qUL5dtpkWKpPQFtTeh0ExrKJ7bfZMowbg0FQdAekVFWtcmG0JKJjkXpEC8FTpFSZraJFku/+ZWxhEeFWjizFDFhEkOxHRb7YPBA25ZrGJSJ4yNGcpKN/GC499HtqPdgLYGoK0S6H7RJn+pxEs1/qNsZtVuO5AePzg7OeZBo38cjwU5OWeRQ1fxLcj5qfJhJ7bpx5F5GqaUHO98Tej70V0MyYt9/B/AhiK22wVcLjnzNbtdo4rIdv1eJVA8uneRkfG/MALq8FAAA=" | gunzip)
			echo "$ASCII"
		;;
	*)
		ASCII=$(base64 -d <<< "H4sIAAAAAAAAA42US6oEMQhF51lFgThRdAGBgPtf1dPUp/OxHnUnTaycvsZojiORGRAzmCv5WjKC2y3OqIRBHpVAO2M0KckvYWCUfWF8S1VBM6y+oo+MalMNkkGPzCjJTRFBAbWhUWqUMFilqmqVxuH3hQGRekpc+IUxlAuK34+MPT6eY8UkuZXppdbYfR6q2Q6VDaE66Sy2gb0x5u1VF11GbClj6JnIyogDOEEDY8RorcYxbj1QUP51ZYwJjEfipnodyJAuqPxcPIQr8oN8KgBmxv/FxHbkhMLIU8TTqNw1BsC2nX+sQ30uamReEW8H5JWx7vuOVGRC4o2Bd0iwPw1uNuZGkZdwml60t6cR9yr41CC6PkokbWu3jvi0R8vFPElnRIbm742yMjo6NmdGxKP9zlefadmCmaMxmfOmLdcie+y/ZUTKXqkp12j03WdjoicBCPpTMFf/qlvbzZ9HINp5KtAyP1PFh+FNotN70PqttWOSyBr9A0dsPGgbBwAA" | gunzip)
		echo "$ASCII"
		;;
	esac
		
echo " "
echo "$SYS_NAME@$SYS_HOSTNAME"
echo "Distro: $SYS_DISTRO $SYS_DISTRO_OS"
echo "Dimensions: $SYS_DIMMS"
echo "Desktop: $SYS_DE"
echo "Kernel: $SYS_KERNEL"
echo "CPU: $SYS_CPU @ $SYS_CPU_MHZ MHz"
echo "Processors: $SYS_PRCSSRS"
echo "Memory: $SYS_MEMORY_FREE / $SYS_MEMORY_AVAIL"
echo " "
