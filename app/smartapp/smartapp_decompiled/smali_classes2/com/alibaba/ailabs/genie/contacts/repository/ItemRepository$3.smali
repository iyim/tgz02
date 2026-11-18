.class Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository$3;
.super Ljava/lang/Object;
.source "ItemRepository.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository;->getRecordsByOffset(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/ailabs/genie/second/MtopClient$Callback<",
        "Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository;

.field final synthetic val$callRecordData:Lcom/alibaba/ailabs/genie/contacts/item/CallRecordData;

.field final synthetic val$startTime:J


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository;JLcom/alibaba/ailabs/genie/contacts/item/CallRecordData;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository$3;->this$0:Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository;

    iput-wide p2, p0, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository$3;->val$startTime:J

    iput-object p4, p0, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository$3;->val$callRecordData:Lcom/alibaba/ailabs/genie/contacts/item/CallRecordData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getRecordsByOffset msg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "contacts_ItemRepository"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository$3;->val$callRecordData:Lcom/alibaba/ailabs/genie/contacts/item/CallRecordData;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordData;->setErrCode(Ljava/lang/String;)V

    .line 170
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository$3;->val$callRecordData:Lcom/alibaba/ailabs/genie/contacts/item/CallRecordData;

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordData;->setErrmsg(Ljava/lang/String;)V

    .line 171
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository$3;->this$0:Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository;->mLiveRecords:Lcom/alibaba/ailabs/genie/contacts/common/data/HashLiveData;

    iget-object p2, p0, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository$3;->val$callRecordData:Lcom/alibaba/ailabs/genie/contacts/item/CallRecordData;

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/contacts/common/data/HashLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onSuccess(Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse<",
            "Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;",
            ">;)V"
        }
    .end annotation

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "questRecordsTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository$3;->val$startTime:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "contacts_ItemRepository"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository$3;->val$callRecordData:Lcom/alibaba/ailabs/genie/contacts/item/CallRecordData;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;->getData()Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->model:Ljava/util/List;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository;->access$600(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordData;->setList(Ljava/util/List;)V

    .line 162
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository$3;->this$0:Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository;->mLiveRecords:Lcom/alibaba/ailabs/genie/contacts/common/data/HashLiveData;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository$3;->val$callRecordData:Lcom/alibaba/ailabs/genie/contacts/item/CallRecordData;

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/contacts/common/data/HashLiveData;->postValue(Ljava/lang/Object;)V

    const-string p1, "read record network data finish"

    .line 163
    invoke-static {v1, p1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
