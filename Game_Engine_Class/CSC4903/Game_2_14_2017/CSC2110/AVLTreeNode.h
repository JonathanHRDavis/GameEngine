#if !defined (AVLTREENODE_H)
#define AVLTREENODE_H

#include "AVL.h"

template < class T >
class AVLTreeNode
{
   private:
      AVL balanceFactor;
      AVLTreeNode<T>* left;
      AVLTreeNode<T>* right;
      T* item;

   public:
      AVLTreeNode(T* item);
      ~AVLTreeNode();
      AVLTreeNode<T>* getLeft();
      AVLTreeNode<T>* getRight();
      T* getItem();
      void setLeft(AVLTreeNode<T>* l);
      void setRight(AVLTreeNode<T>* r);
      void setItem(T* data);
      void setBalanceFactor(AVL bf);
      AVL getBalanceFactor();
      void insertLeft();
      void insertRight();
      void deleteLeft();
      void deleteRight();

};

template < class T >
AVLTreeNode<T>::AVLTreeNode(T* data)
{
   balanceFactor = BALANCED;
   left = NULL;
   right = NULL;
   item = data;
}

template < class T >
AVLTreeNode<T>::~AVLTreeNode()
{}

template < class T >
AVLTreeNode<T>* AVLTreeNode<T>::getLeft()
{
   return left;
}

template < class T >
AVLTreeNode<T>* AVLTreeNode<T>::getRight()
{
   return right;
}

template < class T >
void AVLTreeNode<T>::setLeft(AVLTreeNode* l)
{
   left = l;
}

template < class T >
void AVLTreeNode<T>::setRight(AVLTreeNode* r)
{
   right = r;
}

template < class T >
void AVLTreeNode<T>::setItem(T* data)
{
   item = data;
}

template < class T >
void AVLTreeNode<T>::setBalanceFactor(AVL bf)
{
   if (bf == LEFT_HEAVY || bf == BALANCED || bf == RIGHT_HEAVY)
   {
      balanceFactor = bf;
   }
}

template < class T >
AVL AVLTreeNode<T>::getBalanceFactor()
{
   return balanceFactor;
}

template < class T >
T* AVLTreeNode<T>::getItem()
{
   return item;
}

template < class T >
void AVLTreeNode<T>::insertLeft()
{
   if (balanceFactor == RIGHT_HEAVY)
   {
      balanceFactor = BALANCED;
   }
   else if (balanceFactor == BALANCED)
   {
      balanceFactor = LEFT_HEAVY;
   }
   else
   {
      balanceFactor = LEFT_UNBALANCED;
   }
}

template < class T >
void AVLTreeNode<T>::insertRight()
{
   if (balanceFactor == RIGHT_HEAVY)
   {
      balanceFactor = RIGHT_UNBALANCED;
   }
   else if (balanceFactor == BALANCED)
   {
      balanceFactor = RIGHT_HEAVY;
   }
   else
   {
      balanceFactor = BALANCED;
   }
}

template < class T >
void AVLTreeNode<T>::deleteLeft()
{
   insertRight();
}

template < class T >
void AVLTreeNode<T>::deleteRight()
{
   insertLeft();
}

#endif
