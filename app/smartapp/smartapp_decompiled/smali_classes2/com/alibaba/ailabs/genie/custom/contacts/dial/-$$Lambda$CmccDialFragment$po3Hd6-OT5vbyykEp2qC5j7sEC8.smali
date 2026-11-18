.class public final synthetic Lcom/alibaba/ailabs/genie/custom/contacts/dial/-$$Lambda$CmccDialFragment$po3Hd6-OT5vbyykEp2qC5j7sEC8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private final synthetic f$0:Landroid/graphics/drawable/GradientDrawable;

.field private final synthetic f$1:Landroid/graphics/drawable/GradientDrawable;


# direct methods
.method public synthetic constructor <init>(Landroid/graphics/drawable/GradientDrawable;Landroid/graphics/drawable/GradientDrawable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/dial/-$$Lambda$CmccDialFragment$po3Hd6-OT5vbyykEp2qC5j7sEC8;->f$0:Landroid/graphics/drawable/GradientDrawable;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/custom/contacts/dial/-$$Lambda$CmccDialFragment$po3Hd6-OT5vbyykEp2qC5j7sEC8;->f$1:Landroid/graphics/drawable/GradientDrawable;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/dial/-$$Lambda$CmccDialFragment$po3Hd6-OT5vbyykEp2qC5j7sEC8;->f$0:Landroid/graphics/drawable/GradientDrawable;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/dial/-$$Lambda$CmccDialFragment$po3Hd6-OT5vbyykEp2qC5j7sEC8;->f$1:Landroid/graphics/drawable/GradientDrawable;

    invoke-static {v0, v1, p1}, Lcom/alibaba/ailabs/genie/custom/contacts/dial/CmccDialFragment;->lambda$startBackgroundAnimator$19(Landroid/graphics/drawable/GradientDrawable;Landroid/graphics/drawable/GradientDrawable;Landroid/animation/ValueAnimator;)V

    return-void
.end method
