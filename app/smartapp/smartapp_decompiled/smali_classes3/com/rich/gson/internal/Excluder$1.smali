.class Lcom/rich/gson/internal/Excluder$1;
.super Lcom/rich/gson/TypeAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rich/gson/internal/Excluder;->create(Lcom/rich/gson/Gson;Lcom/rich/gson/reflect/TypeToken;)Lcom/rich/gson/TypeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
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

.field final synthetic this$0:Lcom/rich/gson/internal/Excluder;

.field final synthetic val$gson:Lcom/rich/gson/Gson;

.field final synthetic val$skipDeserialize:Z

.field final synthetic val$skipSerialize:Z

.field final synthetic val$type:Lcom/rich/gson/reflect/TypeToken;


# direct methods
.method constructor <init>(Lcom/rich/gson/internal/Excluder;ZZLcom/rich/gson/Gson;Lcom/rich/gson/reflect/TypeToken;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/gson/internal/Excluder$1;->this$0:Lcom/rich/gson/internal/Excluder;

    iput-boolean p2, p0, Lcom/rich/gson/internal/Excluder$1;->val$skipDeserialize:Z

    iput-boolean p3, p0, Lcom/rich/gson/internal/Excluder$1;->val$skipSerialize:Z

    iput-object p4, p0, Lcom/rich/gson/internal/Excluder$1;->val$gson:Lcom/rich/gson/Gson;

    iput-object p5, p0, Lcom/rich/gson/internal/Excluder$1;->val$type:Lcom/rich/gson/reflect/TypeToken;

    invoke-direct {p0}, Lcom/rich/gson/TypeAdapter;-><init>()V

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

    iget-object v0, p0, Lcom/rich/gson/internal/Excluder$1;->delegate:Lcom/rich/gson/TypeAdapter;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/rich/gson/internal/Excluder$1;->val$gson:Lcom/rich/gson/Gson;

    iget-object v1, p0, Lcom/rich/gson/internal/Excluder$1;->this$0:Lcom/rich/gson/internal/Excluder;

    iget-object v2, p0, Lcom/rich/gson/internal/Excluder$1;->val$type:Lcom/rich/gson/reflect/TypeToken;

    invoke-virtual {v0, v1, v2}, Lcom/rich/gson/Gson;->getDelegateAdapter(Lcom/rich/gson/TypeAdapterFactory;Lcom/rich/gson/reflect/TypeToken;)Lcom/rich/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/rich/gson/internal/Excluder$1;->delegate:Lcom/rich/gson/TypeAdapter;

    :goto_0
    return-object v0
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

    iget-boolean v0, p0, Lcom/rich/gson/internal/Excluder$1;->val$skipDeserialize:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/rich/gson/stream/JsonReader;->skipValue()V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-direct {p0}, Lcom/rich/gson/internal/Excluder$1;->delegate()Lcom/rich/gson/TypeAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/rich/gson/TypeAdapter;->read(Lcom/rich/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
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

    iget-boolean v0, p0, Lcom/rich/gson/internal/Excluder$1;->val$skipSerialize:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/rich/gson/stream/JsonWriter;->nullValue()Lcom/rich/gson/stream/JsonWriter;

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/rich/gson/internal/Excluder$1;->delegate()Lcom/rich/gson/TypeAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/rich/gson/TypeAdapter;->write(Lcom/rich/gson/stream/JsonWriter;Ljava/lang/Object;)V

    return-void
.end method
