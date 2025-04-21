plugins {
    alias(libs.plugins.kotlin.multiplatform)
    alias(libs.plugins.kmmbridge)
    alias(libs.plugins.android.library)
    `maven-publish`
}

kotlin {
    androidTarget {
        publishAllLibraryVariants()
    }

    listOf(
        iosX64(),
        iosArm64(),
        iosSimulatorArm64()
    ).forEach {
        it.binaries.framework {
            isStatic = true
        }
    }
}

android {
    compileSdk = libs.versions.compileSdk.get().toInt()

    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_21
        targetCompatibility = JavaVersion.VERSION_21
    }

    defaultConfig {
        minSdk = libs.versions.minSdk.get().toInt()
    }
    namespace = "tech.annexflow.test.core"
}

kmmbridge {
    gitHubReleaseArtifacts()
    spm(
        useCustomPackageFile = true,
        swiftToolVersion = "5.8",
    ) {
        iOS { v("13") }
    }
}