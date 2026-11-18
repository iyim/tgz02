.class Lcom/alibaba/ailabs/genie/musicplayer/apis/FavoriteSongsRequest$1;
.super Ljava/lang/Object;
.source "FavoriteSongsRequest.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/musicplayer/apis/FavoriteSongsRequest;->getFavoriteSongs(Ljava/lang/String;IILcom/alibaba/ailabs/genie/second/MtopClient$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/ailabs/genie/second/MtopClient$Callback<",
        "Lcom/alibaba/ailabs/genie/musicplayer/entity/json/SongsListBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/musicplayer/apis/FavoriteSongsRequest;

.field final synthetic val$callback:Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/musicplayer/apis/FavoriteSongsRequest;Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/apis/FavoriteSongsRequest$1;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/apis/FavoriteSongsRequest;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/apis/FavoriteSongsRequest$1;->val$callback:Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/apis/FavoriteSongsRequest$1;->val$callback:Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;->onError(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "apiName:mtop.alibaba.aicloud.t.ybClientSearch.getFavoriteSongs,onError, errorCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",msg:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FavoriteSongsRequest"

    invoke-static {p2, p1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse<",
            "Lcom/alibaba/ailabs/genie/musicplayer/entity/json/SongsListBean;",
            ">;)V"
        }
    .end annotation

    .line 54
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;->getTraceId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "queryUserInfoRequest"

    .line 55
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/utils/AppContextHelper;->setCurrentTraceId(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "apiName:mtop.alibaba.aicloud.t.ybClientSearch.getFavoriteSongs,onSuccess, traceId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FavoriteSongsRequest"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/apis/FavoriteSongsRequest$1;->val$callback:Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;

    invoke-interface {v0, p1}, Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;->onSuccess(Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;)V

    .line 59
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
