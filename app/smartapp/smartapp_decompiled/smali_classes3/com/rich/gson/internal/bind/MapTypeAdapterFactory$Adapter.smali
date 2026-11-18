.class final Lcom/rich/gson/internal/bind/MapTypeAdapterFactory$Adapter;
.super Lcom/rich/gson/TypeAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rich/gson/internal/bind/MapTypeAdapterFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/rich/gson/TypeAdapter<",
        "Ljava/util/Map<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private final constructor:Lcom/rich/gson/internal/ObjectConstructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/rich/gson/internal/ObjectConstructor<",
            "+",
            "Ljava/util/Map<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field private final keyTypeAdapter:Lcom/rich/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/rich/gson/TypeAdapter<",
            "TK;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/rich/gson/internal/bind/MapTypeAdapterFactory;

.field private final valueTypeAdapter:Lcom/rich/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/rich/gson/TypeAdapter<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/rich/gson/internal/bind/MapTypeAdapterFactory;Lcom/rich/gson/Gson;Ljava/lang/reflect/Type;Lcom/rich/gson/TypeAdapter;Ljava/lang/reflect/Type;Lcom/rich/gson/TypeAdapter;Lcom/rich/gson/internal/ObjectConstructor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/rich/gson/Gson;",
            "Ljava/lang/reflect/Type;",
            "Lcom/rich/gson/TypeAdapter<",
            "TK;>;",
            "Ljava/lang/reflect/Type;",
            "Lcom/rich/gson/TypeAdapter<",
            "TV;>;",
            "Lcom/rich/gson/internal/ObjectConstructor<",
            "+",
            "Ljava/util/Map<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/rich/gson/internal/bind/MapTypeAdapterFactory$Adapter;->this$0:Lcom/rich/gson/internal/bind/MapTypeAdapterFactory;

    invoke-direct {p0}, Lcom/rich/gson/TypeAdapter;-><init>()V

    new-instance p1, Lcom/rich/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;

    invoke-direct {p1, p2, p4, p3}, Lcom/rich/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;-><init>(Lcom/rich/gson/Gson;Lcom/rich/gson/TypeAdapter;Ljava/lang/reflect/Type;)V

    iput-object p1, p0, Lcom/rich/gson/internal/bind/MapTypeAdapterFactory$Adapter;->keyTypeAdapter:Lcom/rich/gson/TypeAdapter;

    new-instance p1, Lcom/rich/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;

    invoke-direct {p1, p2, p6, p5}, Lcom/rich/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;-><init>(Lcom/rich/gson/Gson;Lcom/rich/gson/TypeAdapter;Ljava/lang/reflect/Type;)V

    iput-object p1, p0, Lcom/rich/gson/internal/bind/MapTypeAdapterFactory$Adapter;->valueTypeAdapter:Lcom/rich/gson/TypeAdapter;

    iput-object p7, p0, Lcom/rich/gson/internal/bind/MapTypeAdapterFactory$Adapter;->constructor:Lcom/rich/gson/internal/ObjectConstructor;

    return-void
.end method

