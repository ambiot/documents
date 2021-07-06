Wiring_OS_API
===================
**Wiring OS API**

| **Description**
| A wrapper to CMSIS (Cortex Microcontroller Software Interface
  Standard) OS API which serve as a RTOS to create multi-threaded
  application with real-time behaviour.

| **Syntax**
| NA

**Members**

+--------------------------------+------------------------------------+
| **Public Methods**             |                                    |
+================================+====================================+
| os_thread_create_arduino       | Create a thread and add it to      |
|                                | Active Threads and set it to state |
|                                | READY                              |
+--------------------------------+------------------------------------+
| os_thread_get_id_arduino       | Return the thread ID of the        |
|                                | current running thread             |
+--------------------------------+------------------------------------+
| os_thread_terminate_arduino    | Terminate execution of a thread    |
|                                | and remove it from Active Threads  |
+--------------------------------+------------------------------------+
| os_thread_yield_arduino        | Pass control to next thread that   |
|                                | is in state READY                  |
+--------------------------------+------------------------------------+
| os_thread_set_priority_arduino | Change priority of an active       |
|                                | thread                             |
+--------------------------------+------------------------------------+
| os_thread_get_priority_arduino | Get current priority of an active  |
|                                | thread                             |
+--------------------------------+------------------------------------+
| os_signal_set_arduino          | Set the specified Signal Flags of  |
|                                | an active thread                   |
+--------------------------------+------------------------------------+
| os_signal_clear_arduino        | Clear the specified Signal Flags   |
|                                | of an active thread                |
+--------------------------------+------------------------------------+
| os_signal_wait_arduino         | Wait for one or more Signal Flags  |
|                                | to become signaled for the current |
|                                | RUNNING thread                     |
+--------------------------------+------------------------------------+
| os_timer_create_arduino        | Create a timer                     |
+--------------------------------+------------------------------------+
| os_timer_start_arduino         | Start or restart a timer           |
+--------------------------------+------------------------------------+
| os_timer_stop_arduino          | Stop the timer                     |
+--------------------------------+------------------------------------+
| os_timer_delete_arduino        | Delete a timer that was created by |
|                                | os_timer_create                    |
+--------------------------------+------------------------------------+
| os_semaphore_create_arduino    | Create and Initialize a Semaphore  |
|                                | object used for managing resources |
+--------------------------------+------------------------------------+
| os_semaphore_wait_arduino      | Wait until a Semaphore token       |
|                                | becomes available                  |
+--------------------------------+------------------------------------+
| os_semaphore_release_arduino   | Release a Semaphore token          |
+--------------------------------+------------------------------------+
| os_semaphore_delete_arduino    | Delete a Semaphore that was        |
|                                | created by os_semaphore_create     |
+--------------------------------+------------------------------------+
| os_get_free_heap_size_arduino  | Return the available heap memory   |
|                                | space when called                  |
+--------------------------------+------------------------------------+

**os_thread_create_arduino**

| **Description**
| Create a thread and add it to Active Threads and set it to state
  READY.

| **Syntax**
| uint32_t os_thread_create_arduino (void (\*task)(const void
  \*argument), void \*argument, int priority, uint32_t stack_size);

| **Parameters**
| task: task Function pointer which is the thread body. It should not
  run into the end of function unless os_thread_terminate is invoked
| argument: the data pointer which brings to task
| priority: The underlying os is FreeRTOS. It executes tasks with
  highest priority which are not in idle state.
| stack_size: The stack_size is used as memory heap only for this task.

| **Returns**
| The thread id which is used in thread operation and signalling.

| **Example Code**
| NA

| **Notes and Warnings**
| NA
|  

**os_thread_get_id_arduino**

| **Description**
| Return the thread ID of the current running thread

| **Syntax**
| uint32_t os_thread_get_id_arduino (void);

| **Parameters**
| The function requires no input parameter.

| **Returns**
| Current thread id which calls os_thread_get_id.

| **Example Code**
| NA

| **Notes and Warnings**
| NA
|  

**os_thread_terminate_arduino**

| **Description**
| Terminate execution of a thread and remove it from Active Threads

| **Syntax**
| uint32_t os_thread_terminate_arduino (uint32_t thread_id);

| **Parameters**
| thread_id: Terminate the thread with specific thread_id

| **Returns**
| os_status code

| **Example Code**
| NA

| **Notes and Warnings**
| Thread should not ended without terminate first.
|  

**os_thread_yield_arduino**

| **Description**
| Pass control to next thread that is in state READY

| **Syntax**
| uint32_t os_thread_yield_arduino (void);

| **Parameters**
| The function requires no input parameter.

| **Returns**
| os_status code

| **Example Code**
| NA

| **Notes and Warnings**
| By default, the minimal execution unit is 1 millisecond. In a scenario
  that if a thread with smaller want to handout execution right to a
  thread with higher priority immediately without waiting for the ending
  of current 1 millisecond, then invoke os_thread_yield can transfer
  exection right to OS’s idle task and check which is the next execution
  thread.
|  

**os_thread_set_priority_arduino**

| **Description**
| Change priority of an active thread

| **Syntax**
| uint32_t os_thread_set_priority_arduino (uint32_t thread_id, int
  priority);

| **Parameters**
| thread_id: The target thread with the thread id to be changed
| priority: The updated priority

| **Returns**
| The function returns nothing.

