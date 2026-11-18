.class public Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$MzTransformer;
.super Ljava/lang/Object;
.source "SkillMainPagerFragment.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$PageTransformer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MzTransformer"
.end annotation


# static fields
.field private static final MAX_SCALE:F = 1.0f

.field private static final MIN_SCALE:F = 0.8f


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment;


# direct methods
.method public constructor <init>(Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment;)V
    .locals 0

    .line 731
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$MzTransformer;->this$0:Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public transformPage(Landroid/view/View;F)V
    .locals 4

    const v0, 0x3f4ccccd    # 0.8f

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, -0x40800000    # -1.0f

    cmpg-float v2, p2, v2

    if-gez v2, :cond_0

    .line 740
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    goto :goto_0

    :cond_0
    cmpg-float v2, p2, v1

    if-gtz v2, :cond_1

    .line 744
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sub-float v2, v1, v2

    const v3, 0x3e4ccccc    # 0.19999999f

    mul-float v2, v2, v3

    add-float/2addr v2, v0

    .line 747
    invoke-virtual {p1, v2}, Landroid/view/View;->setScaleY(F)V

    goto :goto_0

    .line 750
    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 753
    :goto_0
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sub-float v0, v1, v0

    const v2, 0x3f333333    # 0.7f

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 754
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    sub-float/2addr v1, p2

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method
