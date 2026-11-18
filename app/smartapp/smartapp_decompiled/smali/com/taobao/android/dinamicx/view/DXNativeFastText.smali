.class public Lcom/taobao/android/dinamicx/view/DXNativeFastText;
.super Landroid/view/View;
.source "DXNativeFastText.java"


# instance fields
.field public staticLayout:Landroid/text/StaticLayout;

.field private translateX:F

.field private translateY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 24
    invoke-direct {p0, p1, v0}, Lcom/taobao/android/dinamicx/view/DXNativeFastText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, p1, p2, v0}, Lcom/taobao/android/dinamicx/view/DXNativeFastText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getStaticLayout()Landroid/text/StaticLayout;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/taobao/android/dinamicx/view/DXNativeFastText;->staticLayout:Landroid/text/StaticLayout;

    return-object v0
.end method

.method public getTranslateY()F
    .locals 1

    .line 57
    iget v0, p0, Lcom/taobao/android/dinamicx/view/DXNativeFastText;->translateY:F

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 38
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 39
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 40
    iget v0, p0, Lcom/taobao/android/dinamicx/view/DXNativeFastText;->translateX:F

    iget v1, p0, Lcom/taobao/android/dinamicx/view/DXNativeFastText;->translateY:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 41
    iget-object v0, p0, Lcom/taobao/android/dinamicx/view/DXNativeFastText;->staticLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 44
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public setStaticLayout(Landroid/text/StaticLayout;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/taobao/android/dinamicx/view/DXNativeFastText;->staticLayout:Landroid/text/StaticLayout;

    return-void
.end method

.method public setTranslateX(F)V
    .locals 0

    .line 65
    iput p1, p0, Lcom/taobao/android/dinamicx/view/DXNativeFastText;->translateX:F

    return-void
.end method

.method public setTranslateY(F)V
    .locals 0

    .line 61
    iput p1, p0, Lcom/taobao/android/dinamicx/view/DXNativeFastText;->translateY:F

    return-void
.end method
