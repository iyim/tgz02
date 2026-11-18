.class public Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;
.super Lcom/alibaba/ailabs/genie/client/data/BaseReqData;
.source "ChangeStatusReqData.java"


# static fields
.field public static final TYPE_COMMON:I = 0x0

.field public static final TYPE_INSERT:I = 0x1


# instance fields
.field private duration:J

.field private ext:Ljava/lang/String;

.field private mode:Ljava/lang/String;

.field private status:I

.field private tips:Ljava/lang/String;

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/client/data/BaseReqData;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;->type:I

    return-void
.end method


# virtual methods
.method public getDuration()J
    .locals 2

    .line 14
    iget-wide v0, p0, Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;->duration:J

    return-wide v0
.end method

.method public getExt()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;->ext:Ljava/lang/String;

    return-object v0
.end method

.method public getMode()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;->mode:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .line 38
    iget v0, p0, Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;->status:I

    return v0
.end method

.method public getTips()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;->tips:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 22
    iget v0, p0, Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;->type:I

    return v0
.end method

.method public setDuration(J)V
    .locals 0

    .line 18
    iput-wide p1, p0, Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;->duration:J

    return-void
.end method

.method public setExt(Ljava/lang/String;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;->ext:Ljava/lang/String;

    return-void
.end method

.method public setMode(Ljava/lang/String;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;->mode:Ljava/lang/String;

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .line 42
    iput p1, p0, Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;->status:I

    return-void
.end method

.method public setTips(Ljava/lang/String;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;->tips:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 26
    iput p1, p0, Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;->type:I

    return-void
.end method
