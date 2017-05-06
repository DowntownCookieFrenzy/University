#include <stdlib.h>
#include <stdio.h>
#include "llist.h"

size_t getListSize_Rec(const p_node node, size_t size){
	if( !node )
		return size;
	return getListSize_Rec(node->next, ++size);
}

size_t getListSize(const p_llist list){
	return getListSize_Rec(list->root, 0);
}

int main(){
	p_llist list = llist_init();
	llist_push(list, node_init("no!"));
	llist_push(list, node_init("okay"));
	llist_push(list, node_init("lel"));

	printf("Three Nodes: %zu\n", getListSize(list));

	llist_free(list);
	return 0;	
}
