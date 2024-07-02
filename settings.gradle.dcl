// TODO: This block is temporary, until we can publish a new version of the Gradle plugin
// that includes a testing block and other Jvm ecosytem plugin updates
pluginManagement {
    includeBuild("../now-in-android/declarative-gradle/unified-prototype/unified-plugin")
    repositories {
        google() // Needed for the Android plugin, applied by the unified plugin
        gradlePluginPortal()
    }
}

plugins {
    // TODO: Swap these lines when latest version of the plugin is published
    id("org.gradle.experimental.jvm-ecosystem")
//    id("org.gradle.experimental.jvm-ecosystem") version "0.1.2"
}

rootProject.name = "example-java-app"

include("app")
include("list")
include("utilities")

conventions {
    javaLibrary {
        javaVersion = 21

        dependencies {
            implementation("org.apache.commons:commons-text:1.11.0")
        }

        testing {
            dependencies {
                // Use JUnit Jupiter for testing.
                implementation("org.junit.jupiter:junit-jupiter:5.10.2")

                runtimeOnly("org.junit.platform:junit-platform-launcher")
            }
        }
    }

    javaApplication {
        javaVersion = 21

        dependencies {
            implementation("org.apache.commons:commons-text:1.11.0")
        }

        testing {
            dependencies {
                // Use JUnit Jupiter for testing.
                implementation("org.junit.jupiter:junit-jupiter:5.10.2")

                runtimeOnly("org.junit.platform:junit-platform-launcher")
            }
        }
    }
}
