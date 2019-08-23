#if !defined (NULL)
   #define NULL 0
#endif

#if !defined AVL_TREE_H
#define AVL_TREE_H

#include "AVLTreeIterator.h"
#include "Comparator.h"

#include <iostream>
using namespace std;

template < class T, class U >
class AVLTree
{
   
   private:
      AVLTreeNode<T>* root;
      bool avl_flag;
      int sze;

      Comparator<T,U>* comparator;

      void setRootNode(AVLTreeNode<T>* tNode);
      AVLTreeNode<T>* getRootNode();
      int getHeight(AVLTreeNode<T>* tNode);
      int isBalanced(AVLTreeNode<T>* tNode);

      void destroyItem(AVLTreeNode<T>* tNode);
      void destroy();

      AVLTreeNode<T>* insertItem(AVLTreeNode<T>* tNode, T* item);
      AVLTreeNode<T>* removeItem(AVLTreeNode<T>* tNode, U* searchKey);
      AVLTreeNode<T>* removeNode(AVLTreeNode<T>* tNode);
      AVLTreeNode<T>* removeLeftMost(AVLTreeNode<T>* tNode);
      T* findLeftMost(AVLTreeNode<T>* tNode);

      AVLTreeNode<T>* rotateLeft(AVLTreeNode<T>* tNode);
      AVLTreeNode<T>* rotateRight(AVLTreeNode<T>* tNode);
      AVLTreeNode<T>* DLR(AVLTreeNode<T>* tNode);
      AVLTreeNode<T>* DRL(AVLTreeNode<T>* tNode);

      AVLTreeNode<T>* avlFixAddLeft(AVLTreeNode<T>* tNode);
      AVLTreeNode<T>* avlFixAddRight(AVLTreeNode<T>* tNode);
      AVLTreeNode<T>* avlFixRemoveLeft(AVLTreeNode<T>* tNode);
      AVLTreeNode<T>* avlFixRemoveRight(AVLTreeNode<T>* tNode);
      AVLTreeNode<T>* DLR(AVLTreeNode<T>* tNode, AVLTreeNode<T>* left);
      AVLTreeNode<T>* DRL(AVLTreeNode<T>* tNode, AVLTreeNode<T>* right);

   public:
      //AVLTree(int (*comp_item) (T* item_1, T* item_2), int (*comp_key) (U* key, T* item));
	  AVLTree(Comparator<T,U>* comparator);
      ~AVLTree();

      int size();
      void insert(T* item);
      void remove(U* sk);
      T* retrieve(U* sk);

      bool isEmpty();
      void makeEmpty();
      T* getRootItem();
      AVLTreeIterator<T>* iterator();

      int getHeight();
      bool isBalanced();

};

template < class T, class U >
AVLTree<T,U>::AVLTree(Comparator<T,U>* comp)
{
   root = NULL;
   sze = 0;

   comparator = comp;
}

template < class T, class U >
AVLTree<T,U>::~AVLTree()
{
   destroy();
   delete comparator;
}

template < class T, class U >
void AVLTree<T,U>::destroy()
{
   destroyItem(root);
}

template < class T, class U >
void AVLTree<T,U>::destroyItem(AVLTreeNode<T>* tNode)
{
   if (tNode != NULL)
   {
      destroyItem(tNode->getLeft());
      destroyItem(tNode->getRight());
      delete tNode;
   }
}

template < class T, class U >
bool AVLTree<T,U>::isEmpty()
{
   return (sze == 0);
}

template < class T, class U >
int AVLTree<T,U>::size()
{
   return sze;
}

template < class T, class U >
void AVLTree<T,U>::makeEmpty()
{
   destroy();
   root == NULL;
   sze = 0;
}

template < class T, class U >
AVLTreeNode<T>* AVLTree<T,U>::getRootNode()
{
   return root;
}

template < class T, class U >
void AVLTree<T,U>::setRootNode(AVLTreeNode<T>* tNode)
{  
   root = tNode;
}

template < class T, class U >
T* AVLTree<T,U>::getRootItem()
{
   T* root_item = root->getItem();
   return root_item;
}

template < class T, class U >
AVLTreeIterator<T>* AVLTree<T,U>::iterator()
{
   return new AVLTreeIterator<T>(root);
}

template < class T, class U >
T* AVLTree<T,U>::retrieve(U* sk)
{
   AVLTreeNode<T>* tNode = getRootNode();

   while (tNode != NULL)
   {
      T* node_item = tNode->getItem();
	  int comp = comparator->compare(sk, node_item);
      //int comp = (*compare_key) (sk, node_item);
      if (comp == 0)
      {
         return node_item;
      }
      else if (comp < 0)
      {
         tNode = tNode->getLeft();
      }
      else
      {
         tNode = tNode->getRight();
      }
   }

   return NULL; //item is not in the tree
} 

