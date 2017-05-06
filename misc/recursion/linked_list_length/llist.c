#include "llist.h"
#include <stdio.h> //TODO: Remove me
// Nodes
p_node node_init(const void *data){
	p_node n = malloc(sizeof(node));
	if(!n)
		return NULL;
	
	n->data = (void *)data;
	return n;
}

void node_free(p_node node){
	node->data = NULL;
	free(node);
	node = NULL;
}

// List

p_llist llist_init(){
	p_llist l = malloc(sizeof(llist));
	if(!l)
		return NULL;

	l->size = 0;
	l->root = NULL;
	return l;
}

short llist_push( const p_llist l, const p_node n ){
	if( !l->root ){
		l->root = n;
		l->root->next = NULL;
		l->size++;
		return LLIST_EOK;
	}
	
	p_node current = l->root;
	if(!current){
		l->root = n;
		l->size++;
		return LLIST_EOK; 
	}
	
	while(current->next != NULL)
		current = current->next;

	current->next = n;
	n->next = NULL;
	l->size++;
	return LLIST_EOK;
}

short llist_push_adv( const p_llist l, const void *data ){
	p_node n = node_init(data);
	if(!n)
		return LLIST_EGROW;

	return llist_push(l, n);
}

p_node llist_pop( const p_llist l ){
	if(l->root == NULL)
		return NULL;
	
	if(l->root->next == NULL){
		p_node tmp = l->root;
		l->root = NULL;
		l->size--;
		return tmp;
	}

	p_node current = l->root;
	p_node previous = current;
	while(current->next != NULL){
		previous = current;
		current = current->next;
	}
	
	previous->next = NULL;
	l->size--;
	return current;
}

void llist_free( p_llist l ){
	
	while(l->size != 0){
		p_node n = llist_pop(l);
		if(n)
			node_free(n);
	}

	l->root = NULL;
	free(l);
	l = NULL;
}
