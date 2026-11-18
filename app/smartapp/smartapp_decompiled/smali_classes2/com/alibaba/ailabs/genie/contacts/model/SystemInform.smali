.class public Lcom/alibaba/ailabs/genie/contacts/model/SystemInform;
.super Ljava/lang/Object;
.source "SystemInform.java"


# instance fields
.field private dayCnt:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getDayCnt()I
    .locals 1

    .line 12
    iget v0, p0, Lcom/alibaba/ailabs/genie/contacts/model/SystemInform;->dayCnt:I

    return v0
.end method

.method public getRemainCnt()I
    .locals 1
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        serialize = false
    .end annotation

    .line 36
    iget v0, p0, Lcom/alibaba/ailabs/genie/contacts/model/SystemInform;->dayCnt:I

    rsub-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public hasCount()Z
    .locals 1
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        serialize = false
    .end annotation

    .line 28
    iget v0, p0, Lcom/alibaba/ailabs/genie/contacts/model/SystemInform;->dayCnt:I

    rsub-int/lit8 v0, v0, 0x3

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public setDayCnt(I)V
    .locals 0

    .line 16
    iput p1, p0, Lcom/alibaba/ailabs/genie/contacts/model/SystemInform;->dayCnt:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SystemInform{dayCnt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/ailabs/genie/contacts/model/SystemInform;->dayCnt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
