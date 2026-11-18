.class public final Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/ViewHelper;
.super Ljava/lang/Object;
.source "ViewHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/ViewHelper$Honeycomb;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getAlpha(Landroid/view/View;)F
    .locals 1

    .line 14
    sget-boolean v0, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->NEEDS_PROXY:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->wrap(Landroid/view/View;)Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;

    move-result-object p0

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->getAlpha()F

    move-result p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/ViewHelper$Honeycomb;->getAlpha(Landroid/view/View;)F

    move-result p0

    :goto_0
    return p0
.end method

.method public static getPivotX(Landroid/view/View;)F
    .locals 1

    .line 26
    sget-boolean v0, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->NEEDS_PROXY:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->wrap(Landroid/view/View;)Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;

    move-result-object p0

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->getPivotX()F

    move-result p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/ViewHelper$Honeycomb;->getPivotX(Landroid/view/View;)F

    move-result p0

    :goto_0
    return p0
.end method

.method public static getPivotY(Landroid/view/View;)F
    .locals 1

    .line 38
    sget-boolean v0, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->NEEDS_PROXY:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->wrap(Landroid/view/View;)Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;

    move-result-object p0

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->getPivotY()F

    move-result p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/ViewHelper$Honeycomb;->getPivotY(Landroid/view/View;)F

    move-result p0

    :goto_0
    return p0
.end method

.method public static getRotation(Landroid/view/View;)F
    .locals 1

    .line 50
    sget-boolean v0, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->NEEDS_PROXY:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->wrap(Landroid/view/View;)Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;

    move-result-object p0

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->getRotation()F

    move-result p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/ViewHelper$Honeycomb;->getRotation(Landroid/view/View;)F

    move-result p0

    :goto_0
    return p0
.end method

.method public static getRotationX(Landroid/view/View;)F
    .locals 1

    .line 62
    sget-boolean v0, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->NEEDS_PROXY:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->wrap(Landroid/view/View;)Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;

    move-result-object p0

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->getRotationX()F

    move-result p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/ViewHelper$Honeycomb;->getRotationX(Landroid/view/View;)F

    move-result p0

    :goto_0
    return p0
.end method

.method public static getRotationY(Landroid/view/View;)F
    .locals 1

    .line 74
    sget-boolean v0, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->NEEDS_PROXY:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->wrap(Landroid/view/View;)Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;

    move-result-object p0

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->getRotationY()F

    move-result p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/ViewHelper$Honeycomb;->getRotationY(Landroid/view/View;)F

    move-result p0

    :goto_0
    return p0
.end method

.method public static getScaleX(Landroid/view/View;)F
    .locals 1

    .line 86
    sget-boolean v0, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->NEEDS_PROXY:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->wrap(Landroid/view/View;)Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;

    move-result-object p0

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->getScaleX()F

    move-result p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/ViewHelper$Honeycomb;->getScaleX(Landroid/view/View;)F

    move-result p0

    :goto_0
    return p0
.end method

.method public static getScaleY(Landroid/view/View;)F
    .locals 1

    .line 98
    sget-boolean v0, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->NEEDS_PROXY:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->wrap(Landroid/view/View;)Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;

    move-result-object p0

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->getScaleY()F

    move-result p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/ViewHelper$Honeycomb;->getScaleY(Landroid/view/View;)F

    move-result p0

    :goto_0
    return p0
.end method

.method public static getScrollX(Landroid/view/View;)F
    .locals 1

    .line 110
    sget-boolean v0, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->NEEDS_PROXY:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->wrap(Landroid/view/View;)Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;

    move-result-object p0

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->getScrollX()I

    move-result p0

    int-to-float p0, p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/ViewHelper$Honeycomb;->getScrollX(Landroid/view/View;)F

    move-result p0

    :goto_0
    return p0
.end method

.method public static getScrollY(Landroid/view/View;)F
    .locals 1

    .line 122
    sget-boolean v0, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->NEEDS_PROXY:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->wrap(Landroid/view/View;)Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;

    move-result-object p0

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->getScrollY()I

    move-result p0

    int-to-float p0, p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/ViewHelper$Honeycomb;->getScrollY(Landroid/view/View;)F

    move-result p0

    :goto_0
    return p0
.end method

