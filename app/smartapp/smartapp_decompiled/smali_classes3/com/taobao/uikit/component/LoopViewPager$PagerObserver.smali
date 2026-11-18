.class Lcom/taobao/uikit/component/LoopViewPager$PagerObserver;
.super Landroid/database/DataSetObserver;
.source "LoopViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/uikit/component/LoopViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PagerObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/uikit/component/LoopViewPager;


# direct methods
.method private constructor <init>(Lcom/taobao/uikit/component/LoopViewPager;)V
    .locals 0

    .line 3484
    iput-object p1, p0, Lcom/taobao/uikit/component/LoopViewPager$PagerObserver;->this$0:Lcom/taobao/uikit/component/LoopViewPager;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/taobao/uikit/component/LoopViewPager;Lcom/taobao/uikit/component/LoopViewPager$1;)V
    .locals 0

    .line 3484
    invoke-direct {p0, p1}, Lcom/taobao/uikit/component/LoopViewPager$PagerObserver;-><init>(Lcom/taobao/uikit/component/LoopViewPager;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .line 3490
    iget-object v0, p0, Lcom/taobao/uikit/component/LoopViewPager$PagerObserver;->this$0:Lcom/taobao/uikit/component/LoopViewPager;

    invoke-virtual {v0}, Lcom/taobao/uikit/component/LoopViewPager;->dataSetChanged()V

    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .line 3496
    iget-object v0, p0, Lcom/taobao/uikit/component/LoopViewPager$PagerObserver;->this$0:Lcom/taobao/uikit/component/LoopViewPager;

    invoke-virtual {v0}, Lcom/taobao/uikit/component/LoopViewPager;->dataSetChanged()V

    return-void
.end method
