#if !defined GAME_HEADER
#define GAME_HEADER

	typedef unsigned int uint32;

	#if !defined ASSERT_LOG
		#define ASSERT_LOG(expr, msg) if (!expr) \
									{\
									game_manager->logProblem(__FILE__, __LINE__); \
									}
	#endif

	#if !defined ASSERT_CRITICAL
		//#define ASSERT_CRITICAL(expr) if (!expr) {std::cout << e.what() << std::endl; exit(0);}
		#define ASSERT_CRITICAL(expr, msg) if (!expr) \
														{ \
															game_manager->logProblem(msg, __FILE__, __LINE__); \
															exit(0); \
														}
	#endif

#endif