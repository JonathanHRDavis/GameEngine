#if !defined (KEYEDLISTARRAY_H)
#define KEYEDLISTARRAY_H

#include "ListArray.h"
#include <cstring>

template < class T >
class KeyedListArray
{
   private:
      string* list_key;
      ListArray<T>* list;

   public:
      KeyedListArray(string& key);
      ~KeyedListArray();

      string* getKey();
      ListArrayIterator<T>* iterator();
      void add(T* item);

      static int compare_items(KeyedListArray<T>* kla1, KeyedListArray<T>* kla2);
      static int compare_keys(string* id, KeyedListArray<T>* kla);
};

template < class T >
KeyedListArray<T>::KeyedListArray(string& key)
{
   list_key = new string(key);
   list = new ListArray<T>();
}

template < class T >
KeyedListArray<T>::~KeyedListArray()
{
   delete list_key;
   delete list;
}

template < class T >
int KeyedListArray<T>::compare_items(KeyedListArray<T>* kla1, KeyedListArray<T>* kla2)
{
   string* key_1 = kla1->getKey();
   return compare_keys(key_1, kla2);
}

template < class T >
int KeyedListArray<T>::compare_keys(string* key, KeyedListArray<T>* kla)
{
   const char* key_1 = key->c_str();
   const char* key_2 = kla->getKey()->c_str();
   return strcmp(key_1, key_2);
}

template < class T >
string* KeyedListArray<T>::getKey()
{
   return list_key;
}
/*
template < class T >
ListArray<T>* KeyedListArray<T>::getListArray()
{
   return list;
}
*/
template < class T >
void KeyedListArray<T>::add(T* item)
{
   list->add(item);
}

template < class T >
ListArrayIterator<T>* KeyedListArray<T>::iterator()
{
   return list->iterator();
}

#endif