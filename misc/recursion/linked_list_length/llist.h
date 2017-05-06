#ifndef LLIST_H
#define LLIST_H
// Includes
#include <stdlib.h>

// Defines
#define LLIST_EOK 0
#define LLIST_EGROW 1

// Structures
typedef struct node{
	void *data;	
	struct node *next;
}node, *p_node;

typedef struct llist{
	p_node root;
	size_t size;
}llist, *p_llist;

// Function Prototypes (Node)

p_node node_init( const void *data );
void node_free( p_node node );

// Function Prototypes (Linked List)

p_llist llist_init();
short llist_push( const p_llist l ,const p_node node );
short llist_push_adv( const p_llist l, const void *data );
p_node llist_pop( const p_llist l);
p_llist llist_clone();
void llist_free( p_llist list );
#endif 
