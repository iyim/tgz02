.class Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment$1;
.super Ljava/lang/Object;
.source "TMEPlayListFragment.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment;->requestInputList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/ailabs/genie/second/MtopClient$Callback<",
        "Lcom/alibaba/ailabs/genie/musicplayer/entity/json/PlaylistResultBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment$1;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 190
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment$1;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment;->access$700(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 191
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment$1;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment;->access$800(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment;)Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 192
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment$1;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment;->access$600(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 193
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment$1;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment;->access$500(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 194
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment$1;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u6b4c\u5355\u52a0\u8f7d\u8d85\u65f6"

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/utils/Utils;->showToastView(Landroid/content/Context;Ljava/lang/String;)V

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " getFavoriteCollects onError is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " s1 is "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TME-PlayListFragment"

    invoke-static {p2, p1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse<",
            "Lcom/alibaba/ailabs/genie/musicplayer/entity/json/PlaylistResultBean;",
            ">;)V"
        }
    .end annotation

    .line 163
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;->getData()Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/PlaylistResultBean;

    .line 164
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " getFavoriteCollects onSuccess "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "TME-PlayListFragment"

    invoke-static {v1, p1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment$1;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment;->access$000(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 166
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment$1;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment;->access$100(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment;)Landroid/widget/TextView;

    move-result-object p1

    const/4 v2, 0x1

    invoke-static {v2}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 167
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment$1;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment;->access$200(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment;)Landroid/widget/TextView;

    move-result-object p1

    invoke-static {v1}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_0
    const/16 p1, 0x8

    if-eqz v0, :cond_2

    .line 170
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/PlaylistResultBean;->getModel()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 171
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 172
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment$1;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment;

    invoke-static {v2}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment;->access$300(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 173
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment$1;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment;

    invoke-static {v2}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment;->access$300(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 174
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment$1;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment;->access$400(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment;)Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/PlayListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/PlayListAdapter;->notifyDataSetChanged()V

    .line 175
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment$1;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment;->access$500(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 176
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment$1;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment;->access$600(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    goto :goto_0

    .line 178
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment$1;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment;->access$500(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 179
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment$1;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment;->access$600(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    goto :goto_0

    .line 182
    :cond_2
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment$1;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment;->access$500(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 183
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment$1;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment;->access$600(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 185
    :goto_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment$1;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment;->access$700(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method
