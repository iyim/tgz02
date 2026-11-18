.class public Lcom/alibaba/ailabs/genie/contacts/item/CallRecordData;
.super Ljava/lang/Object;
.source "CallRecordData.java"


# instance fields
.field dataChange:Z

.field errCode:Ljava/lang/String;

.field errmsg:Ljava/lang/String;

.field private isCacheData:Z

.field list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;",
            ">;"
        }
    .end annotation
.end field


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
.method public getErrCode()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordData;->errCode:Ljava/lang/String;

    return-object v0
.end method

.method public getErrmsg()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordData;->errmsg:Ljava/lang/String;

    return-object v0
.end method

.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;",
            ">;"
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordData;->list:Ljava/util/List;

    return-object v0
.end method

.method public isCacheData()Z
    .locals 1

    .line 24
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordData;->isCacheData:Z

    return v0
.end method

.method public isDataChange()Z
    .locals 1

    .line 16
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordData;->dataChange:Z

    return v0
.end method

.method public setCacheData(Z)V
    .locals 0

    .line 28
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordData;->isCacheData:Z

    return-void
.end method

.method public setDataChange(Z)V
    .locals 0

    .line 20
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordData;->dataChange:Z

    return-void
.end method

.method public setErrCode(Ljava/lang/String;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordData;->errCode:Ljava/lang/String;

    return-void
.end method

.method public setErrmsg(Ljava/lang/String;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordData;->errmsg:Ljava/lang/String;

    return-void
.end method

.method public setList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;",
            ">;)V"
        }
    .end annotation

    .line 52
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordData;->list:Ljava/util/List;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CallRecordData{errCode=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordData;->errCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", errmsg=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordData;->errmsg:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", dataChange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordData;->dataChange:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isCacheData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordData;->isCacheData:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", list="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordData;->list:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
