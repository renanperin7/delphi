import net.sf.jasperreports.engine.JasperCompileManager
import org.jetbrains.kotlin.gradle.tasks.KotlinCompile
import org.jetbrains.kotlin.utils.fileUtils.withReplacedExtensionOrNull
import org.springframework.boot.gradle.tasks.run.BootRun

plugins {
    id("org.springframework.boot") version "2.6.3"
    id("io.spring.dependency-management") version "1.0.11.RELEASE"
    war
    kotlin("jvm") version "1.6.10"
    kotlin("plugin.spring") version "1.6.10"
    kotlin("plugin.jpa") version "1.6.10"
}

group = "com.qualityautomacao"
version = "0.0.1-SNAPSHOT"
java.sourceCompatibility = JavaVersion.VERSION_11

repositories {
    mavenCentral()
    maven("https://jaspersoft.jfrog.io/jaspersoft/third-party-ce-artifacts/")
}

buildscript {
    repositories {
        mavenCentral()
        maven("https://jaspersoft.jfrog.io/jaspersoft/third-party-ce-artifacts/")
    }

    dependencies {
        classpath("net.sf.jasperreports:jasperreports:6.18.1")
        classpath("net.sf.jasperreports:jasperreports-fonts:6.18.1")
    }
}

dependencies {
    implementation("org.springframework.boot:spring-boot-starter-web:2.6.3")
    implementation("com.fasterxml.jackson.module:jackson-module-kotlin:2.13.1")
    providedRuntime("org.springframework.boot:spring-boot-starter-tomcat:2.6.3")

    implementation("org.springframework.boot:spring-boot-starter-data-jpa:2.6.3")
    implementation("org.postgresql:postgresql:42.3.1")

    implementation("org.jetbrains.kotlin:kotlin-reflect:1.6.0")
    implementation("org.jetbrains.kotlin:kotlin-stdlib-jdk8:1.6.0")

    implementation("net.sf.jasperreports:jasperreports:6.18.1")
    implementation("net.sf.jasperreports:jasperreports-fonts:6.18.1")

    testImplementation("org.springframework.boot:spring-boot-starter-test:2.6.3")
}

tasks.withType<KotlinCompile> {
    kotlinOptions {
        freeCompilerArgs = listOf("-Xjsr305=strict")
        jvmTarget = "11"
    }
}

tasks.withType<Test> {
    useJUnitPlatform()
}

tasks.create("compileJasper") {
    doLast {
        fileTree("build/resources/main/relatorio/").filter { it.isFile && it.extension.endsWith("jrxml") }.forEach {
            val jasper = it.withReplacedExtensionOrNull("jrxml", "jasper") ?: return@forEach
            jasper.delete()
            JasperCompileManager.compileReportToFile(it.absolutePath, jasper.absolutePath)
        }
    }
}

tasks.withType<BootRun> {
    dependsOn("compileJasper")
}
