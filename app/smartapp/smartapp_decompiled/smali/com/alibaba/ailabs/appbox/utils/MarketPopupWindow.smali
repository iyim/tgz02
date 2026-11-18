.class public Lcom/alibaba/ailabs/appbox/utils/MarketPopupWindow;
.super Landroid/widget/PopupWindow;
.source "MarketPopupWindow.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 19
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x2

    .line 20
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/appbox/utils/MarketPopupWindow;->setHeight(I)V

    .line 21
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/appbox/utils/MarketPopupWindow;->setWidth(I)V

    const/4 v0, 0x1

    .line 22
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/appbox/utils/MarketPopupWindow;->setOutsideTouchable(Z)V

    .line 23
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/appbox/utils/MarketPopupWindow;->setFocusable(Z)V

    .line 24
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/appbox/utils/MarketPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 25
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/alibaba/ailabs/appbox/R$layout;->market_pop_layout:I

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 27
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/appbox/utils/MarketPopupWindow;->setContentView(Landroid/view/View;)V

    return-void
.end method
