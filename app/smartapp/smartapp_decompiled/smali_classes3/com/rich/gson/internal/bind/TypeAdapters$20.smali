.class final Lcom/rich/gson/internal/bind/TypeAdapters$20;
.super Lcom/rich/gson/TypeAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rich/gson/internal/bind/TypeAdapters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/rich/gson/TypeAdapter<",
        "Ljava/lang/StringBuffer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/rich/gson/TypeAdapter;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public bridge synthetic read(Lcom/rich/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/rich/gson/internal/bind/TypeAdapters$20;->read(Lcom/rich/gson/stream/JsonReader;)Ljava/lang/StringBuffer;

    move-result-object p1

    return-object p1
.end method

.method public read(Lcom/rich/gson/stream/JsonReader;)Ljava/lang/StringBuffer;
    .locals 2

    invoke-virtual {p1}, Lcom/rich/gson/stream/JsonReader;->peek()Lcom/rich/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/rich/gson/stream/JsonToken;->NULL:Lcom/rich/gson/stream/JsonToken;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/rich/gson/stream/JsonReader;->nextNull()V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lcom/rich/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic write(Lcom/rich/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/lang/StringBuffer;

    invoke-virtual {p0, p1, p2}, Lcom/rich/gson/internal/bind/TypeAdapters$20;->write(Lcom/rich/gson/stream/JsonWriter;Ljava/lang/StringBuffer;)V

    return-void
.end method

.method public write(Lcom/rich/gson/stream/JsonWriter;Ljava/lang/StringBuffer;)V
    .locals 0

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-virtual {p1, p2}, Lcom/rich/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lcom/rich/gson/stream/JsonWriter;

    return-void
.end method
