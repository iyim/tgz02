.class Lcom/alibaba/ailabs/searchbox/activity/AppSearchActivity$3;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "AppSearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/searchbox/activity/AppSearchActivity;->initViewContent(Landroid/app/Activity;Lcom/alibaba/ailabs/searchbox/adapter/AppSearchAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/searchbox/activity/AppSearchActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/searchbox/activity/AppSearchActivity;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/alibaba/ailabs/searchbox/activity/AppSearchActivity$3;->this$0:Lcom/alibaba/ailabs/searchbox/activity/AppSearchActivity;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 0

    .line 196
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V

    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    .line 198
    invoke-static {}, Lcom/alibaba/ailabs/searchbox/task/AutoOpenMgr;->getInstance()Lcom/alibaba/ailabs/searchbox/task/AutoOpenMgr;

    move-result-object p1

    const-string p2, " -- onScrollStateChanged"

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/searchbox/task/AutoOpenMgr;->stopOpenTask(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 0

    .line 204
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrolled(Landroid/support/v7/widget/RecyclerView;II)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
