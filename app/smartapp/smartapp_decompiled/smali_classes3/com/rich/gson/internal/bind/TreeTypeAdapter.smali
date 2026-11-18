.class public final Lcom/rich/gson/internal/bind/TreeTypeAdapter;
.super Lcom/rich/gson/TypeAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rich/gson/internal/bind/TreeTypeAdapter$GsonContextImpl;,
        Lcom/rich/gson/internal/bind/TreeTypeAdapter$SingleTypeFactory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/rich/gson/TypeAdapter<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final context:Lcom/rich/gson/internal/bind/TreeTypeAdapter$GsonContextImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/rich/gson/internal/bind/TreeTypeAdapter<",
            "TT;>.GsonContextImpl;"
        }
    .end annotation
.end field

.field private delegate:Lcom/rich/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/rich/gson/TypeAdapter<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final deserializer:Lcom/rich/gson/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/rich/gson/JsonDeserializer<",
            "TT;>;"
        }
    .end annotation
.end field

.field final gson:Lcom/rich/gson/Gson;

.field private final serializer:Lcom/rich/gson/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/rich/gson/JsonSerializer<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final skipPast:Lcom/rich/gson/TypeAdapterFactory;

.field private final typeToken:Lcom/rich/gson/reflect/TypeToken;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/rich/gson/reflect/TypeToken<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/rich/gson/JsonSerializer;Lcom/rich/gson/JsonDeserializer;Lcom/rich/gson/Gson;Lcom/rich/gson/reflect/TypeToken;Lcom/rich/gson/TypeAdapterFactory;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/rich/gson/JsonSerializer<",
            "TT;>;",
            "Lcom/rich/gson/JsonDeserializer<",
            "TT;>;",
            "Lcom/rich/gson/Gson;",
            "Lcom/rich/gson/reflect/TypeToken<",
            "TT;>;",
            "Lcom/rich/gson/TypeAdapterFactory;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/rich/gson/TypeAdapter;-><init>()V

    new-instance v0, Lcom/rich/gson/internal/bind/TreeTypeAdapter$GsonContextImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/rich/gson/internal/bind/TreeTypeAdapter$GsonContextImpl;-><init>(Lcom/rich/gson/internal/bind/TreeTypeAdapter;Lcom/rich/gson/internal/bind/TreeTypeAdapter$1;)V

    iput-object v0, p0, Lcom/rich/gson/internal/bind/TreeTypeAdapter;->context:Lcom/rich/gson/internal/bind/TreeTypeAdapter$GsonContextImpl;

    iput-object p1, p0, Lcom/rich/gson/internal/bind/TreeTypeAdapter;->serializer:Lcom/rich/gson/JsonSerializer;

    iput-object p2, p0, Lcom/rich/gson/internal/bind/TreeTypeAdapter;->deserializer:Lcom/rich/gson/JsonDeserializer;

    iput-object p3, p0, Lcom/rich/gson/internal/bind/TreeTypeAdapter;->gson:Lcom/rich/gson/Gson;

    iput-object p4, p0, Lcom/rich/gson/internal/bind/TreeTypeAdapter;->typeToken:Lcom/rich/gson/reflect/TypeToken;

    iput-object p5, p0, Lcom/rich/gson/internal/bind/TreeTypeAdapter;->skipPast:Lcom/rich/gson/TypeAdapterFactory;

    return-void
.end method

.method private delegate()Lcom/rich/gson/TypeAdapter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/rich/gson/TypeAdapter<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/rich/gson/internal/bind/TreeTypeAdapter;->delegate:Lcom/rich/gson/TypeAdapter;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/rich/gson/internal/bind/TreeTypeAdapter;->gson:Lcom/rich/gson/Gson;

    iget-object v1, p0, Lcom/rich/gson/internal/bind/TreeTypeAdapter;->skipPast:Lcom/rich/gson/TypeAdapterFactory;

    iget-object v2, p0, Lcom/rich/gson/internal/bind/TreeTypeAdapter;->typeToken:Lcom/rich/gson/reflect/TypeToken;

    invoke-virtual {v0, v1, v2}, Lcom/rich/gson/Gson;->getDelegateAdapter(Lcom/rich/gson/TypeAdapterFactory;Lcom/rich/gson/reflect/TypeToken;)Lcom/rich/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/rich/gson/internal/bind/TreeTypeAdapter;->delegate:Lcom/rich/gson/TypeAdapter;

    :goto_0
    return-object v0
.end method

