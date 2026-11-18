.class public Lcom/alibaba/ailabs/genie/logger/bean/LogFrame;
.super Ljava/lang/Object;
.source "LogFrame.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LogFrame"


# instance fields
.field private mBusinessKey:Ljava/lang/String;

.field private mLogMsg:Ljava/lang/String;

.field private mPackageName:Ljava/lang/String;

.field private mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p2, p0, Lcom/alibaba/ailabs/genie/logger/bean/LogFrame;->mLogMsg:Ljava/lang/String;

    .line 40
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/logger/bean/LogFrame;->mTag:Ljava/lang/String;

    .line 41
    invoke-static {}, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->getBusinessKey()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/logger/bean/LogFrame;->mBusinessKey:Ljava/lang/String;

    .line 42
    invoke-static {}, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/logger/bean/LogFrame;->mPackageName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBusinessKey()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/logger/bean/LogFrame;->mBusinessKey:Ljava/lang/String;

    return-object v0
.end method

.method public getLogMsg()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/logger/bean/LogFrame;->mLogMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/logger/bean/LogFrame;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public setLogMsg(Ljava/lang/String;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/logger/bean/LogFrame;->mLogMsg:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BusinessKey:"

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/logger/bean/LogFrame;->mBusinessKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/logger/bean/LogFrame;->mTag:Ljava/lang/String;

    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/logger/bean/LogFrame;->mLogMsg:Ljava/lang/String;

    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
