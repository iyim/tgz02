.class public Lcom/aliyun/oss/model/LiveChannel;
.super Ljava/lang/Object;
.source "LiveChannel.java"


# instance fields
.field private description:Ljava/lang/String;

.field private lastModified:Ljava/util/Date;

.field private name:Ljava/lang/String;

.field private playUrls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private publishUrls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private status:Lcom/aliyun/oss/model/LiveChannelStatus;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/aliyun/oss/model/LiveChannelStatus;Ljava/util/Date;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/aliyun/oss/model/LiveChannelStatus;",
            "Ljava/util/Date;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/aliyun/oss/model/LiveChannel;->name:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lcom/aliyun/oss/model/LiveChannel;->description:Ljava/lang/String;

    .line 34
    iput-object p3, p0, Lcom/aliyun/oss/model/LiveChannel;->status:Lcom/aliyun/oss/model/LiveChannelStatus;

    .line 35
    iput-object p4, p0, Lcom/aliyun/oss/model/LiveChannel;->lastModified:Ljava/util/Date;

    .line 36
    iput-object p5, p0, Lcom/aliyun/oss/model/LiveChannel;->publishUrls:Ljava/util/List;

    .line 37
    iput-object p6, p0, Lcom/aliyun/oss/model/LiveChannel;->playUrls:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/aliyun/oss/model/LiveChannel;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getLastModified()Ljava/util/Date;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/aliyun/oss/model/LiveChannel;->lastModified:Ljava/util/Date;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/aliyun/oss/model/LiveChannel;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayUrls()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/aliyun/oss/model/LiveChannel;->playUrls:Ljava/util/List;

    return-object v0
.end method

.method public getPublishUrls()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/aliyun/oss/model/LiveChannel;->publishUrls:Ljava/util/List;

    return-object v0
.end method

.method public getStatus()Lcom/aliyun/oss/model/LiveChannelStatus;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/aliyun/oss/model/LiveChannel;->status:Lcom/aliyun/oss/model/LiveChannelStatus;

    return-object v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/aliyun/oss/model/LiveChannel;->description:Ljava/lang/String;

    return-void
.end method

.method public setLastModified(Ljava/util/Date;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/aliyun/oss/model/LiveChannel;->lastModified:Ljava/util/Date;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/aliyun/oss/model/LiveChannel;->name:Ljava/lang/String;

    return-void
.end method

.method public setPlayUrls(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 85
    iput-object p1, p0, Lcom/aliyun/oss/model/LiveChannel;->playUrls:Ljava/util/List;

    return-void
.end method

.method public setPublishUrls(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 77
    iput-object p1, p0, Lcom/aliyun/oss/model/LiveChannel;->publishUrls:Ljava/util/List;

    return-void
.end method

.method public setStatus(Lcom/aliyun/oss/model/LiveChannelStatus;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/aliyun/oss/model/LiveChannel;->status:Lcom/aliyun/oss/model/LiveChannelStatus;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LiveChannel [name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/aliyun/oss/model/LiveChannel;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/aliyun/oss/model/LiveChannel;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/aliyun/oss/model/LiveChannel;->getStatus()Lcom/aliyun/oss/model/LiveChannelStatus;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",lastModified="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/aliyun/oss/model/LiveChannel;->getLastModified()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",publishUrls="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/aliyun/oss/model/LiveChannel;->publishUrls:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",playUrls="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/aliyun/oss/model/LiveChannel;->playUrls:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