.method private keyToString(Lcom/rich/gson/JsonElement;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Lcom/rich/gson/JsonElement;->isJsonPrimitive()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/rich/gson/JsonElement;->getAsJsonPrimitive()Lcom/rich/gson/JsonPrimitive;

    move-result-object p1

    invoke-virtual {p1}, Lcom/rich/gson/JsonPrimitive;->isNumber()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/rich/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lcom/rich/gson/JsonPrimitive;->isBoolean()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/rich/gson/JsonPrimitive;->getAsBoolean()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {p1}, Lcom/rich/gson/JsonPrimitive;->isString()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/rich/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    invoke-virtual {p1}, Lcom/rich/gson/JsonElement;->isJsonNull()Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "null"

    return-object p1

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method


# virtual methods
.method public bridge synthetic read(Lcom/rich/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/rich/gson/internal/bind/MapTypeAdapterFactory$Adapter;->read(Lcom/rich/gson/stream/JsonReader;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public read(Lcom/rich/gson/stream/JsonReader;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/rich/gson/stream/JsonReader;",
            ")",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/rich/gson/stream/JsonReader;->peek()Lcom/rich/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/rich/gson/stream/JsonToken;->NULL:Lcom/rich/gson/stream/JsonToken;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/rich/gson/stream/JsonReader;->nextNull()V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v1, p0, Lcom/rich/gson/internal/bind/MapTypeAdapterFactory$Adapter;->constructor:Lcom/rich/gson/internal/ObjectConstructor;

    invoke-interface {v1}, Lcom/rich/gson/internal/ObjectConstructor;->construct()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    sget-object v2, Lcom/rich/gson/stream/JsonToken;->BEGIN_ARRAY:Lcom/rich/gson/stream/JsonToken;

    const-string v3, "duplicate key: "

    if-ne v0, v2, :cond_3

    invoke-virtual {p1}, Lcom/rich/gson/stream/JsonReader;->beginArray()V

    :goto_0
    invoke-virtual {p1}, Lcom/rich/gson/stream/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/rich/gson/stream/JsonReader;->beginArray()V

    iget-object v0, p0, Lcom/rich/gson/internal/bind/MapTypeAdapterFactory$Adapter;->keyTypeAdapter:Lcom/rich/gson/TypeAdapter;

    invoke-virtual {v0, p1}, Lcom/rich/gson/TypeAdapter;->read(Lcom/rich/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lcom/rich/gson/internal/bind/MapTypeAdapterFactory$Adapter;->valueTypeAdapter:Lcom/rich/gson/TypeAdapter;

    invoke-virtual {v2, p1}, Lcom/rich/gson/TypeAdapter;->read(Lcom/rich/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Lcom/rich/gson/stream/JsonReader;->endArray()V

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/rich/gson/JsonSyntaxException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/rich/gson/JsonSyntaxException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-virtual {p1}, Lcom/rich/gson/stream/JsonReader;->endArray()V

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Lcom/rich/gson/stream/JsonReader;->beginObject()V

    :goto_1
    invoke-virtual {p1}, Lcom/rich/gson/stream/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/rich/gson/internal/JsonReaderInternalAccess;->INSTANCE:Lcom/rich/gson/internal/JsonReaderInternalAccess;

    invoke-virtual {v0, p1}, Lcom/rich/gson/internal/JsonReaderInternalAccess;->promoteNameToValue(Lcom/rich/gson/stream/JsonReader;)V

    iget-object v0, p0, Lcom/rich/gson/internal/bind/MapTypeAdapterFactory$Adapter;->keyTypeAdapter:Lcom/rich/gson/TypeAdapter;

    invoke-virtual {v0, p1}, Lcom/rich/gson/TypeAdapter;->read(Lcom/rich/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lcom/rich/gson/internal/bind/MapTypeAdapterFactory$Adapter;->valueTypeAdapter:Lcom/rich/gson/TypeAdapter;

    invoke-virtual {v2, p1}, Lcom/rich/gson/TypeAdapter;->read(Lcom/rich/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_4

    goto :goto_1

    :cond_4
    new-instance p1, Lcom/rich/gson/JsonSyntaxException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/rich/gson/JsonSyntaxException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    invoke-virtual {p1}, Lcom/rich/gson/stream/JsonReader;->endObject()V

    :goto_2
    return-object v1
.end method

.method public bridge synthetic write(Lcom/rich/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/util/Map;

    invoke-virtual {p0, p1, p2}, Lcom/rich/gson/internal/bind/MapTypeAdapterFactory$Adapter;->write(Lcom/rich/gson/stream/JsonWriter;Ljava/util/Map;)V

    return-void
.end method

.method public write(Lcom/rich/gson/stream/JsonWriter;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/rich/gson/stream/JsonWriter;",
            "Ljava/util/Map<",
            "TK;TV;>;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/rich/gson/stream/JsonWriter;->nullValue()Lcom/rich/gson/stream/JsonWriter;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/rich/gson/internal/bind/MapTypeAdapterFactory$Adapter;->this$0:Lcom/rich/gson/internal/bind/MapTypeAdapterFactory;

    iget-boolean v0, v0, Lcom/rich/gson/internal/bind/MapTypeAdapterFactory;->complexMapKeySerialization:Z

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/rich/gson/stream/JsonWriter;->beginObject()Lcom/rich/gson/stream/JsonWriter;

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/rich/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/rich/gson/stream/JsonWriter;

    iget-object v1, p0, Lcom/rich/gson/internal/bind/MapTypeAdapterFactory$Adapter;->valueTypeAdapter:Lcom/rich/gson/TypeAdapter;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Lcom/rich/gson/TypeAdapter;->write(Lcom/rich/gson/stream/JsonWriter;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/rich/gson/stream/JsonWriter;->endObject()Lcom/rich/gson/stream/JsonWriter;

    return-void

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    iget-object v5, p0, Lcom/rich/gson/internal/bind/MapTypeAdapterFactory$Adapter;->keyTypeAdapter:Lcom/rich/gson/TypeAdapter;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/rich/gson/TypeAdapter;->toJsonTree(Ljava/lang/Object;)Lcom/rich/gson/JsonElement;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5}, Lcom/rich/gson/JsonElement;->isJsonArray()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v5}, Lcom/rich/gson/JsonElement;->isJsonObject()Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v4, 0x1

    :goto_3
    or-int/2addr v3, v4

    goto :goto_1

    :cond_5
    if-eqz v3, :cond_7

    invoke-virtual {p1}, Lcom/rich/gson/stream/JsonWriter;->beginArray()Lcom/rich/gson/stream/JsonWriter;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    :goto_4
    if-ge v2, p2, :cond_6

    invoke-virtual {p1}, Lcom/rich/gson/stream/JsonWriter;->beginArray()Lcom/rich/gson/stream/JsonWriter;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/rich/gson/JsonElement;

    invoke-static {v3, p1}, Lcom/rich/gson/internal/Streams;->write(Lcom/rich/gson/JsonElement;Lcom/rich/gson/stream/JsonWriter;)V

    iget-object v3, p0, Lcom/rich/gson/internal/bind/MapTypeAdapterFactory$Adapter;->valueTypeAdapter:Lcom/rich/gson/TypeAdapter;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Lcom/rich/gson/TypeAdapter;->write(Lcom/rich/gson/stream/JsonWriter;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/rich/gson/stream/JsonWriter;->endArray()Lcom/rich/gson/stream/JsonWriter;

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_6
    invoke-virtual {p1}, Lcom/rich/gson/stream/JsonWriter;->endArray()Lcom/rich/gson/stream/JsonWriter;

    goto :goto_6

    :cond_7
    invoke-virtual {p1}, Lcom/rich/gson/stream/JsonWriter;->beginObject()Lcom/rich/gson/stream/JsonWriter;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    :goto_5
    if-ge v2, p2, :cond_8

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/rich/gson/JsonElement;

    invoke-direct {p0, v3}, Lcom/rich/gson/internal/bind/MapTypeAdapterFactory$Adapter;->keyToString(Lcom/rich/gson/JsonElement;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/rich/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/rich/gson/stream/JsonWriter;

    iget-object v3, p0, Lcom/rich/gson/internal/bind/MapTypeAdapterFactory$Adapter;->valueTypeAdapter:Lcom/rich/gson/TypeAdapter;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Lcom/rich/gson/TypeAdapter;->write(Lcom/rich/gson/stream/JsonWriter;Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_8
    invoke-virtual {p1}, Lcom/rich/gson/stream/JsonWriter;->endObject()Lcom/rich/gson/stream/JsonWriter;

    :goto_6
    return-void
.end method
