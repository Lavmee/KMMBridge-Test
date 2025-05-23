plugins {
    alias(libs.plugins.kotlin.multiplatform) apply false
    alias(libs.plugins.kotlin.android) apply false
    alias(libs.plugins.kmmbridge) apply false
    alias(libs.plugins.android.library) apply false
}

subprojects {
    val GROUP: String by project
    val LIBRARY_VERSION: String by project

    group = GROUP
    version = LIBRARY_VERSION
}

tasks.register<Delete>("clean") {
    delete(rootProject.layout.buildDirectory)
}
