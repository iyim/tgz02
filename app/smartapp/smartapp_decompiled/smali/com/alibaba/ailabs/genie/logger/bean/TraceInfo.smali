.class public Lcom/alibaba/ailabs/genie/logger/bean/TraceInfo;
.super Ljava/lang/Object;
.source "TraceInfo.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TraceInfo"


# instance fields
.field private mNodeQueue:Lcom/alibaba/ailabs/genie/logger/data/LimitQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/ailabs/genie/logger/data/LimitQueue<",
            "Lcom/alibaba/ailabs/genie/logger/bean/TraceNode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Lcom/alibaba/ailabs/genie/logger/data/LimitQueue;

    const/16 v1, 0x3c

    invoke-direct {v0, v1}, Lcom/alibaba/ailabs/genie/logger/data/LimitQueue;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/logger/bean/TraceInfo;->mNodeQueue:Lcom/alibaba/ailabs/genie/logger/data/LimitQueue;

    return-void
.end method


# virtual methods
.method public recordNode(Lcom/alibaba/ailabs/genie/logger/bean/TraceNode;)V
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/logger/bean/TraceInfo;->mNodeQueue:Lcom/alibaba/ailabs/genie/logger/data/LimitQueue;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/logger/data/LimitQueue;->offer(Ljava/lang/Object;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "nodeArray:"

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/logger/bean/TraceInfo;->mNodeQueue:Lcom/alibaba/ailabs/genie/logger/data/LimitQueue;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/logger/data/LimitQueue;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
