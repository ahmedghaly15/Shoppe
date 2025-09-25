# Keep Initializers (your existing rules)
-keepnames class * extends androidx.startup.Initializer
-keep class * extends androidx.startup.Initializer {
    <init>();
}

# --- Networking libraries ---

# OkHttp
-keep class okhttp3.** { *; }
-dontwarn okhttp3.**

# Okio
-keep class okio.** { *; }
-dontwarn okio.**

# Retrofit (if you use it)
-keep class retrofit2.** { *; }
-dontwarn retrofit2.**

# Gson (if you use it for JSON)
-keep class com.google.gson.** { *; }
-dontwarn com.google.gson.**

# Keep annotations
-keepattributes Signature
-keepattributes *Annotation*

# Ensure model classes are not stripped (if using json_serializable / Gson / Moshi)
-keep class your.package.models.** { *; }