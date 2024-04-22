case ${1,,} in 
	herbert | administrator)
		echo "Hello, you're the boss here!"
		;;
	help)
		echo "Just enter your username"
		;;
	*) 
		echo "Hello there, u are not my boss"
esac