.method public static getTranslationX(Landroid/view/View;)F
    .locals 1

    .line 134
    sget-boolean v0, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->NEEDS_PROXY:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->wrap(Landroid/view/View;)Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;

    move-result-object p0

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->getTranslationX()F

    move-result p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/ViewHelper$Honeycomb;->getTranslationX(Landroid/view/View;)F

    move-result p0

    :goto_0
    return p0
.end method

.method public static getTranslationY(Landroid/view/View;)F
    .locals 1

    .line 146
    sget-boolean v0, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->NEEDS_PROXY:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->wrap(Landroid/view/View;)Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;

    move-result-object p0

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->getTranslationY()F

    move-result p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/ViewHelper$Honeycomb;->getTranslationY(Landroid/view/View;)F

    move-result p0

    :goto_0
    return p0
.end method

.method public static getX(Landroid/view/View;)F
    .locals 1

    .line 158
    sget-boolean v0, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->NEEDS_PROXY:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->wrap(Landroid/view/View;)Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;

    move-result-object p0

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->getX()F

    move-result p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/ViewHelper$Honeycomb;->getX(Landroid/view/View;)F

    move-result p0

    :goto_0
    return p0
.end method

.method public static getY(Landroid/view/View;)F
    .locals 1

    .line 170
    sget-boolean v0, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->NEEDS_PROXY:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->wrap(Landroid/view/View;)Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;

    move-result-object p0

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->getY()F

    move-result p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/ViewHelper$Honeycomb;->getY(Landroid/view/View;)F

    move-result p0

    :goto_0
    return p0
.end method

