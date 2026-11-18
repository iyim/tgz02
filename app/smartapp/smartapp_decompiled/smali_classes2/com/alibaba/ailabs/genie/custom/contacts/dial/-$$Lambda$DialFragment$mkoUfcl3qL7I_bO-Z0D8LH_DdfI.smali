.class public final synthetic Lcom/alibaba/ailabs/genie/custom/contacts/dial/-$$Lambda$DialFragment$mkoUfcl3qL7I_bO-Z0D8LH_DdfI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private final synthetic f$0:Landroid/graphics/drawable/GradientDrawable;


# direct methods
.method public synthetic constructor <init>(Landroid/graphics/drawable/GradientDrawable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/dial/-$$Lambda$DialFragment$mkoUfcl3qL7I_bO-Z0D8LH_DdfI;->f$0:Landroid/graphics/drawable/GradientDrawable;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/dial/-$$Lambda$DialFragment$mkoUfcl3qL7I_bO-Z0D8LH_DdfI;->f$0:Landroid/graphics/drawable/GradientDrawable;

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/custom/contacts/dial/DialFragment;->lambda$startBackgroundAnimator$16(Landroid/graphics/drawable/GradientDrawable;Landroid/animation/ValueAnimator;)V

    return-void
.end method
