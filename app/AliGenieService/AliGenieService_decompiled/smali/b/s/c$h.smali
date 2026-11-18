.class public Lb/s/c$h;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/s/c;->a(Landroid/view/ViewGroup;Lb/s/r;Lb/s/r;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lb/s/c$k;

.field public mViewBounds:Lb/s/c$k;


# direct methods
.method public constructor <init>(Lb/s/c;Lb/s/c$k;)V
    .locals 0

    iput-object p2, p0, Lb/s/c$h;->a:Lb/s/c$k;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    iget-object p1, p0, Lb/s/c$h;->a:Lb/s/c$k;

    iput-object p1, p0, Lb/s/c$h;->mViewBounds:Lb/s/c$k;

    return-void
.end method
