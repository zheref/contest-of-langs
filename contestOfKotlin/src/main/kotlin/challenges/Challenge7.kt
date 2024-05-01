package org.example.challenges.challenge7

fun invert(string: String): String {
    if (string.isEmpty()) return string
    var inverted = ""
    for (i in 1..string.length) {
        inverted += string[string.length - i]
    }
    return inverted
}