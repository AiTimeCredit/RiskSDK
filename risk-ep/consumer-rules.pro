-dontwarn sun.misc.**
-keep class sun.misc.Unsafe {*;}
-keep class com.google.gson.stream.** {*;}
-keep class * implements java.lang.reflect.Type

# Prevent proguard from stripping interface information from TypeAdapter, TypeAdapterFactory,
# JsonSerializer, JsonDeserializer instances (so they can be used in @JsonAdapter)
-keep class * extends com.google.gson.TypeAdapter
-keep class * implements com.google.gson.TypeAdapterFactory
-keep class * implements com.google.gson.JsonSerializer
-keep class * implements com.google.gson.JsonDeserializer
# Prevent R8 from leaving Data object members always null
-keepclassmembers,allowobfuscation class * {
    @com.google.gson.annotations.SerializedName <fields>;
}

-keep class com.yinda.datasyc.bean.** {*;}
-keep class com.yinda.datasyc.http.SDKManage {
    public <methods>;
}
