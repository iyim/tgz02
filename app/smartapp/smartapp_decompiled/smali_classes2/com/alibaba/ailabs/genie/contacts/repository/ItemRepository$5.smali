.class Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository$5;
.super Ljava/lang/Object;
.source "ItemRepository.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository;->getRecordsByOffset()V
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

    .line 224
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository$5;->this$0:Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository;

    iput-wide p2, p0, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository$5;->val$startTime:J

    iput-object p4, p0, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository$5;->val$callRecordData:Lcom/alibaba/ailabs/genie/contacts/item/CallRecordData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getRecordsByOffset msg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "contacts_ItemRepository"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository$5;->val$callRecordData:Lcom/alibaba/ailabs/genie/contacts/item/CallRecordData;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordData;->setErrCode(Ljava/lang/String;)V

    .line 251
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository$5;->val$callRecordData:Lcom/alibaba/ailabs/genie/contacts/item/CallRecordData;

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordData;->setErrmsg(Ljava/lang/String;)V

    .line 252
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository$5;->this$0:Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository;->mLiveRecords:Lcom/alibaba/ailabs/genie/contacts/common/data/HashLiveData;

    iget-object p2, p0, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository$5;->val$callRecordData:Lcom/alibaba/ailabs/genie/contacts/item/CallRecordData;

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/contacts/common/data/HashLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onSuccess(Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse<",
            "Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;",
            ">;)V"
        }
    .end annotation

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "questRecordsTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository$5;->val$startTime:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "contacts_ItemRepository"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository$5;->this$0:Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository;->access$400(Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository;)Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;->removeMessages(I)V

    .line 229
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository$5;->this$0:Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository;

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository;->access$102(Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository;Z)Z

    .line 230
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;->getDataHash()I

    move-result v0

    .line 231
    iget-object v4, p0, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository$5;->val$callRecordData:Lcom/alibaba/ailabs/genie/contacts/item/CallRecordData;

    invoke-virtual {v4, v3}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordData;->setCacheData(Z)V

    .line 232
    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository$5;->this$0:Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository;

    iget-object v4, v4, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository;->mLiveRecords:Lcom/alibaba/ailabs/genie/contacts/common/data/HashLiveData;

    invoke-virtual {v4}, Lcom/alibaba/ailabs/genie/contacts/common/data/HashLiveData;->getDataHash()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v2, v5

    const-string v4, "records.hash old[%d], new[%d]"

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository$5;->this$0:Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository;

    iget-object v2, v2, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository;->mLiveRecords:Lcom/alibaba/ailabs/genie/contacts/common/data/HashLiveData;

    invoke-virtual {v2, v0}, Lcom/alibaba/ailabs/genie/contacts/common/data/HashLiveData;->isDataChanged(I)Z

    move-result v2

    if-nez v2, :cond_0

    const-string p1, "recoreds not changed."

    .line 234
    invoke-static {v1, p1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository$5;->val$callRecordData:Lcom/alibaba/ailabs/genie/contacts/item/CallRecordData;

    invoke-virtual {p1, v3}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordData;->setDataChange(Z)V

    .line 236
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository$5;->this$0:Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository;->mLiveRecords:Lcom/alibaba/ailabs/genie/contacts/common/data/HashLiveData;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository$5;->val$callRecordData:Lcom/alibaba/ailabs/genie/contacts/item/CallRecordData;

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/contacts/common/data/HashLiveData;->postValue(Ljava/lang/Object;)V

    return-void

    .line 239
    :cond_0
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository$5;->val$callRecordData:Lcom/alibaba/ailabs/genie/contacts/item/CallRecordData;

    invoke-virtual {v2, v5}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordData;->setDataChange(Z)V

    .line 240
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository$5;->val$callRecordData:Lcom/alibaba/ailabs/genie/contacts/item/CallRecordData;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;->getData()Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;

    move-result-object v3

    check-cast v3, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;

    iget-object v3, v3, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->model:Ljava/util/List;

    invoke-static {v3}, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository;->access$600(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordData;->setList(Ljava/util/List;)V

    .line 241
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;->getData()Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->model:Ljava/util/List;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository;->access$500(Ljava/util/List;)V

    .line 242
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository$5;->this$0:Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository;->mLiveRecords:Lcom/alibaba/ailabs/genie/contacts/common/data/HashLiveData;

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/contacts/common/data/HashLiveData;->setDataHash(I)V

    .line 243
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository$5;->this$0:Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository;->mLiveRecords:Lcom/alibaba/ailabs/genie/contacts/common/data/HashLiveData;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository$5;->val$callRecordData:Lcom/alibaba/ailabs/genie/contacts/item/CallRecordData;

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/contacts/common/data/HashLiveData;->postValue(Ljava/lang/Object;)V

    const-string p1, "read record network data finish"

    .line 244
    invoke-static {v1, p1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
