.class final Lcom/rich/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;
.super Lcom/rich/gson/TypeAdapter;


# annotations
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
.field private final context:Lcom/rich/gson/Gson;

.field private final delegate:Lcom/rich/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/rich/gson/TypeAdapter<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final type:Ljava/lang/reflect/Type;


# direct methods
.method constructor <init>(Lcom/rich/gson/Gson;Lcom/rich/gson/TypeAdapter;Ljava/lang/reflect/Type;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/rich/gson/Gson;",
            "Lcom/rich/gson/TypeAdapter<",
            "TT;>;",
            "Ljava/lang/reflect/Type;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/rich/gson/TypeAdapter;-><init>()V

    iput-object p1, p0, Lcom/rich/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;->context:Lcom/rich/gson/Gson;

    iput-object p2, p0, Lcom/rich/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;->delegate:Lcom/rich/gson/TypeAdapter;

    iput-object p3, p0, Lcom/rich/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;->type:Ljava/lang/reflect/Type;

    return-void
.end method

.method private getRuntimeTypeIfMoreSpecific(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/reflect/Type;
    .locals 1

    if-eqz p2, :cond_1

    const-class v0, Ljava/lang/Object;

    if-eq p1, v0, :cond_0

    instance-of v0, p1, Ljava/lang/reflect/TypeVariable;

    if-nez v0, :cond_0

    instance-of v0, p1, Ljava/lang/Class;

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    :cond_1
    return-object p1
.end method


# virtual methods
.method public read(Lcom/rich/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/rich/gson/stream/JsonReader;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/rich/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;->delegate:Lcom/rich/gson/TypeAdapter;

    invoke-virtual {v0, p1}, Lcom/rich/gson/TypeAdapter;->read(Lcom/rich/gson/stream/JsonReader;)Ljava/lang/Object;

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

    iget-object v0, p0, Lcom/rich/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;->delegate:Lcom/rich/gson/TypeAdapter;

    iget-object v1, p0, Lcom/rich/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;->type:Ljava/lang/reflect/Type;

    invoke-direct {p0, v1, p2}, Lcom/rich/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;->getRuntimeTypeIfMoreSpecific(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/reflect/Type;

    move-result-object v1

    iget-object v2, p0, Lcom/rich/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;->type:Ljava/lang/reflect/Type;

    if-eq v1, v2, :cond_1

    iget-object v0, p0, Lcom/rich/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;->context:Lcom/rich/gson/Gson;

    invoke-static {v1}, Lcom/rich/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/rich/gson/reflect/TypeToken;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rich/gson/Gson;->getAdapter(Lcom/rich/gson/reflect/TypeToken;)Lcom/rich/gson/TypeAdapter;

    move-result-object v0

    instance-of v1, v0, Lcom/rich/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/rich/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;->delegate:Lcom/rich/gson/TypeAdapter;

    instance-of v2, v1, Lcom/rich/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;

    if-nez v2, :cond_1

    move-object v0, v1

    :cond_1
    :goto_0
    invoke-virtual {v0, p1, p2}, Lcom/rich/gson/TypeAdapter;->write(Lcom/rich/gson/stream/JsonWriter;Ljava/lang/Object;)V

    return-void
.end method
