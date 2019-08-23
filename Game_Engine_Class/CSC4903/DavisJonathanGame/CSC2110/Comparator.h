#if !defined (COMPARATOR_H)
#define COMPARATOR_H

template < class T, class U >
class Comparator
{
   private:

   public:
      Comparator();
      virtual ~Comparator();

      virtual int compare(T* item_1, T* item_2) = 0;
	  virtual int compare(U* key, T* item) = 0;
};

template < class T, class U >
Comparator<T,U>::Comparator()
{}

template < class T, class U >
Comparator<T,U>::~Comparator()
{}

#endif