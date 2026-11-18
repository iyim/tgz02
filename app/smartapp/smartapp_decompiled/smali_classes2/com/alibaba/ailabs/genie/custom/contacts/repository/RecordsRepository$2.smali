.class Lcom/alibaba/ailabs/genie/custom/contacts/repository/RecordsRepository$2;
.super Ljava/lang/Object;
.source "RecordsRepository.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/custom/contacts/repository/RecordsRepository;->updateCallsViewedTime()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/ailabs/genie/second/MtopClient$Callback<",
        "Lcom/alibaba/ailabs/genie/custom/contacts/repository/response/ContactsModelResponse<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/custom/contacts/repository/RecordsRepository;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/custom/contacts/repository/RecordsRepository;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/repository/RecordsRepository$2;->this$0:Lcom/alibaba/ailabs/genie/custom/contacts/repository/RecordsRepository;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 140
    sget-object p1, Lcom/alibaba/ailabs/genie/custom/contacts/repository/RecordsRepository;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateCallsViewedTime msg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse<",
            "Lcom/alibaba/ailabs/genie/custom/contacts/repository/response/ContactsModelResponse<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 135
    sget-object p1, Lcom/alibaba/ailabs/genie/custom/contacts/repository/RecordsRepository;->TAG:Ljava/lang/String;

    const-string v0, "updateCallsViewedTime..."

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
