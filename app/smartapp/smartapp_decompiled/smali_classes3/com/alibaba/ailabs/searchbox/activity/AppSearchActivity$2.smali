.class Lcom/alibaba/ailabs/searchbox/activity/AppSearchActivity$2;
.super Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;
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

.field final synthetic val$adapter:Lcom/alibaba/ailabs/searchbox/adapter/AppSearchAdapter;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/searchbox/activity/AppSearchActivity;Lcom/alibaba/ailabs/searchbox/adapter/AppSearchAdapter;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/alibaba/ailabs/searchbox/activity/AppSearchActivity$2;->this$0:Lcom/alibaba/ailabs/searchbox/activity/AppSearchActivity;

    iput-object p2, p0, Lcom/alibaba/ailabs/searchbox/activity/AppSearchActivity$2;->val$adapter:Lcom/alibaba/ailabs/searchbox/adapter/AppSearchAdapter;

    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/alibaba/ailabs/searchbox/activity/AppSearchActivity$2;->val$adapter:Lcom/alibaba/ailabs/searchbox/adapter/AppSearchAdapter;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/searchbox/adapter/AppSearchAdapter;->getItemViewType(I)I

    move-result p1

    const/16 v0, 0x2720

    if-eq p1, v0, :cond_0

    const/16 p1, 0xc

    return p1

    :cond_0
    const/4 p1, 0x2

    return p1
.end method
