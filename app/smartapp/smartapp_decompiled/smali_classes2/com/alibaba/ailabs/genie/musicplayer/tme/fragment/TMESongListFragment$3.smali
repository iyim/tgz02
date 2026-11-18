.class Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment$3;
.super Ljava/lang/Object;
.source "TMESongListFragment.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;->loadNextPageData()V
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
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;)V
    .locals 0

    .line 209
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment$3;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 235
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment$3;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;->access$202(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;Z)Z

    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " loadNextPageData onError is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " s1 is "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TME-SongListFragment"

    invoke-static {p2, p1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse<",
            "Lcom/alibaba/ailabs/genie/musicplayer/entity/json/SongsListBean;",
            ">;)V"
        }
    .end annotation

    .line 212
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment$3;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;->access$202(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;Z)Z

    .line 213
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;->getData()Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/SongsListBean;

    .line 214
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " loadNextPageData onSuccess "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "TME-SongListFragment"

    invoke-static {v2, p1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    .line 216
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/SongsListBean;->getModel()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 219
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment$3;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;->access$500(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 220
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/16 v0, 0x1e

    const/4 v2, 0x1

    if-lt p1, v0, :cond_0

    .line 221
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment$3;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;

    invoke-static {p1, v2}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;->access$302(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;Z)Z

    .line 222
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment$3;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;->access$100(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;)Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/CollectSongsAdapter;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/CollectSongsAdapter;->setShowFooter(Z)V

    .line 223
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment$3;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;->access$600(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;)I

    move-result v0

    add-int/2addr v0, v2

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;->access$602(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;I)I

    goto :goto_0

    .line 225
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment$3;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;

    invoke-static {p1, v1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;->access$302(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;Z)Z

    .line 226
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment$3;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;->access$100(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;)Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/CollectSongsAdapter;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/CollectSongsAdapter;->setShowFooter(Z)V

    .line 228
    :goto_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment$3;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;->access$100(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;)Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/CollectSongsAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/CollectSongsAdapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method
