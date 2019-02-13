#include <linux/module.h>
#include <linux/kernel.h>
#include <linux/init.h>

MODULE_LICENSE("GPL");

MODULE_DESCRIPTION("Hello World program attached to kernel");

MODULE_VERSION("1.0");

MODULE_AUTHOR("CED15I030");

static int __init hello_start(void)
{
	printk(KERN_INFO "Module started...\n"); 
    	printk(KERN_INFO "Hello world\n"); 
	return 0;
}
 
static void __exit hello_end(void) 
{
	printk(KERN_INFO "Module Closing\n");
}

module_init(hello_start);
module_exit(hello_end);
