.class Lcom/rich/gson/Gson$FutureTypeAdapter;
.super Lcom/rich/gson/TypeAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rich/gson/Gson;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FutureTypeAdapter"
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
.field private delegate:Lcom/rich/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/rich/gson/TypeAdapter<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/rich/gson/TypeAdapter;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
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

    iget-object v0, p0, Lcom/rich/gson/Gson$FutureTypeAdapter;->delegate:Lcom/rich/gson/TypeAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/rich/gson/TypeAdapter;->read(Lcom/rich/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public setDelegate(Lcom/rich/gson/TypeAdapter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/rich/gson/TypeAdapter<",
            "TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/rich/gson/Gson$FutureTypeAdapter;->delegate:Lcom/rich/gson/TypeAdapter;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/rich/gson/Gson$FutureTypeAdapter;->delegate:Lcom/rich/gson/TypeAdapter;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method public write(Lcom/rich/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/rich/gson/stream/JsonWriter;",
            "TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/rich/gson/Gson$FutureTypeAdapter;->delegate:Lcom/rich/gson/TypeAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/rich/gson/TypeAdapter;->write(Lcom/rich/gson/stream/JsonWriter;Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method
