.class public Lcom/alibaba/ailabs/tg/mtop/data/BaseDataBean;
.super Ljava/lang/Object;
.source "BaseDataBean.java"


# instance fields
.field private msgCode:Ljava/lang/String;

.field private msgInfo:Ljava/lang/String;

.field private success:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getMsgCode()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/alibaba/ailabs/tg/mtop/data/BaseDataBean;->msgCode:Ljava/lang/String;

    return-object v0
.end method

.method public getMsgInfo()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/alibaba/ailabs/tg/mtop/data/BaseDataBean;->msgInfo:Ljava/lang/String;

    return-object v0
.end method

.method public isSuccess()Z
    .locals 1

    .line 25
    iget-boolean v0, p0, Lcom/alibaba/ailabs/tg/mtop/data/BaseDataBean;->success:Z

    return v0
.end method

.method public setMsgCode(Ljava/lang/String;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/alibaba/ailabs/tg/mtop/data/BaseDataBean;->msgCode:Ljava/lang/String;

    return-void
.end method

.method public setMsgInfo(Ljava/lang/String;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/alibaba/ailabs/tg/mtop/data/BaseDataBean;->msgInfo:Ljava/lang/String;

    return-void
.end method

.method public setSuccess(Z)V
    .locals 0

    .line 29
    iput-boolean p1, p0, Lcom/alibaba/ailabs/tg/mtop/data/BaseDataBean;->success:Z

    return-void
.end method
