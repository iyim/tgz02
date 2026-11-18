.class Lcom/rich/gson/internal/bind/TypeAdapters$26$1;
.super Lcom/rich/gson/TypeAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rich/gson/internal/bind/TypeAdapters$26;->create(Lcom/rich/gson/Gson;Lcom/rich/gson/reflect/TypeToken;)Lcom/rich/gson/TypeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/rich/gson/TypeAdapter<",
        "Ljava/sql/Timestamp;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rich/gson/internal/bind/TypeAdapters$26;

.field final synthetic val$dateTypeAdapter:Lcom/rich/gson/TypeAdapter;


# direct methods
.method constructor <init>(Lcom/rich/gson/internal/bind/TypeAdapters$26;Lcom/rich/gson/TypeAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/gson/internal/bind/TypeAdapters$26$1;->this$0:Lcom/rich/gson/internal/bind/TypeAdapters$26;

    iput-object p2, p0, Lcom/rich/gson/internal/bind/TypeAdapters$26$1;->val$dateTypeAdapter:Lcom/rich/gson/TypeAdapter;

    invoke-direct {p0}, Lcom/rich/gson/TypeAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic read(Lcom/rich/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/rich/gson/internal/bind/TypeAdapters$26$1;->read(Lcom/rich/gson/stream/JsonReader;)Ljava/sql/Timestamp;

    move-result-object p1

    return-object p1
.end method

.method public read(Lcom/rich/gson/stream/JsonReader;)Ljava/sql/Timestamp;
    .locals 3

    iget-object v0, p0, Lcom/rich/gson/internal/bind/TypeAdapters$26$1;->val$dateTypeAdapter:Lcom/rich/gson/TypeAdapter;

    invoke-virtual {v0, p1}, Lcom/rich/gson/TypeAdapter;->read(Lcom/rich/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Date;

    if-eqz p1, :cond_0

    new-instance v0, Ljava/sql/Timestamp;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/sql/Timestamp;-><init>(J)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic write(Lcom/rich/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/sql/Timestamp;

    invoke-virtual {p0, p1, p2}, Lcom/rich/gson/internal/bind/TypeAdapters$26$1;->write(Lcom/rich/gson/stream/JsonWriter;Ljava/sql/Timestamp;)V

    return-void
.end method

.method public write(Lcom/rich/gson/stream/JsonWriter;Ljava/sql/Timestamp;)V
    .locals 1

    iget-object v0, p0, Lcom/rich/gson/internal/bind/TypeAdapters$26$1;->val$dateTypeAdapter:Lcom/rich/gson/TypeAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/rich/gson/TypeAdapter;->write(Lcom/rich/gson/stream/JsonWriter;Ljava/lang/Object;)V

    return-void
.end method