template < class T, class U >
void AVLTree<T,U>::insert(T* item)
{
   root = insertItem(root, item);
   avl_flag = false;
} 

template < class T, class U >
AVLTreeNode<T>* AVLTree<T,U>::insertItem(AVLTreeNode<T>* tNode, T* item) 
{
   if (tNode == NULL) 
   {
      tNode = new AVLTreeNode<T>(item);
      tNode->setBalanceFactor(BALANCED);
      avl_flag = true; //need to check
      sze++;
      return tNode;
   } 

   AVLTreeNode<T>* subtree;
   T* node_item = tNode->getItem();
   int comp = comparator->compare(item, node_item);
   //int comp = (*compare_item) (item, node_item);

   if (comp == 0)
   {
      //no duplicate search keys allowed, so do nothing
      return tNode; 
   }
   else if (comp < 0) 
   {
      subtree = insertItem(tNode->getLeft(), item);
      tNode->setLeft(subtree);

      //check balance factor and rotate if necessary
      if (avl_flag)  //still need to check
      {
         tNode = avlFixAddLeft(tNode);  //came from the left
      }
   }
   else 
   { 
      subtree = insertItem(tNode->getRight(), item);
      tNode->setRight(subtree);

      //check balance factor and rotate if necessary
      if (avl_flag)
      {
         tNode = avlFixAddRight(tNode);  //came from the right
      }
   } 
   return tNode;
} 

template < class T, class U >
void AVLTree<T,U>::remove(U* sk)
{
   root = removeItem(root, sk);
   avl_flag = false;
}

template < class T, class U >
AVLTreeNode<T>* AVLTree<T,U>::removeItem(AVLTreeNode<T>* tNode, U* sk) 
{
   AVLTreeNode<T>* subtree;
   if (tNode == NULL) 
   {
      return tNode;  //item not present, take no action
   }

   T* node_item = tNode->getItem();
   int comp = comparator->compare(sk, node_item);
   //int comp = (*compare_key) (sk, node_item);

   if (comp == 0) 
   {
      //item is in the root of some subtree
      //found something to remove so set avl_flag to true
      avl_flag = true;
      tNode = removeNode(tNode);  // delete the item
      sze--;
   }
   else if (comp < 0) 
   {
      subtree = removeItem(tNode->getLeft(), sk);
      tNode->setLeft(subtree);
      if (avl_flag)
      {
         tNode = avlFixRemoveLeft(tNode);  //came from left
      }
   }
   else 
   { 
      subtree = removeItem(tNode->getRight(), sk);
      tNode->setRight(subtree);
      if (avl_flag)
      {
         tNode = avlFixRemoveRight(tNode);  //came from right
      }
   }  

   return tNode;
} 

template < class T, class U >
AVLTreeNode<T>* AVLTree<T,U>::removeNode(AVLTreeNode<T>* tNode) 
{
   T* replacement_item;

   // test for a leaf --  this test is taken care of by the next two
   if ((tNode->getLeft() == NULL) && (tNode->getRight() == NULL)) 
   {
      delete tNode;
      return NULL;
   }  

   // test for no left child
   else if (tNode->getLeft() == NULL) 
   {
      AVLTreeNode<T>* temp = tNode->getRight();
      delete tNode;
      return temp;
   } 

   // test for no right child
   else if (tNode->getRight() == NULL) 
   {
      AVLTreeNode<T>* temp = tNode->getLeft();
      delete tNode;
      return temp;
   }  

   // there are two children:
   // retrieve and delete the inorder successor
   else 
   {
      replacement_item = findLeftMost(tNode->getRight());
      tNode->setItem(replacement_item);
      tNode->setRight(removeLeftMost(tNode->getRight()));
      if (avl_flag)
      {
         tNode = avlFixRemoveRight(tNode);  //came from right
      }
      return tNode;
   }  
}

template < class T, class U >
T* AVLTree<T,U>::findLeftMost(AVLTreeNode<T>* tNode)
{
   while (tNode->getLeft() != NULL)
   {
      tNode = tNode->getLeft();
   }
   return tNode->getItem();
}

