.class Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment$2;
.super Ljava/lang/Object;
.source "TMESongListFragment.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;->loadFirstDataPage()V
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

    .line 165
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment$2;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " getFavoriteSongs onError is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " s1 is "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TME-SongListFragment"

    invoke-static {p2, p1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment$2;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;->access$800(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;)Landroid/widget/ProgressBar;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 199
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment$2;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;->access$900(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 200
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment$2;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "\u6536\u85cf\u5217\u8868\u52a0\u8f7d\u8d85\u65f6"

    invoke-static {p1, p2}, Lcom/alibaba/ailabs/genie/musicplayer/utils/Utils;->showToastView(Landroid/content/Context;Ljava/lang/String;)V

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

    .line 168
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;->getData()Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/SongsListBean;

    .line 169
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " getFavoriteSongs onSuccess "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "TME-SongListFragment"

    invoke-static {v1, p1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    if-eqz v0, :cond_2

    .line 171
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/SongsListBean;->getModel()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 173
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 174
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment$2;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;->access$500(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 175
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment$2;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;->access$500(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 176
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment$2;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;->access$002(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;Z)Z

    .line 177
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 178
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment$2;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;

    invoke-static {v0, v2}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;->access$302(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;Z)Z

    .line 179
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment$2;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;->access$100(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;)Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/CollectSongsAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/CollectSongsAdapter;->setShowFooter(Z)V

    .line 180
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment$2;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;->access$600(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;)I

    move-result v0

    add-int/2addr v0, v2

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;->access$602(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;I)I

    goto :goto_0

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment$2;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;->access$302(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;Z)Z

    .line 183
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment$2;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;->access$100(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;)Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/CollectSongsAdapter;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/CollectSongsAdapter;->setShowFooter(Z)V

    .line 185
    :goto_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment$2;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;->access$100(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;)Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/CollectSongsAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/CollectSongsAdapter;->notifyDataSetChanged()V

    goto :goto_1

    .line 187
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment$2;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;->access$700(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 190
    :cond_2
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment$2;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;->access$700(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 192
    :goto_1
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment$2;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;->access$800(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;)Landroid/widget/ProgressBar;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method
