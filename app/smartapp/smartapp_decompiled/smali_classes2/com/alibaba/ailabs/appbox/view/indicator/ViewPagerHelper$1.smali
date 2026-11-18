.class final Lcom/alibaba/ailabs/appbox/view/indicator/ViewPagerHelper$1;
.super Ljava/lang/Object;
.source "ViewPagerHelper.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/appbox/view/indicator/ViewPagerHelper;->bind(Lcom/alibaba/ailabs/appbox/view/indicator/MagicIndicator;Landroid/support/v4/view/ViewPager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$magicIndicator:Lcom/alibaba/ailabs/appbox/view/indicator/MagicIndicator;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/appbox/view/indicator/MagicIndicator;)V
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/view/indicator/ViewPagerHelper$1;->val$magicIndicator:Lcom/alibaba/ailabs/appbox/view/indicator/MagicIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/view/indicator/ViewPagerHelper$1;->val$magicIndicator:Lcom/alibaba/ailabs/appbox/view/indicator/MagicIndicator;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/appbox/view/indicator/MagicIndicator;->onPageScrollStateChanged(I)V

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/view/indicator/ViewPagerHelper$1;->val$magicIndicator:Lcom/alibaba/ailabs/appbox/view/indicator/MagicIndicator;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alibaba/ailabs/appbox/view/indicator/MagicIndicator;->onPageScrolled(IFI)V

    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/view/indicator/ViewPagerHelper$1;->val$magicIndicator:Lcom/alibaba/ailabs/appbox/view/indicator/MagicIndicator;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/appbox/view/indicator/MagicIndicator;->onPageSelected(I)V

    return-void
.end method
