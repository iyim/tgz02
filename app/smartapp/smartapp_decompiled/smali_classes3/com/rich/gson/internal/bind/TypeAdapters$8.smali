.class final Lcom/rich/gson/internal/bind/TypeAdapters$8;
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
        "Ljava/util/concurrent/atomic/AtomicInteger;",
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

    invoke-virtual {p0, p1}, Lcom/rich/gson/internal/bind/TypeAdapters$8;->read(Lcom/rich/gson/stream/JsonReader;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p1

    return-object p1
.end method

.method public read(Lcom/rich/gson/stream/JsonReader;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    :try_start_0
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Lcom/rich/gson/stream/JsonReader;->nextInt()I

    move-result p1

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    new-instance v0, Lcom/rich/gson/JsonSyntaxException;

    invoke-direct {v0, p1}, Lcom/rich/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public bridge synthetic write(Lcom/rich/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0, p1, p2}, Lcom/rich/gson/internal/bind/TypeAdapters$8;->write(Lcom/rich/gson/stream/JsonWriter;Ljava/util/concurrent/atomic/AtomicInteger;)V

    return-void
.end method

.method public write(Lcom/rich/gson/stream/JsonWriter;Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 2

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p2

    int-to-long v0, p2

    invoke-virtual {p1, v0, v1}, Lcom/rich/gson/stream/JsonWriter;->value(J)Lcom/rich/gson/stream/JsonWriter;

    return-void
.end method
