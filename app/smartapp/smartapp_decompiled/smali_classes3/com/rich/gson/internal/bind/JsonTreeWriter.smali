.class public final Lcom/rich/gson/internal/bind/JsonTreeWriter;
.super Lcom/rich/gson/stream/JsonWriter;


# static fields
.field private static final SENTINEL_CLOSED:Lcom/rich/gson/JsonPrimitive;

.field private static final UNWRITABLE_WRITER:Ljava/io/Writer;


# instance fields
.field private pendingName:Ljava/lang/String;

.field private product:Lcom/rich/gson/JsonElement;

.field private final stack:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/rich/gson/JsonElement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/rich/gson/internal/bind/JsonTreeWriter$1;

    invoke-direct {v0}, Lcom/rich/gson/internal/bind/JsonTreeWriter$1;-><init>()V

    sput-object v0, Lcom/rich/gson/internal/bind/JsonTreeWriter;->UNWRITABLE_WRITER:Ljava/io/Writer;

    new-instance v0, Lcom/rich/gson/JsonPrimitive;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Lcom/rich/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/rich/gson/internal/bind/JsonTreeWriter;->SENTINEL_CLOSED:Lcom/rich/gson/JsonPrimitive;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/rich/gson/internal/bind/JsonTreeWriter;->UNWRITABLE_WRITER:Ljava/io/Writer;

    invoke-direct {p0, v0}, Lcom/rich/gson/stream/JsonWriter;-><init>(Ljava/io/Writer;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/rich/gson/internal/bind/JsonTreeWriter;->stack:Ljava/util/List;

    sget-object v0, Lcom/rich/gson/JsonNull;->INSTANCE:Lcom/rich/gson/JsonNull;

    iput-object v0, p0, Lcom/rich/gson/internal/bind/JsonTreeWriter;->product:Lcom/rich/gson/JsonElement;

    return-void
.end method

.method private peek()Lcom/rich/gson/JsonElement;
    .locals 2

    iget-object v0, p0, Lcom/rich/gson/internal/bind/JsonTreeWriter;->stack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rich/gson/JsonElement;

    return-object v0
.end method

.method private put(Lcom/rich/gson/JsonElement;)V
    .locals 2

    iget-object v0, p0, Lcom/rich/gson/internal/bind/JsonTreeWriter;->pendingName:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/rich/gson/JsonElement;->isJsonNull()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/rich/gson/internal/bind/JsonTreeWriter;->getSerializeNulls()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/rich/gson/internal/bind/JsonTreeWriter;->peek()Lcom/rich/gson/JsonElement;

    move-result-object v0

    check-cast v0, Lcom/rich/gson/JsonObject;

    iget-object v1, p0, Lcom/rich/gson/internal/bind/JsonTreeWriter;->pendingName:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/rich/gson/JsonObject;->add(Ljava/lang/String;Lcom/rich/gson/JsonElement;)V

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/rich/gson/internal/bind/JsonTreeWriter;->pendingName:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/rich/gson/internal/bind/JsonTreeWriter;->stack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    iput-object p1, p0, Lcom/rich/gson/internal/bind/JsonTreeWriter;->product:Lcom/rich/gson/JsonElement;

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/rich/gson/internal/bind/JsonTreeWriter;->peek()Lcom/rich/gson/JsonElement;

    move-result-object v0

    instance-of v1, v0, Lcom/rich/gson/JsonArray;

    if-eqz v1, :cond_4

    nop

    nop

    invoke-virtual {v0, p1}, Lcom/rich/gson/JsonArray;->add(Lcom/rich/gson/JsonElement;)V

    :goto_0
    return-void

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method


# virtual methods
.method public beginArray()Lcom/rich/gson/stream/JsonWriter;
    .locals 2

    new-instance v0, Lcom/rich/gson/JsonArray;

    invoke-direct {v0}, Lcom/rich/gson/JsonArray;-><init>()V

    invoke-direct {p0, v0}, Lcom/rich/gson/internal/bind/JsonTreeWriter;->put(Lcom/rich/gson/JsonElement;)V

    iget-object v1, p0, Lcom/rich/gson/internal/bind/JsonTreeWriter;->stack:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public beginObject()Lcom/rich/gson/stream/JsonWriter;
    .locals 2

    new-instance v0, Lcom/rich/gson/JsonObject;

    invoke-direct {v0}, Lcom/rich/gson/JsonObject;-><init>()V

    invoke-direct {p0, v0}, Lcom/rich/gson/internal/bind/JsonTreeWriter;->put(Lcom/rich/gson/JsonElement;)V

    iget-object v1, p0, Lcom/rich/gson/internal/bind/JsonTreeWriter;->stack:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public close()V
    .locals 2

    iget-object v0, p0, Lcom/rich/gson/internal/bind/JsonTreeWriter;->stack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rich/gson/internal/bind/JsonTreeWriter;->stack:Ljava/util/List;

    sget-object v1, Lcom/rich/gson/internal/bind/JsonTreeWriter;->SENTINEL_CLOSED:Lcom/rich/gson/JsonPrimitive;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Incomplete document"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public endArray()Lcom/rich/gson/stream/JsonWriter;
    .locals 2

    iget-object v0, p0, Lcom/rich/gson/internal/bind/JsonTreeWriter;->stack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/rich/gson/internal/bind/JsonTreeWriter;->pendingName:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/rich/gson/internal/bind/JsonTreeWriter;->peek()Lcom/rich/gson/JsonElement;

    move-result-object v0

    instance-of v0, v0, Lcom/rich/gson/JsonArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rich/gson/internal/bind/JsonTreeWriter;->stack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public endObject()Lcom/rich/gson/stream/JsonWriter;
    .locals 2

    iget-object v0, p0, Lcom/rich/gson/internal/bind/JsonTreeWriter;->stack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/rich/gson/internal/bind/JsonTreeWriter;->pendingName:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/rich/gson/internal/bind/JsonTreeWriter;->peek()Lcom/rich/gson/JsonElement;

    move-result-object v0

    instance-of v0, v0, Lcom/rich/gson/JsonObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rich/gson/internal/bind/JsonTreeWriter;->stack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public flush()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public get()Lcom/rich/gson/JsonElement;
    .locals 3

    iget-object v0, p0, Lcom/rich/gson/internal/bind/JsonTreeWriter;->stack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rich/gson/internal/bind/JsonTreeWriter;->product:Lcom/rich/gson/JsonElement;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected one JSON element but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/rich/gson/internal/bind/JsonTreeWriter;->stack:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public name(Ljava/lang/String;)Lcom/rich/gson/stream/JsonWriter;
    .locals 1

    iget-object v0, p0, Lcom/rich/gson/internal/bind/JsonTreeWriter;->stack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/rich/gson/internal/bind/JsonTreeWriter;->pendingName:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/rich/gson/internal/bind/JsonTreeWriter;->peek()Lcom/rich/gson/JsonElement;

    move-result-object v0

    instance-of v0, v0, Lcom/rich/gson/JsonObject;

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/rich/gson/internal/bind/JsonTreeWriter;->pendingName:Ljava/lang/String;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public nullValue()Lcom/rich/gson/stream/JsonWriter;
    .locals 1

    sget-object v0, Lcom/rich/gson/JsonNull;->INSTANCE:Lcom/rich/gson/JsonNull;

    invoke-direct {p0, v0}, Lcom/rich/gson/internal/bind/JsonTreeWriter;->put(Lcom/rich/gson/JsonElement;)V

    return-object p0
.end method

.method public value(D)Lcom/rich/gson/stream/JsonWriter;
    .locals 3

    invoke-virtual {p0}, Lcom/rich/gson/internal/bind/JsonTreeWriter;->isLenient()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JSON forbids NaN and infinities: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    new-instance v0, Lcom/rich/gson/JsonPrimitive;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/rich/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-direct {p0, v0}, Lcom/rich/gson/internal/bind/JsonTreeWriter;->put(Lcom/rich/gson/JsonElement;)V

    return-object p0
.end method

.method public value(J)Lcom/rich/gson/stream/JsonWriter;
    .locals 1

    new-instance v0, Lcom/rich/gson/JsonPrimitive;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/rich/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-direct {p0, v0}, Lcom/rich/gson/internal/bind/JsonTreeWriter;->put(Lcom/rich/gson/JsonElement;)V

    return-object p0
.end method

.method public value(Ljava/lang/Boolean;)Lcom/rich/gson/stream/JsonWriter;
    .locals 1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/rich/gson/internal/bind/JsonTreeWriter;->nullValue()Lcom/rich/gson/stream/JsonWriter;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Lcom/rich/gson/JsonPrimitive;

    invoke-direct {v0, p1}, Lcom/rich/gson/JsonPrimitive;-><init>(Ljava/lang/Boolean;)V

    invoke-direct {p0, v0}, Lcom/rich/gson/internal/bind/JsonTreeWriter;->put(Lcom/rich/gson/JsonElement;)V

    return-object p0
.end method

.method public value(Ljava/lang/Number;)Lcom/rich/gson/stream/JsonWriter;
    .locals 3

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/rich/gson/internal/bind/JsonTreeWriter;->nullValue()Lcom/rich/gson/stream/JsonWriter;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lcom/rich/gson/internal/bind/JsonTreeWriter;->isLenient()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JSON forbids NaN and infinities: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    new-instance v0, Lcom/rich/gson/JsonPrimitive;

    invoke-direct {v0, p1}, Lcom/rich/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-direct {p0, v0}, Lcom/rich/gson/internal/bind/JsonTreeWriter;->put(Lcom/rich/gson/JsonElement;)V

    return-object p0
.end method

.method public value(Ljava/lang/String;)Lcom/rich/gson/stream/JsonWriter;
    .locals 1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/rich/gson/internal/bind/JsonTreeWriter;->nullValue()Lcom/rich/gson/stream/JsonWriter;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Lcom/rich/gson/JsonPrimitive;

    invoke-direct {v0, p1}, Lcom/rich/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/rich/gson/internal/bind/JsonTreeWriter;->put(Lcom/rich/gson/JsonElement;)V

    return-object p0
.end method

.method public value(Z)Lcom/rich/gson/stream/JsonWriter;
    .locals 1

    new-instance v0, Lcom/rich/gson/JsonPrimitive;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/rich/gson/JsonPrimitive;-><init>(Ljava/lang/Boolean;)V

    invoke-direct {p0, v0}, Lcom/rich/gson/internal/bind/JsonTreeWriter;->put(Lcom/rich/gson/JsonElement;)V

    return-object p0
.end method
