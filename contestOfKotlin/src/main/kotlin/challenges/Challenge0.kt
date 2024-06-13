package org.example.challenges.challenge0

import kotlinx.coroutines.*
import kotlinx.coroutines.flow.Flow
import kotlinx.coroutines.flow.cancellable
import kotlinx.coroutines.flow.flow

fun Int.secondsCounter(): Flow<Int> {
    val upTo = this
    return flow {
        for (i in 1..upTo) {
            emit(i)
            delay(1000)
        }
        yield()
    }
}

suspend fun Int.secondsCount() = this.secondsCounter()

suspend fun performSecondsCoroutine(count: Int): Job = coroutineScope {
    return@coroutineScope launch {
        count.secondsCount()
            .cancellable()
            .collect { second ->
                println("Reactive Timer Ticked: $second")
            }
    }
}

