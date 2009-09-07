
 /* DO NOT EDIT THIS FILE - it is machine generated */
#include <jni.h>
/* Header for class DDS_WaitSet */

#ifndef _Included_DDS_WaitSet
#define _Included_DDS_WaitSet
#ifdef __cplusplus
extern "C" {
#endif
/*
 * Class:     DDS_WaitSet
 * Method:    jniWaitSetAlloc
 * Signature: ()Z
 */
JNIEXPORT jboolean JNICALL Java_DDS_WaitSet_jniWaitSetAlloc
  (JNIEnv *, jobject);

/*
 * Class:     DDS_WaitSet
 * Method:    jniWaitSetFree
 * Signature: ()V
 */
JNIEXPORT void JNICALL Java_DDS_WaitSet_jniWaitSetFree
  (JNIEnv *, jobject);

/*
 * Class:     DDS_WaitSet
 * Method:    jniWait
 * Signature: (LDDS/ConditionSeqHolder;LDDS/Duration_t;)I
 */
JNIEXPORT jint JNICALL Java_DDS_WaitSet_jniWait
  (JNIEnv *, jobject, jobject, jobject);

/*
 * Class:     DDS_WaitSet
 * Method:    jniAttachCondition
 * Signature: (LDDS/Condition;)I
 */
JNIEXPORT jint JNICALL Java_DDS_WaitSet_jniAttachCondition
  (JNIEnv *, jobject, jobject);

/*
 * Class:     DDS_WaitSet
 * Method:    jniDetachCondition
 * Signature: (LDDS/Condition;)I
 */
JNIEXPORT jint JNICALL Java_DDS_WaitSet_jniDetachCondition
  (JNIEnv *, jobject, jobject);

/*
 * Class:     DDS_WaitSet
 * Method:    jniGetConditions
 * Signature: (LDDS/ConditionSeqHolder;)I
 */
JNIEXPORT jint JNICALL Java_DDS_WaitSet_jniGetConditions
  (JNIEnv *, jobject, jobject);

#ifdef __cplusplus
}
#endif
#endif
