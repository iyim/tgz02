.class Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository$2;
.super Ljava/lang/Object;
.source "ItemRepository.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository;->getRecords()V
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

    .line 102
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository$2;->this$0:Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository;

    iput-wide p2, p0, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository$2;->val$startTime:J

    iput-object p4, p0, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository$2;->val$callRecordData:Lcom/alibaba/ailabs/genie/contacts/item/CallRecordData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 126
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository$2;->this$0:Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository;->access$400(Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository;)Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;->removeMessages(I)V

    .line 127
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository$2;->this$0:Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository;->access$102(Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository;Z)Z

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRecords msg = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "contacts_ItemRepository"

    invoke-static {v2, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository$2;->val$callRecordData:Lcom/alibaba/ailabs/genie/contacts/item/CallRecordData;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordData;->setErrCode(Ljava/lang/String;)V

    .line 130
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository$2;->val$callRecordData:Lcom/alibaba/ailabs/genie/contacts/item/CallRecordData;

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordData;->setErrmsg(Ljava/lang/String;)V

    .line 131
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository$2;->this$0:Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository;->mLiveRecords:Lcom/alibaba/ailabs/genie/contacts/common/data/HashLiveData;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/common/data/HashLiveData;->getDataHash()I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    .line 132
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository$2;->val$callRecordData:Lcom/alibaba/ailabs/genie/contacts/item/CallRecordData;

    invoke-virtual {p1, v1}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordData;->setDataChange(Z)V

    goto :goto_0

    .line 134
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository$2;->val$callRecordData:Lcom/alibaba/ailabs/genie/contacts/item/CallRecordData;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordData;->setDataChange(Z)V

    .line 136
    :goto_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository$2;->this$0:Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository;->mLiveRecords:Lcom/alibaba/ailabs/genie/contacts/common/data/HashLiveData;

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/contacts/common/data/HashLiveData;->setDataHash(I)V

    .line 137
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository$2;->this$0:Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository;

    iget-object p2, p0, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository$2;->val$callRecordData:Lcom/alibaba/ailabs/genie/contacts/item/CallRecordData;

    invoke-static {p1, p2}, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository;->access$000(Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository;Lcom/alibaba/ailabs/genie/contacts/item/CallRecordData;)V

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

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestRecordsTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository$2;->val$startTime:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "contacts_ItemRepository"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository$2;->this$0:Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository;->access$400(Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository;)Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;->removeMessages(I)V

    .line 107
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository$2;->this$0:Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository;

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository;->access$102(Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository;Z)Z

    .line 108
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;->getDataHash()I

    move-result v0

    .line 109
    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository$2;->this$0:Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository;

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

    .line 110
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository$2;->this$0:Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository;

    iget-object v2, v2, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository;->mLiveRecords:Lcom/alibaba/ailabs/genie/contacts/common/data/HashLiveData;

    invoke-virtual {v2, v0}, Lcom/alibaba/ailabs/genie/contacts/common/data/HashLiveData;->isDataChanged(I)Z

    move-result v2

    if-nez v2, :cond_0

    const-string p1, "recoreds not changed."

    .line 111
    invoke-static {v1, p1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository$2;->val$callRecordData:Lcom/alibaba/ailabs/genie/contacts/item/CallRecordData;

    invoke-virtual {p1, v3}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordData;->setDataChange(Z)V

    .line 113
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository$2;->this$0:Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository;->mLiveRecords:Lcom/alibaba/ailabs/genie/contacts/common/data/HashLiveData;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository$2;->val$callRecordData:Lcom/alibaba/ailabs/genie/contacts/item/CallRecordData;

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/contacts/common/data/HashLiveData;->postValue(Ljava/lang/Object;)V

    return-void

    .line 116
    :cond_0
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository$2;->val$callRecordData:Lcom/alibaba/ailabs/genie/contacts/item/CallRecordData;

    invoke-virtual {v2, v5}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordData;->setDataChange(Z)V

    .line 117
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository$2;->val$callRecordData:Lcom/alibaba/ailabs/genie/contacts/item/CallRecordData;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;->getData()Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;

    move-result-object v3

    check-cast v3, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;

    iget-object v3, v3, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->model:Ljava/util/List;

    invoke-virtual {v2, v3}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordData;->setList(Ljava/util/List;)V

    .line 118
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;->getData()Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->model:Ljava/util/List;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository;->access$500(Ljava/util/List;)V

    .line 119
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository$2;->this$0:Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository;->mLiveRecords:Lcom/alibaba/ailabs/genie/contacts/common/data/HashLiveData;

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/contacts/common/data/HashLiveData;->setDataHash(I)V

    .line 120
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository$2;->this$0:Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository;->mLiveRecords:Lcom/alibaba/ailabs/genie/contacts/common/data/HashLiveData;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository$2;->val$callRecordData:Lcom/alibaba/ailabs/genie/contacts/item/CallRecordData;

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/contacts/common/data/HashLiveData;->postValue(Ljava/lang/Object;)V

    const-string p1, "read record network data finish"

    .line 121
    invoke-static {v1, p1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
