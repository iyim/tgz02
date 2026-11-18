.class public Lcom/alibaba/ailabs/appbox/view/indicator/ViewPagerHelper;
.super Ljava/lang/Object;
.source "ViewPagerHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static bind(Lcom/alibaba/ailabs/appbox/view/indicator/MagicIndicator;Landroid/support/v4/view/ViewPager;)V
    .locals 1

    .line 12
    new-instance v0, Lcom/alibaba/ailabs/appbox/view/indicator/ViewPagerHelper$1;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/appbox/view/indicator/ViewPagerHelper$1;-><init>(Lcom/alibaba/ailabs/appbox/view/indicator/MagicIndicator;)V

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    return-void
.end method
