.class Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank$2;
.super Ljava/lang/Object;
.source "TMEChannelAdapter.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank;->loadFirstBillBoardPage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/ailabs/genie/second/MtopClient$Callback<",
        "Lcom/alibaba/ailabs/genie/musicplayer/entity/json/BillBoard;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank;)V
    .locals 0

    .line 351
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank$2;->this$1:Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 382
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " getBillBoardList onError is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " s1 is "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TME-ChannelAdapter"

    invoke-static {p2, p1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse<",
            "Lcom/alibaba/ailabs/genie/musicplayer/entity/json/BillBoard;",
            ">;)V"
        }
    .end annotation

    .line 354
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;->getData()Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/BillBoard;

    if-eqz v0, :cond_1

    .line 356
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/BillBoard;->getModel()Ljava/util/List;

    move-result-object v0

    .line 357
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " loadFirstBillBoardPage getTraceId"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;->getTraceId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "TME-ChannelAdapter"

    invoke-static {v1, p1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    .line 358
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 359
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank$2;->this$1:Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank;

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank;->access$202(Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank;Z)Z

    .line 360
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank$2;->this$1:Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank;->adapter:Lcom/alibaba/ailabs/genie/musicplayer/adapter/QuickAdapter;

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/QuickAdapter;->setData(Ljava/util/List;)V

    .line 361
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x6

    if-lt p1, v0, :cond_0

    .line 362
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank$2;->this$1:Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank;

    invoke-static {p1, v1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank;->access$702(Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank;Z)Z

    .line 363
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank$2;->this$1:Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank;->access$800(Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank;)I

    move-result v0

    add-int/2addr v0, v1

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank;->access$802(Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank;I)I

    .line 364
    new-instance p1, Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;

    invoke-direct {p1}, Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;-><init>()V

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;->handler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank$2$1;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank$2$1;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank$2;)V

    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 374
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank$2;->this$1:Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank;->access$702(Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank;Z)Z

    :cond_1
    :goto_0
    return-void
.end method
