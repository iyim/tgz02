.class Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment$1;
.super Ljava/lang/Object;
.source "SkillTabPagerFragment.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment;->loadData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/ailabs/genie/second/MtopClient$Callback<",
        "Lcom/alibaba/ailabs/appbox/net/rsp/StringResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment$1;->this$0:Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "code == "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ,msg == "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "getMoreSkills"

    invoke-static {p2, p1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse<",
            "Lcom/alibaba/ailabs/appbox/net/rsp/StringResponse;",
            ">;)V"
        }
    .end annotation

    .line 71
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;->getData()Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/appbox/net/rsp/StringResponse;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/net/rsp/StringResponse;->getModel()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "getMoreSkills"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;->getData()Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/appbox/net/rsp/StringResponse;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/net/rsp/StringResponse;->getModel()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-class v0, Lcom/alibaba/ailabs/appbox/bean/skill/SkillItem;

    invoke-static {p1, v0}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    .line 74
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment$1;->this$0:Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment;->access$000(Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment;)I

    move-result v1

    iput v1, v0, Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment;->lastloadIndex:I

    .line 75
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x1e

    if-lt v0, v2, :cond_0

    .line 76
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment$1;->this$0:Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment;->access$000(Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment;)I

    move-result v2

    add-int/2addr v2, v1

    invoke-static {v0, v2}, Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment;->access$002(Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment;I)I

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment$1;->this$0:Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment;

    iget-object v0, v0, Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment;->skills:Ljava/util/List;

    if-nez v0, :cond_1

    .line 80
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment$1;->this$0:Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment;->skills:Ljava/util/List;

    .line 82
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment$1;->this$0:Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment;

    iget-object v0, v0, Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment;->skills:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 84
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment$1;->this$0:Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment;->access$100(Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment;)Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment$SkillTabRecycleViewAdapter;

    move-result-object v0

    if-nez v0, :cond_2

    .line 85
    new-instance p1, Landroid/support/v7/widget/GridLayoutManager;

    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment$1;->this$0:Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-direct {p1, v0, v2, v1, v3}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    .line 86
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment$1;->this$0:Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment;->access$200(Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment;)Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 87
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment$1;->this$0:Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment;

    new-instance v0, Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment$SkillTabRecycleViewAdapter;

    invoke-direct {v0, p1}, Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment$SkillTabRecycleViewAdapter;-><init>(Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment;)V

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment;->access$102(Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment;Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment$SkillTabRecycleViewAdapter;)Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment$SkillTabRecycleViewAdapter;

    .line 88
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment$1;->this$0:Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment;

    invoke-static {p1}, Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment;->access$200(Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment;)Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment$1;->this$0:Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment;->access$100(Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment;)Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment$SkillTabRecycleViewAdapter;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 89
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment$1;->this$0:Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment;

    iget-object p1, p1, Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment;->spaceItemDecoration:Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment$SpaceItemDecoration;

    if-nez p1, :cond_3

    .line 90
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment$1;->this$0:Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment;

    new-instance v0, Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment$SpaceItemDecoration;

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-static {v1}, Lcom/alibaba/ailabs/appbox/utils/DensityUtil;->dip2px(F)I

    move-result v1

    invoke-direct {v0, p1, v1}, Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment$SpaceItemDecoration;-><init>(Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment;I)V

    iput-object v0, p1, Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment;->spaceItemDecoration:Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment$SpaceItemDecoration;

    .line 91
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment$1;->this$0:Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment;

    invoke-static {p1}, Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment;->access$200(Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment;)Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment$1;->this$0:Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment;

    iget-object v0, v0, Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment;->spaceItemDecoration:Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment$SpaceItemDecoration;

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    goto :goto_0

    .line 94
    :cond_2
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment$1;->this$0:Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment;->access$100(Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment;)Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment$SkillTabRecycleViewAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment$1;->this$0:Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment;

    iget-object v1, v1, Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment;->skills:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr v1, p1

    add-int/lit8 v1, v1, -0x2

    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment$1;->this$0:Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment;

    iget-object p1, p1, Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment;->skills:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment$SkillTabRecycleViewAdapter;->notifyItemChanged(ILjava/lang/Object;)V

    :cond_3
    :goto_0
    return-void
.end method
