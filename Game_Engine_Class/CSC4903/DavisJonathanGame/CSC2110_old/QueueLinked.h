#if !defined (QUEUELINKED_H)
#define QUEUELINKED_H

#include "NextNode.h"

template < class T >
class QueueLinked
{

   private:
      NextNode<T>* tail;
      int sze;

   public:
      QueueLinked();
      ~QueueLinked();
      bool isEmpty();
      int size();
      void dequeueAll(); 
      T* peek();
      T* dequeue();
      void enqueue(T* item);

};

template < class T >
QueueLinked<T>::QueueLinked()
{
   tail = NULL;
   sze = 0;
}

template < class T >
QueueLinked<T>::~QueueLinked()
{
   dequeueAll();
}

template < class T >
void QueueLinked<T>::enqueue(T* item)
{
    NextNode<T>* node = new NextNode<T>(item);

    //insert the new node
    if (isEmpty()) 
    {
      // insertion into empty queue
      node->setNext(node);
    }
    else 
    {
      // insertion into nonempty queue
      node->setNext(tail->getNext());
      tail->setNext(node);
    }  

    tail = node;  //new node is at back
    sze++;
}

template < class T >
bool QueueLinked<T>::isEmpty()
{
    return (sze == 0);
}

template < class T >
int QueueLinked<T>::size()
{
    return sze;
}

template < class T >
void QueueLinked<T>::dequeueAll()
{
   if (tail != NULL)
   {
      NextNode<T>* curr = tail->getNext();
      NextNode<T>* next = curr->getNext();

      while (next != tail)
      {
         delete curr;
         curr = next;
         next = curr->getNext();
      }

      tail = NULL;
      delete next; 
   }
   sze = 0;
}

template < class T >
T* QueueLinked<T>::peek()
{
    T* item = NULL;
    if (!isEmpty()) 
    {  
      // queue is not empty; retrieve front
      NextNode<T>* head = tail->getNext();
      item = head->getItem();
    }
    return item;
}

template < class T >
T* QueueLinked<T>::dequeue()
{
    T* item = NULL;

    if (!isEmpty()) 
    {
      // queue is not empty; remove front
      NextNode<T>* head = tail->getNext();
      item = head->getItem();

      if (head == tail) 
      {  
        // one node in queue
        tail->setNext(NULL); 
        tail = NULL;        
      }
      else 
      {
        tail->setNext(head->getNext());
      }  

      delete head;
      sze--;
    }

    return item;
}

#endif
