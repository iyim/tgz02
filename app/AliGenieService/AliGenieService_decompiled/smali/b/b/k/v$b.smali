.class public Lb/b/k/v$b;
.super Lb/h/k/x;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/b/k/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lb/b/k/v;


# direct methods
.method public constructor <init>(Lb/b/k/v;)V
    .locals 0

    iput-object p1, p0, Lb/b/k/v$b;->a:Lb/b/k/v;

    invoke-direct {p0}, Lb/h/k/x;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lb/b/k/v$b;->a:Lb/b/k/v;

    const/4 v0, 0x0

    iput-object v0, p1, Lb/b/k/v;->v:Lb/b/p/g;

    iget-object p1, p1, Lb/b/k/v;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method
