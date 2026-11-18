.class public Lcom/alibaba/ailabs/genie/logger/bean/TraceNode;
.super Ljava/lang/Object;
.source "TraceNode.java"


# instance fields
.field private mInstantEnvInfo:Lcom/alibaba/ailabs/genie/logger/bean/InstantEnvInfo;

.field private mNodeMsg:Ljava/lang/String;

.field private mNodeTime:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/logger/bean/TraceNode;->mNodeMsg:Ljava/lang/String;

    .line 50
    invoke-static {}, Lcom/alibaba/ailabs/genie/logger/utils/CommonUtils;->getCurrentTime()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/logger/bean/TraceNode;->mNodeTime:Ljava/lang/String;

    .line 51
    new-instance p1, Lcom/alibaba/ailabs/genie/logger/bean/InstantEnvInfo;

    invoke-direct {p1}, Lcom/alibaba/ailabs/genie/logger/bean/InstantEnvInfo;-><init>()V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/logger/bean/TraceNode;->mInstantEnvInfo:Lcom/alibaba/ailabs/genie/logger/bean/InstantEnvInfo;

    return-void
.end method


# virtual methods
.method public getInstantEnvInfo()Lcom/alibaba/ailabs/genie/logger/bean/InstantEnvInfo;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/logger/bean/TraceNode;->mInstantEnvInfo:Lcom/alibaba/ailabs/genie/logger/bean/InstantEnvInfo;

    return-object v0
.end method

.method public getNodeMsg()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/logger/bean/TraceNode;->mNodeMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getNodeTime()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/logger/bean/TraceNode;->mNodeTime:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BusinessKey:"

    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->getBusinessKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "PackageName:"

    .line 58
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "NodeTime:"

    .line 59
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/logger/bean/TraceNode;->mNodeTime:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "NodeMsg:"

    .line 60
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/logger/bean/TraceNode;->mNodeMsg:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "InstantEnvInfo:"

    .line 61
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/logger/bean/TraceNode;->mInstantEnvInfo:Lcom/alibaba/ailabs/genie/logger/bean/InstantEnvInfo;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
