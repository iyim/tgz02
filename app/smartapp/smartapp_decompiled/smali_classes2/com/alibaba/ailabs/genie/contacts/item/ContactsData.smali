.class public Lcom/alibaba/ailabs/genie/contacts/item/ContactsData;
.super Ljava/lang/Object;
.source "ContactsData.java"


# instance fields
.field dataChange:Z

.field errCode:Ljava/lang/String;

.field errmsg:Ljava/lang/String;

.field isCacheData:Z

.field list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/contacts/common/base/BaseContactsItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getErrCode()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/item/ContactsData;->errCode:Ljava/lang/String;

    return-object v0
.end method

.method public getErrmsg()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/item/ContactsData;->errmsg:Ljava/lang/String;

    return-object v0
.end method

.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/contacts/common/base/BaseContactsItem;",
            ">;"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/item/ContactsData;->list:Ljava/util/List;

    return-object v0
.end method

.method public isCacheData()Z
    .locals 1

    .line 26
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/contacts/item/ContactsData;->isCacheData:Z

    return v0
.end method

.method public isDataChange()Z
    .locals 1

    .line 18
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/contacts/item/ContactsData;->dataChange:Z

    return v0
.end method

.method public setCacheData(Z)V
    .locals 0

    .line 30
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/contacts/item/ContactsData;->isCacheData:Z

    return-void
.end method

.method public setDataChange(Z)V
    .locals 0

    .line 22
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/contacts/item/ContactsData;->dataChange:Z

    return-void
.end method

.method public setErrCode(Ljava/lang/String;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/item/ContactsData;->errCode:Ljava/lang/String;

    return-void
.end method

.method public setErrmsg(Ljava/lang/String;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/item/ContactsData;->errmsg:Ljava/lang/String;

    return-void
.end method

.method public setList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/contacts/common/base/BaseContactsItem;",
            ">;)V"
        }
    .end annotation

    .line 54
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/item/ContactsData;->list:Ljava/util/List;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ContactsData{errCode=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/item/ContactsData;->errCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", errmsg=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/contacts/item/ContactsData;->errmsg:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", dataChange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/alibaba/ailabs/genie/contacts/item/ContactsData;->dataChange:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isCacheData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/alibaba/ailabs/genie/contacts/item/ContactsData;->isCacheData:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", list="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/item/ContactsData;->list:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
