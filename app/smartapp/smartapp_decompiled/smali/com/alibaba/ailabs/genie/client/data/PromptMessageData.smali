.class public Lcom/alibaba/ailabs/genie/client/data/PromptMessageData;
.super Lcom/alibaba/ailabs/genie/client/data/BaseReqData;
.source "PromptMessageData.java"


# instance fields
.field private duration:J

.field private message:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/client/data/BaseReqData;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getDuration()J
    .locals 2

    .line 16
    iget-wide v0, p0, Lcom/alibaba/ailabs/genie/client/data/PromptMessageData;->duration:J

    return-wide v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/client/data/PromptMessageData;->message:Ljava/lang/String;

    return-object v0
.end method

.method public setDuration(J)V
    .locals 0

    .line 20
    iput-wide p1, p0, Lcom/alibaba/ailabs/genie/client/data/PromptMessageData;->duration:J

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/client/data/PromptMessageData;->message:Ljava/lang/String;

    return-void
.end method