template < class T, class U >
AVLTreeNode<T>* AVLTree<T,U>::removeLeftMost(AVLTreeNode<T>* tNode) 
{
   AVLTreeNode<T>* subtree;

   if (tNode->getLeft() == NULL) 
   {
      avl_flag = true;
      subtree = tNode->getRight();
      delete tNode;
      return subtree;
   }
   else 
   {
      subtree = removeLeftMost(tNode->getLeft());
      tNode->setLeft(subtree);
      if (avl_flag)
      {
         tNode = avlFixRemoveLeft(tNode);  //came from left
      }
      return tNode;
   }  
}

template < class T, class U >
bool AVLTree<T,U>::isBalanced()
{
    int bal = isBalanced(getRootNode());
    if (bal == -1)
    {
       return false;
    }
    return true;
}

template < class T, class U >
int AVLTree<T,U>::isBalanced(AVLTreeNode<T>* tNode)
{
   if (tNode == NULL)
   {
       return 0;
   }

   int balance = -1;
   AVLTreeNode<T>* left = tNode->getLeft();
   AVLTreeNode<T>* right = tNode->getRight();

   int left_height = isBalanced(left);
   int right_height = isBalanced(right);

   if (left_height != -1  &&  right_height != -1)
   {
       int bal = left_height - right_height;
       if (bal < 0) bal = bal * -1;
       if (bal <= 1)
       {
           if (left_height >= right_height)
           {
               balance = left_height + 1;
           }
           else
           {
               balance = right_height + 1;
           }
       }
   }
   return balance;
}

template < class T, class U >
int AVLTree<T,U>::getHeight()
{
   int height = getHeight(root);
   return height;
}

template < class T, class U >
int AVLTree<T,U>::getHeight(AVLTreeNode<T>* tNode)
{
   int height;
   int right_height;

   if (tNode == NULL)
   {
       return 0;
   }
   else
   {
       height = getHeight(tNode->getLeft());
       right_height = getHeight(tNode->getRight());

       if (right_height > height)
       {
           height = right_height;
       }

       return height + 1;
   }
}

template < class T, class U >
AVLTreeNode<T>* AVLTree<T,U>::rotateLeft(AVLTreeNode<T>* tNode)
{
   AVLTreeNode<T>* right = tNode->getRight();
   AVLTreeNode<T>* rightleft = right->getLeft();

   tNode->setRight(rightleft);
   right->setLeft(tNode);

   return right;
}

template < class T, class U >
AVLTreeNode<T>* AVLTree<T,U>::rotateRight(AVLTreeNode<T>* tNode)
{
   AVLTreeNode<T>* left = tNode->getLeft();
   AVLTreeNode<T>* leftright = left->getRight();

   tNode->setLeft(leftright);
   left->setRight(tNode);

   return left;
}

template < class T, class U >
AVLTreeNode<T>* AVLTree<T,U>::DLR(AVLTreeNode<T>* tNode)
{
   AVLTreeNode<T>* left = tNode->getLeft();
   AVLTreeNode<T>* temp = rotateLeft(left);
   tNode->setLeft(temp);
   temp = rotateRight(tNode);
   return temp;
}

template < class T, class U >
AVLTreeNode<T>* AVLTree<T,U>::DRL(AVLTreeNode<T>* tNode)
{
   AVLTreeNode<T>* right = tNode->getRight();
   AVLTreeNode<T>* temp = rotateRight(right);
   tNode->setRight(temp);
   temp = rotateLeft(tNode);
   return temp;
}

template < class T, class U >
AVLTreeNode<T>* AVLTree<T,U>::DLR(AVLTreeNode<T>* tNode, AVLTreeNode<T>* left)
{
   AVLTreeNode<T>* leftRight = left->getRight();
   AVL LRBF = leftRight->getBalanceFactor();
   leftRight->setBalanceFactor(BALANCED);

   if (LRBF == RIGHT_HEAVY)
   {
      left->setBalanceFactor(LEFT_HEAVY);
   }
   else if (LRBF == LEFT_HEAVY)
   {
      tNode->setBalanceFactor(RIGHT_HEAVY);    
   }

   tNode = DLR(tNode);
   //cout << "DLR" << endl;
   return tNode;
}

template < class T, class U >
AVLTreeNode<T>* AVLTree<T,U>::DRL(AVLTreeNode<T>* tNode, AVLTreeNode<T>* right)
{
   AVLTreeNode<T>* rightLeft = right->getLeft();
   AVL RLBF = rightLeft->getBalanceFactor();
   rightLeft->setBalanceFactor(BALANCED);

   if (RLBF == RIGHT_HEAVY)
   {
      tNode->setBalanceFactor(LEFT_HEAVY);
   }
   else if (RLBF == LEFT_HEAVY)
   {
      right->setBalanceFactor(RIGHT_HEAVY);
   }

   tNode = DRL(tNode);
   //cout << "DRL" << endl;
   return tNode;
}

