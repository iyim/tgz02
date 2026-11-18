.class Lcom/alibaba/ailabs/genie/task/video/view/RecommendListAdapter$1;
.super Ljava/lang/Object;
.source "RecommendListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/task/video/view/RecommendListAdapter;->onBindViewHolder(Lcom/alibaba/ailabs/genie/task/video/view/RecommendListAdapter$RecommendListViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/task/video/view/RecommendListAdapter;

.field final synthetic val$item:Lcom/alibaba/ailabs/genie/task/video/net/VideoRecommendBean;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/task/video/view/RecommendListAdapter;Lcom/alibaba/ailabs/genie/task/video/net/VideoRecommendBean;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/task/video/view/RecommendListAdapter$1;->this$0:Lcom/alibaba/ailabs/genie/task/video/view/RecommendListAdapter;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/task/video/view/RecommendListAdapter$1;->val$item:Lcom/alibaba/ailabs/genie/task/video/net/VideoRecommendBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 90
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/task/video/view/RecommendListAdapter$1;->this$0:Lcom/alibaba/ailabs/genie/task/video/view/RecommendListAdapter;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/task/video/view/RecommendListAdapter;->access$000(Lcom/alibaba/ailabs/genie/task/video/view/RecommendListAdapter;)Lcom/alibaba/ailabs/genie/task/video/view/RecommendListAdapter$ItemClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 91
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/task/video/view/RecommendListAdapter$1;->this$0:Lcom/alibaba/ailabs/genie/task/video/view/RecommendListAdapter;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/task/video/view/RecommendListAdapter;->access$000(Lcom/alibaba/ailabs/genie/task/video/view/RecommendListAdapter;)Lcom/alibaba/ailabs/genie/task/video/view/RecommendListAdapter$ItemClickListener;

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/video/view/RecommendListAdapter$1;->val$item:Lcom/alibaba/ailabs/genie/task/video/net/VideoRecommendBean;

    invoke-interface {p1, v0}, Lcom/alibaba/ailabs/genie/task/video/view/RecommendListAdapter$ItemClickListener;->onClickItemListener(Lcom/alibaba/ailabs/genie/task/video/net/VideoRecommendBean;)V

    :cond_0
    return-void
.end method
