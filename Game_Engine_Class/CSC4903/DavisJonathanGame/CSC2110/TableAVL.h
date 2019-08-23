#if !defined TABLE_AVL_H
#define TABLE_AVL_H

#include "AVLTree.h"

template < class T, class U >
class TableAVL
{

   private:
      AVLTree<T,U>* avl;

   public:
      TableAVL(Comparator<T,U>* comparator);
      ~TableAVL();

      bool tableIsEmpty();
      int tableSize();
      void tableInsert(T* item);
      void tableRemove(U* sk);
      T* tableRetrieve(U* sk);
      AVLTreeIterator<T>* tableIterator();
      
};

template < class T, class U >
TableAVL<T,U>::TableAVL(Comparator<T,U>* comparator) 
{
   avl = new AVLTree<T,U>(comparator);
}  

template < class T, class U >
TableAVL<T,U>::~TableAVL() 
{ 
   delete avl;
}  

template < class T, class U >
bool TableAVL<T,U>::tableIsEmpty() 
{
   return avl->isEmpty();
}

template < class T, class U >
int TableAVL<T,U>::tableSize() 
{
   return avl->size();
} 

template < class T, class U >
void TableAVL<T,U>::tableInsert(T* item)
{
   avl->insert(item);
} 

template < class T, class U >
void TableAVL<T,U>::tableRemove(U* sk)
{
   avl->remove(sk);
}

template < class T, class U >
T* TableAVL<T,U>::tableRetrieve(U* sk)
{
   return avl->retrieve(sk);
}

template < class T, class U >
AVLTreeIterator<T>* TableAVL<T,U>::tableIterator()
{
   AVLTreeIterator<T>* iter = avl->iterator();
   iter->setInorder();
   return iter;
}

#endif