template < class T, class U >
AVLTreeNode<T>* AVLTree<T,U>::avlFixAddLeft(AVLTreeNode<T>* tNode)
{
   tNode->insertLeft();
   AVL factor = tNode->getBalanceFactor();

   if (factor == BALANCED)
   {
      avl_flag = false; //no more to do this time around
   }
   else if (factor == LEFT_UNBALANCED)
   {
      AVLTreeNode<T>* left = tNode->getLeft();
      AVL LBF = left->getBalanceFactor();

      tNode->setBalanceFactor(BALANCED);
      left->setBalanceFactor(BALANCED);

      //DLR
      if (LBF == RIGHT_HEAVY)
      {
         tNode = DLR(tNode, left);
      }
      //SR
      else 
      {
         tNode = rotateRight(tNode);
         //cout << "SR" << endl;
      }

      avl_flag = false; //basically, stop checking (return the replacement node for this position)
   }
  
   return tNode;
}

template < class T, class U >
AVLTreeNode<T>* AVLTree<T,U>::avlFixAddRight(AVLTreeNode<T>* tNode)
{
   tNode->insertRight();
   AVL factor = tNode->getBalanceFactor();

   if (factor == BALANCED)
   {
      avl_flag = false; //no more to do this time around
   }
   else if (factor == RIGHT_UNBALANCED)
   {
      AVLTreeNode<T>* right = tNode->getRight();
      AVL RBF = right->getBalanceFactor();

      tNode->setBalanceFactor(BALANCED);
      right->setBalanceFactor(BALANCED);

      //DRL
      if (RBF == LEFT_HEAVY)
      {
         tNode = DRL(tNode, right);
      }

      //SL
      else 
      {
         tNode = rotateLeft(tNode);
         //cout << "SL" << endl;
      }

      avl_flag = false; //basically, stop checking (return the replacement node for this position)
   }

   return tNode;
}

template < class T, class U >
AVLTreeNode<T>* AVLTree<T,U>::avlFixRemoveLeft(AVLTreeNode<T>* tNode)
{
   tNode->deleteLeft();
   AVL factor = tNode->getBalanceFactor();

   if (factor == RIGHT_HEAVY)  //was BALANCED, so completely done for this delete
   {
      avl_flag = false;
   }
   else if (factor == RIGHT_UNBALANCED)
   {
      AVLTreeNode<T>* right = tNode->getRight();
      AVL RBF = right->getBalanceFactor();

      tNode->setBalanceFactor(BALANCED);
      right->setBalanceFactor(BALANCED);

      if (RBF == BALANCED)  //can't happen for insert, only delete
      {
         tNode->setBalanceFactor(RIGHT_HEAVY);
         right->setBalanceFactor(LEFT_HEAVY);
         tNode = rotateLeft(tNode);
         avl_flag = false;  //STOP
         //cout << "SL0" << endl;
      }
      else if (RBF == RIGHT_HEAVY)
      {
         tNode = rotateLeft(tNode);
         //cout << "SL" << endl;
         //KEEP GOING
      }
      else
      {
         tNode = DRL(tNode, right);
      }
   }

   return tNode;
}

template < class T, class U >
AVLTreeNode<T>* AVLTree<T,U>::avlFixRemoveRight(AVLTreeNode<T>* tNode)
{
   tNode->deleteRight();
   AVL factor = tNode->getBalanceFactor();

   if (factor == LEFT_HEAVY)  //was BALANCED, so completely done for this delete
   {
      avl_flag = false;
   }
   else if (factor == LEFT_UNBALANCED)
   {
      AVLTreeNode<T>* left = tNode->getLeft();
      AVL LBF = left->getBalanceFactor();

      tNode->setBalanceFactor(BALANCED);
      left->setBalanceFactor(BALANCED);

      if (LBF == BALANCED)  //can't happen for insert, only delete
      {
         tNode->setBalanceFactor(LEFT_HEAVY);
         left->setBalanceFactor(RIGHT_HEAVY);
         tNode = rotateRight(tNode);
         avl_flag = false;  //STOP
         //cout << "SR0" << endl;
      }
      else if (LBF == LEFT_HEAVY)
      {
         tNode = rotateRight(tNode);
         //cout << "SR" << endl;
         //KEEP GOING
      }
      else 
      {
         tNode = DLR(tNode, left);
      }
   }

   return tNode;
}

#endif
