.class Lcom/taobao/uikit/component/Banner$1;
.super Ljava/lang/Object;
.source "Banner.java"

# interfaces
.implements Lcom/taobao/uikit/component/LoopViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/uikit/component/Banner;->initView()V
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

    .line 71
    iput-object p1, p0, Lcom/taobao/uikit/component/Banner$1;->this$0:Lcom/taobao/uikit/component/Banner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onPageSelected(I)V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/taobao/uikit/component/Banner$1;->this$0:Lcom/taobao/uikit/component/Banner;

    iget-object v0, v0, Lcom/taobao/uikit/component/Banner;->mIndicator:Lcom/taobao/uikit/component/IndicatorView;

    invoke-virtual {v0, p1}, Lcom/taobao/uikit/component/IndicatorView;->setIndex(I)V

    return-void
.end method