.method public static setAlpha(Landroid/view/View;F)V
    .locals 1

    .line 18
    sget-boolean v0, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->NEEDS_PROXY:Z

    if-eqz v0, :cond_0

    .line 19
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->wrap(Landroid/view/View;)Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->setAlpha(F)V

    goto :goto_0

    .line 21
    :cond_0
    invoke-static {p0, p1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/ViewHelper$Honeycomb;->setAlpha(Landroid/view/View;F)V

    :goto_0
    return-void
.end method

.method public static setPivotX(Landroid/view/View;F)V
    .locals 1

    .line 30
    sget-boolean v0, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->NEEDS_PROXY:Z

    if-eqz v0, :cond_0

    .line 31
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->wrap(Landroid/view/View;)Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->setPivotX(F)V

    goto :goto_0

    .line 33
    :cond_0
    invoke-static {p0, p1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/ViewHelper$Honeycomb;->setPivotX(Landroid/view/View;F)V

    :goto_0
    return-void
.end method

.method public static setPivotY(Landroid/view/View;F)V
    .locals 1

    .line 42
    sget-boolean v0, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->NEEDS_PROXY:Z

    if-eqz v0, :cond_0

    .line 43
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->wrap(Landroid/view/View;)Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->setPivotY(F)V

    goto :goto_0

    .line 45
    :cond_0
    invoke-static {p0, p1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/ViewHelper$Honeycomb;->setPivotY(Landroid/view/View;F)V

    :goto_0
    return-void
.end method

.method public static setRotation(Landroid/view/View;F)V
    .locals 1

    .line 54
    sget-boolean v0, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->NEEDS_PROXY:Z

    if-eqz v0, :cond_0

    .line 55
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->wrap(Landroid/view/View;)Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->setRotation(F)V

    goto :goto_0

    .line 57
    :cond_0
    invoke-static {p0, p1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/ViewHelper$Honeycomb;->setRotation(Landroid/view/View;F)V

    :goto_0
    return-void
.end method

.method public static setRotationX(Landroid/view/View;F)V
    .locals 1

    .line 66
    sget-boolean v0, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->NEEDS_PROXY:Z

    if-eqz v0, :cond_0

    .line 67
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->wrap(Landroid/view/View;)Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->setRotationX(F)V

    goto :goto_0

    .line 69
    :cond_0
    invoke-static {p0, p1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/ViewHelper$Honeycomb;->setRotationX(Landroid/view/View;F)V

    :goto_0
    return-void
.end method

.method public static setRotationY(Landroid/view/View;F)V
    .locals 1

    .line 78
    sget-boolean v0, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->NEEDS_PROXY:Z

    if-eqz v0, :cond_0

    .line 79
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->wrap(Landroid/view/View;)Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->setRotationY(F)V

    goto :goto_0

    .line 81
    :cond_0
    invoke-static {p0, p1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/ViewHelper$Honeycomb;->setRotationY(Landroid/view/View;F)V

    :goto_0
    return-void
.end method

.method public static setScaleX(Landroid/view/View;F)V
    .locals 1

    .line 90
    sget-boolean v0, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->NEEDS_PROXY:Z

    if-eqz v0, :cond_0

    .line 91
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->wrap(Landroid/view/View;)Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->setScaleX(F)V

    goto :goto_0

    .line 93
    :cond_0
    invoke-static {p0, p1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/ViewHelper$Honeycomb;->setScaleX(Landroid/view/View;F)V

    :goto_0
    return-void
.end method

.method public static setScaleY(Landroid/view/View;F)V
    .locals 1

    .line 102
    sget-boolean v0, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->NEEDS_PROXY:Z

    if-eqz v0, :cond_0

    .line 103
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->wrap(Landroid/view/View;)Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->setScaleY(F)V

    goto :goto_0

    .line 105
    :cond_0
    invoke-static {p0, p1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/ViewHelper$Honeycomb;->setScaleY(Landroid/view/View;F)V

    :goto_0
    return-void
.end method

.method public static setScrollX(Landroid/view/View;I)V
    .locals 1

    .line 114
    sget-boolean v0, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->NEEDS_PROXY:Z

    if-eqz v0, :cond_0

    .line 115
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->wrap(Landroid/view/View;)Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->setScrollX(I)V

    goto :goto_0

    .line 117
    :cond_0
    invoke-static {p0, p1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/ViewHelper$Honeycomb;->setScrollX(Landroid/view/View;I)V

    :goto_0
    return-void
.end method

.method public static setScrollY(Landroid/view/View;I)V
    .locals 1

    .line 126
    sget-boolean v0, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->NEEDS_PROXY:Z

    if-eqz v0, :cond_0

    .line 127
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->wrap(Landroid/view/View;)Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->setScrollY(I)V

    goto :goto_0

    .line 129
    :cond_0
    invoke-static {p0, p1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/ViewHelper$Honeycomb;->setScrollY(Landroid/view/View;I)V

    :goto_0
    return-void
.end method

.method public static setTranslationX(Landroid/view/View;F)V
    .locals 1

    .line 138
    sget-boolean v0, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->NEEDS_PROXY:Z

    if-eqz v0, :cond_0

    .line 139
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->wrap(Landroid/view/View;)Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->setTranslationX(F)V

    goto :goto_0

    .line 141
    :cond_0
    invoke-static {p0, p1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/ViewHelper$Honeycomb;->setTranslationX(Landroid/view/View;F)V

    :goto_0
    return-void
.end method

.method public static setTranslationY(Landroid/view/View;F)V
    .locals 1

    .line 150
    sget-boolean v0, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->NEEDS_PROXY:Z

    if-eqz v0, :cond_0

    .line 151
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->wrap(Landroid/view/View;)Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->setTranslationY(F)V

    goto :goto_0

    .line 153
    :cond_0
    invoke-static {p0, p1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/ViewHelper$Honeycomb;->setTranslationY(Landroid/view/View;F)V

    :goto_0
    return-void
.end method

.method public static setX(Landroid/view/View;F)V
    .locals 1

    .line 162
    sget-boolean v0, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->NEEDS_PROXY:Z

    if-eqz v0, :cond_0

    .line 163
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->wrap(Landroid/view/View;)Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->setX(F)V

    goto :goto_0

    .line 165
    :cond_0
    invoke-static {p0, p1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/ViewHelper$Honeycomb;->setX(Landroid/view/View;F)V

    :goto_0
    return-void
.end method

.method public static setY(Landroid/view/View;F)V
    .locals 1

    .line 174
    sget-boolean v0, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->NEEDS_PROXY:Z

    if-eqz v0, :cond_0

    .line 175
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->wrap(Landroid/view/View;)Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->setY(F)V

    goto :goto_0

    .line 177
    :cond_0
    invoke-static {p0, p1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/ViewHelper$Honeycomb;->setY(Landroid/view/View;F)V

    :goto_0
    return-void
.end method
