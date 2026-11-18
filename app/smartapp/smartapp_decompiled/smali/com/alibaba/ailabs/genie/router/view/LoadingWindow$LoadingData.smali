.class Lcom/alibaba/ailabs/genie/router/view/LoadingWindow$LoadingData;
.super Ljava/lang/Object;
.source "LoadingWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/router/view/LoadingWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LoadingData"
.end annotation


# instance fields
.field private isSendCloseMessage:Z

.field private packageName:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 470
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 483
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/router/view/LoadingWindow$LoadingData;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public isSendCloseMessage()Z
    .locals 1

    .line 475
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/router/view/LoadingWindow$LoadingData;->isSendCloseMessage:Z

    return v0
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    .line 487
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/router/view/LoadingWindow$LoadingData;->packageName:Ljava/lang/String;

    return-void
.end method

.method public setSendCloseMessage(Z)V
    .locals 0

    .line 479
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/router/view/LoadingWindow$LoadingData;->isSendCloseMessage:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 492
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LoadingData{isSendCloseMessage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/alibaba/ailabs/genie/router/view/LoadingWindow$LoadingData;->isSendCloseMessage:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", packageName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/router/view/LoadingWindow$LoadingData;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
