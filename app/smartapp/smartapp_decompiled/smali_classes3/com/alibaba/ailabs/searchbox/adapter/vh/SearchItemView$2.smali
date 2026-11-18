.class Lcom/alibaba/ailabs/searchbox/adapter/vh/SearchItemView$2;
.super Ljava/lang/Object;
.source "SearchItemView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/searchbox/adapter/vh/SearchItemView;->getShowOpenSoonTask()Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/searchbox/adapter/vh/SearchItemView;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/searchbox/adapter/vh/SearchItemView;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/alibaba/ailabs/searchbox/adapter/vh/SearchItemView$2;->this$0:Lcom/alibaba/ailabs/searchbox/adapter/vh/SearchItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 127
    iget-object v0, p0, Lcom/alibaba/ailabs/searchbox/adapter/vh/SearchItemView$2;->this$0:Lcom/alibaba/ailabs/searchbox/adapter/vh/SearchItemView;

    invoke-static {v0}, Lcom/alibaba/ailabs/searchbox/adapter/vh/SearchItemView;->access$000(Lcom/alibaba/ailabs/searchbox/adapter/vh/SearchItemView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/alibaba/ailabs/searchbox/adapter/vh/SearchItemView$2;->this$0:Lcom/alibaba/ailabs/searchbox/adapter/vh/SearchItemView;

    iget-object v0, v0, Lcom/alibaba/ailabs/searchbox/adapter/vh/SearchItemView;->mOpenSoon:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/alibaba/ailabs/searchbox/adapter/vh/SearchItemView$2;->this$0:Lcom/alibaba/ailabs/searchbox/adapter/vh/SearchItemView;

    iget-object v0, v0, Lcom/alibaba/ailabs/searchbox/adapter/vh/SearchItemView;->mOpenSoon:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
