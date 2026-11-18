.class public Lcom/alibaba/genie/shopping/view/SKUSkuIconFontView;
.super Lcom/taobao/android/sku/dinamicx/widget/SkuIconFontView;
.source "SKUSkuIconFontView.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/taobao/android/sku/dinamicx/widget/SkuIconFontView;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public onSetIntAttribute(JI)V
    .locals 2

    .line 11
    invoke-super {p0, p1, p2, p3}, Lcom/taobao/android/sku/dinamicx/widget/SkuIconFontView;->onSetIntAttribute(JI)V

    const-wide v0, 0x5db0637a915fa268L    # 1.998478668458365E143

    cmp-long p3, v0, p1

    if-nez p3, :cond_0

    .line 13
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/view/SKUSkuIconFontView;->getTextSize()F

    move-result p1

    const/4 p2, 0x0

    cmpl-float p2, p1, p2

    if-lez p2, :cond_0

    const p2, 0x3f19999a    # 0.6f

    mul-float p1, p1, p2

    .line 15
    invoke-virtual {p0, p1}, Lcom/alibaba/genie/shopping/view/SKUSkuIconFontView;->setTextSize(F)V

    :cond_0
    return-void
.end method
