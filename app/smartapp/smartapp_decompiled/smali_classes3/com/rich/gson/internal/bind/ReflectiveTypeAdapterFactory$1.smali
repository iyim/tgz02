.class Lcom/rich/gson/internal/bind/ReflectiveTypeAdapterFactory$1;
.super Lcom/rich/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rich/gson/internal/bind/ReflectiveTypeAdapterFactory;->createBoundField(Lcom/rich/gson/Gson;Ljava/lang/reflect/Field;Ljava/lang/String;Lcom/rich/gson/reflect/TypeToken;ZZ)Lcom/rich/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rich/gson/internal/bind/ReflectiveTypeAdapterFactory;

.field final synthetic val$context:Lcom/rich/gson/Gson;

.field final synthetic val$field:Ljava/lang/reflect/Field;

.field final synthetic val$fieldType:Lcom/rich/gson/reflect/TypeToken;

.field final synthetic val$isPrimitive:Z

.field final synthetic val$jsonAdapterPresent:Z

.field final synthetic val$typeAdapter:Lcom/rich/gson/TypeAdapter;


# direct methods
.method constructor <init>(Lcom/rich/gson/internal/bind/ReflectiveTypeAdapterFactory;Ljava/lang/String;ZZLjava/lang/reflect/Field;ZLcom/rich/gson/TypeAdapter;Lcom/rich/gson/Gson;Lcom/rich/gson/reflect/TypeToken;Z)V
    .locals 0

    iput-object p1, p0, Lcom/rich/gson/internal/bind/ReflectiveTypeAdapterFactory$1;->this$0:Lcom/rich/gson/internal/bind/ReflectiveTypeAdapterFactory;

    iput-object p5, p0, Lcom/rich/gson/internal/bind/ReflectiveTypeAdapterFactory$1;->val$field:Ljava/lang/reflect/Field;

    iput-boolean p6, p0, Lcom/rich/gson/internal/bind/ReflectiveTypeAdapterFactory$1;->val$jsonAdapterPresent:Z

    iput-object p7, p0, Lcom/rich/gson/internal/bind/ReflectiveTypeAdapterFactory$1;->val$typeAdapter:Lcom/rich/gson/TypeAdapter;

    iput-object p8, p0, Lcom/rich/gson/internal/bind/ReflectiveTypeAdapterFactory$1;->val$context:Lcom/rich/gson/Gson;

    iput-object p9, p0, Lcom/rich/gson/internal/bind/ReflectiveTypeAdapterFactory$1;->val$fieldType:Lcom/rich/gson/reflect/TypeToken;

    iput-boolean p10, p0, Lcom/rich/gson/internal/bind/ReflectiveTypeAdapterFactory$1;->val$isPrimitive:Z

    invoke-direct {p0, p2, p3, p4}, Lcom/rich/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;-><init>(Ljava/lang/String;ZZ)V

    return-void
.end method


# virtual methods
.method read(Lcom/rich/gson/stream/JsonReader;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/rich/gson/internal/bind/ReflectiveTypeAdapterFactory$1;->val$typeAdapter:Lcom/rich/gson/TypeAdapter;

    invoke-virtual {v0, p1}, Lcom/rich/gson/TypeAdapter;->read(Lcom/rich/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/rich/gson/internal/bind/ReflectiveTypeAdapterFactory$1;->val$isPrimitive:Z

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/rich/gson/internal/bind/ReflectiveTypeAdapterFactory$1;->val$field:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p2, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method write(Lcom/rich/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/rich/gson/internal/bind/ReflectiveTypeAdapterFactory$1;->val$field:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    iget-boolean v0, p0, Lcom/rich/gson/internal/bind/ReflectiveTypeAdapterFactory$1;->val$jsonAdapterPresent:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rich/gson/internal/bind/ReflectiveTypeAdapterFactory$1;->val$typeAdapter:Lcom/rich/gson/TypeAdapter;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/rich/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;

    iget-object v1, p0, Lcom/rich/gson/internal/bind/ReflectiveTypeAdapterFactory$1;->val$context:Lcom/rich/gson/Gson;

    iget-object v2, p0, Lcom/rich/gson/internal/bind/ReflectiveTypeAdapterFactory$1;->val$typeAdapter:Lcom/rich/gson/TypeAdapter;

    iget-object v3, p0, Lcom/rich/gson/internal/bind/ReflectiveTypeAdapterFactory$1;->val$fieldType:Lcom/rich/gson/reflect/TypeToken;

    invoke-virtual {v3}, Lcom/rich/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/rich/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;-><init>(Lcom/rich/gson/Gson;Lcom/rich/gson/TypeAdapter;Ljava/lang/reflect/Type;)V

    :goto_0
    invoke-virtual {v0, p1, p2}, Lcom/rich/gson/TypeAdapter;->write(Lcom/rich/gson/stream/JsonWriter;Ljava/lang/Object;)V

    return-void
.end method

.method public writeField(Ljava/lang/Object;)Z
    .locals 2

    iget-boolean v0, p0, Lcom/rich/gson/internal/bind/ReflectiveTypeAdapterFactory$1;->serialized:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/rich/gson/internal/bind/ReflectiveTypeAdapterFactory$1;->val$field:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method
