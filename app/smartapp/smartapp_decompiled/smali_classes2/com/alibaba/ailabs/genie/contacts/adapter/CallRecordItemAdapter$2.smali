.class Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter$2;
.super Ljava/lang/Object;
.source "CallRecordItemAdapter.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter;->deleteCallRecord(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/ailabs/genie/second/MtopClient$Callback<",
        "Lcom/alibaba/ailabs/genie/contacts/repository/response/ContactsModelResponse<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter;I)V
    .locals 0

    .line 426
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter$2;->this$0:Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter;

    iput p2, p0, Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 436
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "msg = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "contacts_CallRecordItemAdapter"

    invoke-static {p2, p1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter$2;->this$0:Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter;->access$000(Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter;)Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;

    move-result-object p1

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onSuccess(Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse<",
            "Lcom/alibaba/ailabs/genie/contacts/repository/response/ContactsModelResponse<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 429
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter$2;->this$0:Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter;->setIsLoadMore(Z)V

    .line 430
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter$2;->this$0:Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter;->mDataList:Ljava/util/List;

    iget v0, p0, Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter$2;->val$position:I

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 431
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter$2;->this$0:Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter;->access$000(Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter;)Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;->sendEmptyMessage(I)Z

    return-void
.end method