| **Example Code**
| NA

| **Notes and Warnings**
| NA
|  

**os_thread_get_priority_arduino**

| **Description**
| Get current priority of an active thread

| **Syntax**
| uint32_t os_thread_get_priority_arduino (uint32_t thread_id);

| **Parameters**
| thread_id: The target thread with the thread id to be searched

| **Returns**
| os_priority

| **Example Code**
| NA

| **Notes and Warnings**
| NA
|  

**os_signal_set_arduino**

| **Description**
| Set the specified Signal Flags of an active thread

| **Syntax**
| int32_t os_signal_set_arduino (uint32_t thread_id, int32_t signals);

| **Parameters**
| thread_id: Send signal to a thread with the thread id
| signals: the signals to be send

| **Returns**
| os_status code

| **Example Code**
| NA

| **Notes and Warnings**
| NA
|  

**os_signal_clear_arduino**

| **Description**
| Clear the specified Signal Flags of an active thread

| **Syntax**
| int32_t os_signal_clear_arduino (uint32_t thread_id, int32_t signals);

| **Parameters**
| thread_id: Clear signal to a thread with the thread id
| signals: The signals to be clear

| **Returns**
| os_status code

| **Example Code**
| NA

| **Notes and Warnings**
| NA
|  

**os_signal_wait_arduino**

| **Description**
| Wait for one or more Signal Flags to become signaled for the current
  RUNNING thread

| **Syntax**
| os_event_t os_signal_wait_arduino (int32_t signals, uint32_t
  millisec);

| **Parameters**
| signals: the signals to be wait
| millisec: the timeout value if no signal comes in. Fill in 0xFFFFFFFF
  for infinite wait

| **Returns**
| os_status code

| **Example Code**
| NA

| **Notes and Warnings**
| NA
|  

**os_timer_create_arduino**

| **Description**
| Create a timer

| **Syntax**
| uint32_t os_timer_create_arduino (void (\*callback)(void const
  \*argument), uint8_t isPeriodic, void \*argument);

| **Parameters**
| callback: The function to be invoke when timer timeout
| isPeriodic: OS_TIMER_ONCE or OS_TIMER_PERIODIC
| argument: The argument that is bring into callback function

| **Returns**
| timer id

| **Example Code**
| NA

| **Notes and Warnings**
| NA
|  

**os_timer_start_arduino**

| **Description**
| Start or restart a timer

| **Syntax**
| uint32_t os_timer_start_arduino (uint32_t timer_id, uint32_t
  millisec);

| **Parameters**
| timer_id: The timer id obtained from by os_timer_create
| millisec: The delays after timer starts

| **Returns**
| os_status code

| **Example Code**
| NA

| **Notes and Warnings**
| NA
|  

**os_timer_stop_arduino**

| **Description**
| Stop the timer

| **Syntax**
| uint32_t os_timer_stop_arduino (uint32_t timer_id);

| **Parameters**
| timer_id: The timer id obtained from by os_timer_create

| **Returns**
| os_status code

| **Example Code**
| NA

| **Notes and Warnings**
| NA
|  

**os_timer_delete_arduino**

| **Description**
| Delete a timer that was created by os_timer_create

| **Syntax**
| uint32_t os_timer_delete_arduino (uint32_t timer_id);

| **Parameters**
| timer_id: The timer id obtained from by os_timer_create

| **Returns**
| os_status code

| **Example Code**
| NA

| **Notes and Warnings**
| NA
|  

**os_semaphore_create_arduino**

| **Description**
| Create and Initialize a Semaphore object used for managing resources

| **Syntax**
| uint32_t os_semaphore_create_arduino (int32_t count);

| **Parameters**
| count: The number of available resources

| **Returns**
| semaphore ID

| **Example Code**
| NA

| **Notes and Warnings**
| NA
|  

**os_semaphore_wait_arduino**

| **Description**
| Wait until a Semaphore token becomes available

| **Syntax**
| int32_t os_semaphore_wait_arduino (uint32_t semaphore_id, uint32_t
  millisec);

| **Parameters**
| semaphore_id: semaphore id obtained from os_semaphore_create
| millisec: timeout value

| **Returns**
| os_status code

| **Example Code**
| NA

| **Notes and Warnings**
| NA
|  

**os_semaphore_release_arduino**

| **Description**
| Release a Semaphore token

| **Syntax**
| uint32_t os_semaphore_release_arduino (uint32_t semaphore_id);

| **Parameters**
| semaphore_id: semaphore id obtained from os_semaphore_create

| **Returns**
| os_status code

| **Example Code**
| NA

| **Notes and Warnings**
| NA
|  

**os_semaphore_delete_arduino**

| **Description**
| Delete a Semaphore that was created by os_semaphore_create

| **Syntax**
| uint32_t os_semaphore_delete_arduino (uint32_t semaphore_id);

| **Parameters**
| semaphore_id: semaphore id obtained from os_semaphore_create

| **Returns**
| os_status code

| **Example Code**
| NA

| **Notes and Warnings**
| NA
|  

**os_get_free_heap_size_arduino**

| **Description**
| Return the available heap memory space when called

| **Syntax**
| size_t os_get_free_heap_size_arduino(void);

| **Parameters**
| The function requires no input parameter.

| **Returns**
| current free heap size

| **Example Code**
| Example: MemInfo

| **Notes and Warnings**
| NA
