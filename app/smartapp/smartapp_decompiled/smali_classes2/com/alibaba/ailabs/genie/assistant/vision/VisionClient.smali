.class public Lcom/alibaba/ailabs/genie/assistant/vision/VisionClient;
.super Ljava/lang/Object;
.source "VisionClient.java"


# instance fields
.field private mAVEEngineList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/VisionClient;->mAVEEngineList:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public addAVEngine(Ljava/lang/String;)V
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/VisionClient;->mAVEEngineList:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getAVEEngineList()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/VisionClient;->mAVEEngineList:Ljava/util/Set;

    return-object v0
.end method

.method public isAVEEngineEmpty()Z
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/VisionClient;->mAVEEngineList:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public rmAVEngine(Ljava/lang/String;)V
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/VisionClient;->mAVEEngineList:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method
