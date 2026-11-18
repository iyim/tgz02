.class Lcom/taobao/uikit/component/Banner$2;
.super Ljava/lang/Object;
.source "Banner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/uikit/component/Banner;->initTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/uikit/component/Banner;


# direct methods
.method constructor <init>(Lcom/taobao/uikit/component/Banner;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/taobao/uikit/component/Banner$2;->this$0:Lcom/taobao/uikit/component/Banner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 97
    iget-object v0, p0, Lcom/taobao/uikit/component/Banner$2;->this$0:Lcom/taobao/uikit/component/Banner;

    iget-object v0, v0, Lcom/taobao/uikit/component/Banner;->mViewPager:Lcom/taobao/uikit/component/LoopViewPager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/uikit/component/Banner$2;->this$0:Lcom/taobao/uikit/component/Banner;

    iget-object v0, v0, Lcom/taobao/uikit/component/Banner;->mViewPager:Lcom/taobao/uikit/component/LoopViewPager;

    invoke-virtual {v0}, Lcom/taobao/uikit/component/LoopViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/taobao/uikit/component/Banner$2;->this$0:Lcom/taobao/uikit/component/Banner;

    iget-object v0, v0, Lcom/taobao/uikit/component/Banner;->mViewPager:Lcom/taobao/uikit/component/LoopViewPager;

    invoke-virtual {v0}, Lcom/taobao/uikit/component/LoopViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    iget-object v1, p0, Lcom/taobao/uikit/component/Banner$2;->this$0:Lcom/taobao/uikit/component/Banner;

    iget-object v1, v1, Lcom/taobao/uikit/component/Banner;->mViewPager:Lcom/taobao/uikit/component/LoopViewPager;

    invoke-virtual {v1}, Lcom/taobao/uikit/component/LoopViewPager;->getCurrentItem()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 101
    rem-int/2addr v1, v0

    .line 102
    iget-object v0, p0, Lcom/taobao/uikit/component/Banner$2;->this$0:Lcom/taobao/uikit/component/Banner;

    iget-object v0, v0, Lcom/taobao/uikit/component/Banner;->mViewPager:Lcom/taobao/uikit/component/LoopViewPager;

    invoke-virtual {v0, v1, v2}, Lcom/taobao/uikit/component/LoopViewPager;->setCurrentItem(IZ)V

    :cond_0
    return-void
.end method
