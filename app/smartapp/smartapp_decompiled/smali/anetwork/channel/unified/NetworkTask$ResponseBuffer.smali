.class Lanetwork/channel/unified/NetworkTask$ResponseBuffer;
.super Ljava/lang/Object;
.source "NetworkTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanetwork/channel/unified/NetworkTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ResponseBuffer"
.end annotation


# instance fields
.field bodyBufferList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lanet/channel/bytes/ByteArray;",
            ">;"
        }
    .end annotation
.end field

.field code:I

.field header:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(ILjava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 604
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 602
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lanetwork/channel/unified/NetworkTask$ResponseBuffer;->bodyBufferList:Ljava/util/List;

    .line 605
    iput p1, p0, Lanetwork/channel/unified/NetworkTask$ResponseBuffer;->code:I

    .line 606
    iput-object p2, p0, Lanetwork/channel/unified/NetworkTask$ResponseBuffer;->header:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method callback(Lanetwork/channel/interceptor/Callback;I)I
    .locals 3

    .line 616
    iget v0, p0, Lanetwork/channel/unified/NetworkTask$ResponseBuffer;->code:I

    iget-object v1, p0, Lanetwork/channel/unified/NetworkTask$ResponseBuffer;->header:Ljava/util/Map;

    invoke-interface {p1, v0, v1}, Lanetwork/channel/interceptor/Callback;->onResponseCode(ILjava/util/Map;)V

    .line 618
    iget-object v0, p0, Lanetwork/channel/unified/NetworkTask$ResponseBuffer;->bodyBufferList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lanet/channel/bytes/ByteArray;

    .line 619
    invoke-interface {p1, v1, p2, v2}, Lanetwork/channel/interceptor/Callback;->onDataReceiveSize(IILanet/channel/bytes/ByteArray;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method release()V
    .locals 2

    .line 610
    iget-object v0, p0, Lanetwork/channel/unified/NetworkTask$ResponseBuffer;->bodyBufferList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lanet/channel/bytes/ByteArray;

    .line 611
    invoke-virtual {v1}, Lanet/channel/bytes/ByteArray;->recycle()V

    goto :goto_0

    :cond_0
    return-void
.end method
