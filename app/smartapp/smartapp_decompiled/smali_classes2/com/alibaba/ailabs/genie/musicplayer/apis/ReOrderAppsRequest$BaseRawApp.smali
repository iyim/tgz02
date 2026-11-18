.class public Lcom/alibaba/ailabs/genie/musicplayer/apis/ReOrderAppsRequest$BaseRawApp;
.super Ljava/lang/Object;
.source "ReOrderAppsRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/musicplayer/apis/ReOrderAppsRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BaseRawApp"
.end annotation


# instance fields
.field private appId:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private openPlatFormId:Ljava/lang/String;

.field private order:I

.field private src:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getAppId()Ljava/lang/String;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/apis/ReOrderAppsRequest$BaseRawApp;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/apis/ReOrderAppsRequest$BaseRawApp;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOpenPlatFormId()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/apis/ReOrderAppsRequest$BaseRawApp;->openPlatFormId:Ljava/lang/String;

    return-object v0
.end method

.method public getOrder()I
    .locals 1

    .line 121
    iget v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/apis/ReOrderAppsRequest$BaseRawApp;->order:I

    return v0
.end method

.method public getSrc()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/apis/ReOrderAppsRequest$BaseRawApp;->src:Ljava/lang/String;

    return-object v0
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/apis/ReOrderAppsRequest$BaseRawApp;->appId:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/apis/ReOrderAppsRequest$BaseRawApp;->name:Ljava/lang/String;

    return-void
.end method

.method public setOpenPlatFormId(Ljava/lang/String;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/apis/ReOrderAppsRequest$BaseRawApp;->openPlatFormId:Ljava/lang/String;

    return-void
.end method

.method public setOrder(I)V
    .locals 0

    .line 125
    iput p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/apis/ReOrderAppsRequest$BaseRawApp;->order:I

    return-void
.end method

.method public setSrc(Ljava/lang/String;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/apis/ReOrderAppsRequest$BaseRawApp;->src:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BaseRawApp{src=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/apis/ReOrderAppsRequest$BaseRawApp;->src:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", openPlatFormId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/apis/ReOrderAppsRequest$BaseRawApp;->openPlatFormId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", appId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/apis/ReOrderAppsRequest$BaseRawApp;->appId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", name=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/apis/ReOrderAppsRequest$BaseRawApp;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", order="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/apis/ReOrderAppsRequest$BaseRawApp;->order:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
