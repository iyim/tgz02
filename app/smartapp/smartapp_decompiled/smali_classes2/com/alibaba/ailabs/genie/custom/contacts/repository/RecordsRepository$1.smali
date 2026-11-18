.class Lcom/alibaba/ailabs/genie/custom/contacts/repository/RecordsRepository$1;
.super Ljava/lang/Object;
.source "RecordsRepository.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/custom/contacts/repository/RecordsRepository;->getRecordsByOffset(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/ailabs/genie/second/MtopClient$Callback<",
        "Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecords;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/custom/contacts/repository/RecordsRepository;

.field final synthetic val$callRecordData:Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecordsWrapper;

.field final synthetic val$offset:I

.field final synthetic val$startTime:J


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/custom/contacts/repository/RecordsRepository;JILcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecordsWrapper;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/repository/RecordsRepository$1;->this$0:Lcom/alibaba/ailabs/genie/custom/contacts/repository/RecordsRepository;

    iput-wide p2, p0, Lcom/alibaba/ailabs/genie/custom/contacts/repository/RecordsRepository$1;->val$startTime:J

    iput p4, p0, Lcom/alibaba/ailabs/genie/custom/contacts/repository/RecordsRepository$1;->val$offset:I

    iput-object p5, p0, Lcom/alibaba/ailabs/genie/custom/contacts/repository/RecordsRepository$1;->val$callRecordData:Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecordsWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getRecordsByOffset msg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "contacts_records"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/repository/RecordsRepository$1;->val$callRecordData:Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecordsWrapper;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecordsWrapper;->setErrCode(Ljava/lang/String;)V

    .line 103
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/repository/RecordsRepository$1;->val$callRecordData:Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecordsWrapper;

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecordsWrapper;->setErrmsg(Ljava/lang/String;)V

    .line 104
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/repository/RecordsRepository$1;->this$0:Lcom/alibaba/ailabs/genie/custom/contacts/repository/RecordsRepository;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/custom/contacts/repository/RecordsRepository;->mCallRecords:Lcom/alibaba/ailabs/genie/custom/contacts/common/data/HashLiveData;

    iget-object p2, p0, Lcom/alibaba/ailabs/genie/custom/contacts/repository/RecordsRepository$1;->val$callRecordData:Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecordsWrapper;

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/custom/contacts/common/data/HashLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onSuccess(Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse<",
            "Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecords;",
            ">;)V"
        }
    .end annotation

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "questRecordsTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/alibaba/ailabs/genie/custom/contacts/repository/RecordsRepository$1;->val$startTime:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "contacts_records"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/repository/RecordsRepository$1;->val$offset:I

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 81
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;->getDataHash()I

    move-result v0

    const/4 v3, 0x2

    .line 82
    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/alibaba/ailabs/genie/custom/contacts/repository/RecordsRepository$1;->this$0:Lcom/alibaba/ailabs/genie/custom/contacts/repository/RecordsRepository;

    iget-object v4, v4, Lcom/alibaba/ailabs/genie/custom/contacts/repository/RecordsRepository;->mCallRecords:Lcom/alibaba/ailabs/genie/custom/contacts/common/data/HashLiveData;

    invoke-virtual {v4}, Lcom/alibaba/ailabs/genie/custom/contacts/common/data/HashLiveData;->getDataHash()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    const-string v4, "records.hash old[%d], new[%d]"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/custom/contacts/repository/RecordsRepository$1;->this$0:Lcom/alibaba/ailabs/genie/custom/contacts/repository/RecordsRepository;

    iget-object v3, v3, Lcom/alibaba/ailabs/genie/custom/contacts/repository/RecordsRepository;->mCallRecords:Lcom/alibaba/ailabs/genie/custom/contacts/common/data/HashLiveData;

    invoke-virtual {v3, v0}, Lcom/alibaba/ailabs/genie/custom/contacts/common/data/HashLiveData;->isDataChanged(I)Z

    move-result v3

    if-nez v3, :cond_0

    const-string p1, "recoreds not changed."

    .line 84
    invoke-static {v1, p1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/repository/RecordsRepository$1;->val$callRecordData:Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecordsWrapper;

    invoke-virtual {p1, v5}, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecordsWrapper;->setDataChange(Z)V

    .line 86
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/repository/RecordsRepository$1;->this$0:Lcom/alibaba/ailabs/genie/custom/contacts/repository/RecordsRepository;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/custom/contacts/repository/RecordsRepository;->mCallRecords:Lcom/alibaba/ailabs/genie/custom/contacts/common/data/HashLiveData;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/repository/RecordsRepository$1;->val$callRecordData:Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecordsWrapper;

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/custom/contacts/common/data/HashLiveData;->postValue(Ljava/lang/Object;)V

    return-void

    .line 89
    :cond_0
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/custom/contacts/repository/RecordsRepository$1;->this$0:Lcom/alibaba/ailabs/genie/custom/contacts/repository/RecordsRepository;

    iget-object v3, v3, Lcom/alibaba/ailabs/genie/custom/contacts/repository/RecordsRepository;->mCallRecords:Lcom/alibaba/ailabs/genie/custom/contacts/common/data/HashLiveData;

    invoke-virtual {v3, v0}, Lcom/alibaba/ailabs/genie/custom/contacts/common/data/HashLiveData;->setDataHash(I)V

    .line 91
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/repository/RecordsRepository$1;->val$callRecordData:Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecordsWrapper;

    invoke-virtual {v0, v2}, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecordsWrapper;->setDataChange(Z)V

    .line 92
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;->getData()Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecords;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecords;->model:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 93
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/repository/RecordsRepository$1;->val$callRecordData:Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecordsWrapper;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/custom/contacts/repository/RecordsRepository$1;->this$0:Lcom/alibaba/ailabs/genie/custom/contacts/repository/RecordsRepository;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;->getData()Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecords;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecords;->model:Ljava/util/List;

    invoke-static {v2, p1}, Lcom/alibaba/ailabs/genie/custom/contacts/repository/RecordsRepository;->access$000(Lcom/alibaba/ailabs/genie/custom/contacts/repository/RecordsRepository;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecordsWrapper;->setList(Ljava/util/List;)V

    .line 95
    :cond_2
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/repository/RecordsRepository$1;->this$0:Lcom/alibaba/ailabs/genie/custom/contacts/repository/RecordsRepository;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/custom/contacts/repository/RecordsRepository;->mCallRecords:Lcom/alibaba/ailabs/genie/custom/contacts/common/data/HashLiveData;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/repository/RecordsRepository$1;->val$callRecordData:Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecordsWrapper;

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/custom/contacts/common/data/HashLiveData;->postValue(Ljava/lang/Object;)V

    const-string p1, "read record network data finish"

    .line 96
    invoke-static {v1, p1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