.method public static newFactory(Lcom/rich/gson/reflect/TypeToken;Ljava/lang/Object;)Lcom/rich/gson/TypeAdapterFactory;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/rich/gson/reflect/TypeToken<",
            "*>;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/rich/gson/TypeAdapterFactory;"
        }
    .end annotation

    new-instance v0, Lcom/rich/gson/internal/bind/TreeTypeAdapter$SingleTypeFactory;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p1, p0, v1, v2}, Lcom/rich/gson/internal/bind/TreeTypeAdapter$SingleTypeFactory;-><init>(Ljava/lang/Object;Lcom/rich/gson/reflect/TypeToken;ZLjava/lang/Class;)V

    return-object v0
.end method

.method public static newFactoryWithMatchRawType(Lcom/rich/gson/reflect/TypeToken;Ljava/lang/Object;)Lcom/rich/gson/TypeAdapterFactory;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/rich/gson/reflect/TypeToken<",
            "*>;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/rich/gson/TypeAdapterFactory;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/rich/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p0}, Lcom/rich/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Lcom/rich/gson/internal/bind/TreeTypeAdapter$SingleTypeFactory;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p0, v0, v2}, Lcom/rich/gson/internal/bind/TreeTypeAdapter$SingleTypeFactory;-><init>(Ljava/lang/Object;Lcom/rich/gson/reflect/TypeToken;ZLjava/lang/Class;)V

    return-object v1
.end method

.method public static newTypeHierarchyFactory(Ljava/lang/Class;Ljava/lang/Object;)Lcom/rich/gson/TypeAdapterFactory;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/rich/gson/TypeAdapterFactory;"
        }
    .end annotation

    new-instance v0, Lcom/rich/gson/internal/bind/TreeTypeAdapter$SingleTypeFactory;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2, p0}, Lcom/rich/gson/internal/bind/TreeTypeAdapter$SingleTypeFactory;-><init>(Ljava/lang/Object;Lcom/rich/gson/reflect/TypeToken;ZLjava/lang/Class;)V

    return-object v0
.end method


# virtual methods
.method public read(Lcom/rich/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/rich/gson/stream/JsonReader;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/rich/gson/internal/bind/TreeTypeAdapter;->deserializer:Lcom/rich/gson/JsonDeserializer;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/rich/gson/internal/bind/TreeTypeAdapter;->delegate()Lcom/rich/gson/TypeAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/rich/gson/TypeAdapter;->read(Lcom/rich/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {p1}, Lcom/rich/gson/internal/Streams;->parse(Lcom/rich/gson/stream/JsonReader;)Lcom/rich/gson/JsonElement;

    move-result-object p1

    invoke-virtual {p1}, Lcom/rich/gson/JsonElement;->isJsonNull()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    iget-object v0, p0, Lcom/rich/gson/internal/bind/TreeTypeAdapter;->deserializer:Lcom/rich/gson/JsonDeserializer;

    iget-object v1, p0, Lcom/rich/gson/internal/bind/TreeTypeAdapter;->typeToken:Lcom/rich/gson/reflect/TypeToken;

    invoke-virtual {v1}, Lcom/rich/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    iget-object v2, p0, Lcom/rich/gson/internal/bind/TreeTypeAdapter;->context:Lcom/rich/gson/internal/bind/TreeTypeAdapter$GsonContextImpl;

    invoke-interface {v0, p1, v1, v2}, Lcom/rich/gson/JsonDeserializer;->deserialize(Lcom/rich/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/rich/gson/JsonDeserializationContext;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public write(Lcom/rich/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/rich/gson/stream/JsonWriter;",
            "TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/rich/gson/internal/bind/TreeTypeAdapter;->serializer:Lcom/rich/gson/JsonSerializer;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/rich/gson/internal/bind/TreeTypeAdapter;->delegate()Lcom/rich/gson/TypeAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/rich/gson/TypeAdapter;->write(Lcom/rich/gson/stream/JsonWriter;Ljava/lang/Object;)V

    return-void

    :cond_0
    if-nez p2, :cond_1

    invoke-virtual {p1}, Lcom/rich/gson/stream/JsonWriter;->nullValue()Lcom/rich/gson/stream/JsonWriter;

    return-void

    :cond_1
    iget-object v1, p0, Lcom/rich/gson/internal/bind/TreeTypeAdapter;->typeToken:Lcom/rich/gson/reflect/TypeToken;

    invoke-virtual {v1}, Lcom/rich/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    iget-object v2, p0, Lcom/rich/gson/internal/bind/TreeTypeAdapter;->context:Lcom/rich/gson/internal/bind/TreeTypeAdapter$GsonContextImpl;

    invoke-interface {v0, p2, v1, v2}, Lcom/rich/gson/JsonSerializer;->serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/rich/gson/JsonSerializationContext;)Lcom/rich/gson/JsonElement;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/rich/gson/internal/Streams;->write(Lcom/rich/gson/JsonElement;Lcom/rich/gson/stream/JsonWriter;)V

    return-void
.end method
